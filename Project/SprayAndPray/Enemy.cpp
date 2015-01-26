#include "Enemy.h"
#include "ImageManager.h"
#include "Game.h"
#include "CollisionManager.h"
#include "AudioManager.h"

Image* Enemy::g_image = 0;
uint Enemy::g_enemiesKilled = 0;
uint Enemy::g_enemiesAlive = 0;

Enemy::Enemy(Vector2 pos)
  : speed(30.0f), health(2)
{
  SetPosition(pos);
  SetImage(g_image);

  colliderRadius = 11;
  colliderType = ENEMY;

  // Increment alive counter, used for the internal state save file
  ++g_enemiesAlive;
}


Enemy::~Enemy()
{
}


void Enemy::Update(float a_fDeltaTime, float)
{
  // Determine direction to player.
  Vector2 playerPos(
    Game::g_instance->m_player->m_X,
    Game::g_instance->m_player->m_Y);
  Vector2 dir = playerPos - Vector2(m_X, m_Y);
  float mag = dir.GetLength();

  // Normalize
  dir *= 1.0f / mag;

  // Translate towards player
  Translate(dir * speed * a_fDeltaTime);
  
  // Rotate enemy towards player
  float angle = atan2(dir.y, dir.x);
  SetRotation(angle + (PI / 2.0f));

  if (!alive)
    Destroy();

  HandleCollisions();
  CNode::Update(a_fDeltaTime);
}

void Enemy::HandleCollisions()
{
  if (CollisionManager::singleton->HasCollisions(this))
  {
    std::vector<Collision>& collisions = CollisionManager::singleton->GetCollisions(this);
    for (std::vector<Collision>::iterator col = collisions.begin();
      col != collisions.end(); ++col)
    {
      if (col->colType == PLAYER_BULLET && col->other->alive)
      {
        --health;
        if (health == 0) // Is dead
        {
          if (Game::g_instance->useSfx)
            AudioManager::singleton->Play("enemy_dead");
          alive = false;
          --g_enemiesAlive;
          ++g_enemiesKilled;
          
          // Ask game to spawn new enemy
          Game::g_instance->SpawnEnemy();
        }
        else
        {
          if (Game::g_instance->useSfx)
            AudioManager::singleton->Play("enemy_hit");

          // Health indication by colour
          if (health == 2)
            color = 0xFFAAAADD;
          else
            color = 0xFF7777AA;
        }
      }
      else if (col->colType == PLAYER || col->colType == ENEMY)
      {
        // Push objects out of eachother
        Translate(col->direction * col->depth * -0.5f);
      }
    }
  }
}
