#pragma once
#include "Sprite.h"
#include <queue>

class GameSprite :
  public Sprite
{
public:
  GameSprite();
  virtual ~GameSprite();

  void Render();
  void Update(float,float = 0);
  std::vector<CNode*>& GetChildren() { return m_Children; }

  CIwFMat2D mat;

  static float g_zoomLevel;

  std::queue<GameSprite*> pendingChildren;
  std::queue<GameSprite*> pendingRemoveChildren;

  uint color;
  bool alive;

  float colliderRadius;
  CollisionType colliderType;

  virtual void Destroy();
};

