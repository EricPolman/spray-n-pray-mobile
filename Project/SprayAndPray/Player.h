#pragma once
#include "GameSprite.h"
class Player :
  public GameSprite
{
public:
  Player();
  ~Player();

  void Update(float a_fDeltaTime, float alpha = 0);
  void Render();
  void Move(Vector2);

  void Shoot();
  float _shootTimer, _shootTime;

  Vector2 acceleration, velocity;
  float zoomFactor;
  Vector2 shootingDirection;

  float health, invulnerableTimer;
  bool vulnerable;

private:
  void ForceInArenaBounds();
  void HandleCollisions();
};

