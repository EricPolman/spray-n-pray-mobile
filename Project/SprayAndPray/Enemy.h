#pragma once
#include "GameSprite.h"
class Enemy :
  public GameSprite
{
public:
  Enemy(Vector2 pos);
  ~Enemy();

  void Update(float, float);
  float speed;
  static Image* g_image;
  static uint g_enemiesKilled, g_enemiesAlive;
  int health;

private:
  void HandleCollisions();
};

