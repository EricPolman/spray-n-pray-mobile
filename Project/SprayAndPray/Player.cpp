#include "Player.h"
#include "ImageManager.h"
#include "Trackpad.h"
#include "Input.h"
#include "Game.h"
#include "Bullet.h"
#include "CollisionManager.h"
#include "AudioManager.h"

Player::Player()
  : _shootTimer(0), _shootTime(0.33f), vulnerable(true), health(100), invulnerableTimer(0)
{
  z = 100;
  SetImage(ImageManager::singleton->GetImage("player"));

  // Add the tank-gun
  GameSprite* gun = new GameSprite();
  AddChild(gun);
  gun->SetImage(ImageManager::singleton->GetImage("player_gun"));

  acceleration = velocity = Vector2::g_Zero;

  colliderRadius = 24;
  colliderType = PLAYER;
  CalculateMatrices();
}


Player::~Player()
{
}

void Player::Update(float a_fDeltaTime, float)
{
  CNode::Update(a_fDeltaTime);

  // Movement
  velocity += acceleration * a_fDeltaTime;
  float mag = velocity.GetLength();
  if (mag > 60.0f)
  {
    velocity *= 1.0f / mag;
    velocity *= 60.0f;
  }
  acceleration *= 0.9f;
  velocity *= 0.9f;
  Translate(velocity);

  int32 tpId = Trackpad::m_TouchID;
  bool aimed = false;

  for (int i = 0; i < MAX_TOUCHES; ++i)
  {
    if (Input::g_Touches[i].active && !aimed)
    {
      // If this touch was on the trackpad, continue, don't shoot.
      if (i == tpId) continue; 

      // Aim
      shootingDirection = Vector2(Input::g_Touches[i].x, Input::g_Touches[i].y) - 
        Vector2(Game::g_viewportWidth/2, Game::g_viewportHeight/2);
      shootingDirection.Normalise();
      aimed = true;
    }
  }

  // Rotate the tank-gun towards aim-point
  float angle = atan2(velocity.y, velocity.x);
  SetRotation(angle + (PI / 2.0f));
  float shootingAngle = atan2(shootingDirection.y, shootingDirection.x);
  ((GameSprite*)(m_Children[0]))->SetRotation(-angle + shootingAngle);

  _shootTimer += a_fDeltaTime;
  if (aimed)
  {
    // Shoot here
    if (_shootTimer > _shootTime)
    {
      Shoot();
      _shootTimer = 0;
    }
  }

  // If player was recently hit, it can't be hit instantly again.
  if (!vulnerable)
  {
    invulnerableTimer += a_fDeltaTime;
    if (invulnerableTimer > 1.0f)
    {
      invulnerableTimer = 0;
      vulnerable = true;
      color = 0xFFFFFFFF;
      ((GameSprite*)m_Children[0])->color = 0xFFFFFFFF;
    }
  }
  HandleCollisions();
  ForceInArenaBounds();
}

void Player::Shoot()
{
  Bullet* bullet = new Bullet(shootingDirection, Vector2(m_X + shootingDirection.x * 20, m_Y + shootingDirection.y * 20));
  ((GameSprite*)m_Parent)->pendingChildren.push(bullet);
}

void Player::Move(Vector2 mov)
{
  Vector2 vec = mov.GetNormalised();
  acceleration += vec * 1.2f;
}

void Player::Render()
{
  GameSprite::Render();
}

void Player::HandleCollisions()
{
  if (CollisionManager::singleton->HasCollisions(this))
  {
    std::vector<Collision>& cols = CollisionManager::singleton->GetCollisions(this);
    for (std::vector<Collision>::iterator col = cols.begin(); col != cols.end(); ++col)
    {
      if (col->other->colliderType == ENEMY && col->other->alive)
      {
        if (vulnerable)
        {
          health -= 10.0f + (rand() % 256 / 256.0f) * 8.0f - 4.0f;
          vulnerable = false;
          color = 0xFF4444FF;
          ((GameSprite*)m_Children[0])->color = 0xFF4444FF;

          if (Game::g_instance->useSfx)
            AudioManager::singleton->Play("tank_hit");

          if (health <= 0)
          {
            health = 0;
            Game::g_instance->PlayerDied();
          }
        }
      }
    }
  }
}

// Forces the player to stay within certain bounds.
void Player::ForceInArenaBounds()
{
  if (m_X < -200)
  {
    m_X = -200;
  }
  else if (m_X > 200)
  {
    m_X = 200;
  }
  if (m_Y < -200)
  {
    m_Y = -200;
  }
  else if (m_Y > 200)
  {
    m_Y = 200;
  }
}
