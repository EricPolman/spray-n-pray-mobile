#pragma once
#include "GameSprite.h"

class Bullet
  : public GameSprite
{
public:
  Bullet(Vector2 dir, Vector2 pos);
  ~Bullet();

  void Update(float, float);
  float speed, travelledDistance;
  Vector2 direction;
  static Image* g_image;

private:
  void HandleCollisions();
};

