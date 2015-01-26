#include "Bullet.h"
#include "ImageManager.h"
#include "CollisionManager.h"
#include "AudioManager.h"
#include "Game.h"

Image* Bullet::g_image;

Bullet::Bullet(Vector2 dir, Vector2 pos)
: direction(dir), speed(150.0f), travelledDistance(0)
{
  SetPosition(pos);
  SetImage(g_image);

  colliderRadius = 3.0f;
  colliderType = PLAYER_BULLET;

  // Play sound when bullet is spawned
  if (Game::g_instance->useSfx)
    AudioManager::singleton->Play("tank_shoot");
}


Bullet::~Bullet()
{
}


void Bullet::Update(float a_fDeltaTime, float)
{
  Translate(direction * a_fDeltaTime * speed);
  travelledDistance += speed * a_fDeltaTime;
  
  if (travelledDistance > 200.0f || !alive)
  {
    Destroy();
  }

  HandleCollisions();
  
  CNode::Update(a_fDeltaTime);
}

void Bullet::HandleCollisions()
{
  if (CollisionManager::singleton->HasCollisions(this))
  {
    std::vector<Collision>& collisions = CollisionManager::singleton->GetCollisions(this);
    for (std::vector<Collision>::iterator col = collisions.begin();
      col != collisions.end(); ++col)
    {
      if (col->colType == ENEMY || col->colType == PLAYER_BULLET)
      {
        // Flag for deletion
        alive = false;
        break;
      }
    }
  }
}
