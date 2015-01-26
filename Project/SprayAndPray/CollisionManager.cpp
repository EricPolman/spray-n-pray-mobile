#include "CollisionManager.h"
#include "GameSprite.h"
#include <math.h>

CollisionManager* CollisionManager::singleton;

CollisionManager::CollisionManager()
{
}


CollisionManager::~CollisionManager()
{
}

void CollisionManager::Register(GameSprite* a_spr)
{
  // Add object to check for collision
  colliders.push_back(a_spr);
}

void CollisionManager::Unregister(GameSprite* a_spr)
{
  // Push to removal queue
  // Postponed removal for maintaining iterator validity
  removeVector.push_back(a_spr);
}

void CollisionManager::Update(float a_fDeltaTime)
{
  collisions.clear();

  // Remove all pending objects from colliders
  for (std::vector<GameSprite*>::iterator remIt = removeVector.begin();
    remIt != removeVector.end(); ++remIt)
  {
    for (std::vector<GameSprite*>::iterator it = colliders.begin();
      it != colliders.end();)
    {
      if (*it == *remIt)
      {
        colliders.erase(it);
        break;
      }
      else
      {
        ++it;
      }
    }
  }
  removeVector.clear();

  if (colliders.empty()) return;
  uint vecSize = colliders.size();
  for (uint i = 0; i < vecSize - 1; ++i)
  {
    const float iRadius = colliders[i]->colliderRadius;
    // If radius == 0, it isn't a collidable object. If it isn't alive, it shouldn't be checked
    if (iRadius == 0 || !colliders[i]->alive)
      continue;
    const Vector2 iPos = Vector2(colliders[i]->m_X, colliders[i]->m_Y);

    for (uint j = i+1; j < vecSize; ++j)
    {
      const float jRadius = colliders[j]->colliderRadius;
      if (jRadius == 0 || !colliders[j]->alive)
        continue;

      const Vector2 jPos = Vector2(colliders[j]->m_X, colliders[j]->m_Y);

      const float radiiSq = (iRadius + jRadius) * (iRadius + jRadius);
      const Vector2 diff = jPos - iPos;
      const float distSq = diff.GetLengthSquared();
      if (distSq <= radiiSq)
      {
        // Collision detected
        const float dist = sqrtf(distSq);

        Collision col;
        col.depth = sqrtf(radiiSq) - dist;
        col.other = colliders[j];
        col.colType = col.other->colliderType;
        col.direction = diff / dist;
        // Queue collision for object i
        collisions[colliders[i]].push_back(col);

        col.other = colliders[i];
        col.colType = col.other->colliderType;
        col.direction *= -1;
        // Queue collision for object j
        collisions[colliders[j]].push_back(col);
      }
    }
  }
}

bool CollisionManager::HasCollisions(GameSprite* a_spr)
{
  return collisions.find(a_spr) != collisions.end();
}

std::vector<Collision>& CollisionManager::GetCollisions(GameSprite* a_spr)
{
  return collisions[a_spr];
}
