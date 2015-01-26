#pragma once
#include <vector>
#include <map>
#include "definitions.h"
#include "Iw2DSceneGraph.h"

class GameSprite;

struct Collision
{
  float depth;
  CollisionType colType;
  GameSprite* other;
  Vector2 direction;
};

class CollisionManager
{
public:
  CollisionManager();
  ~CollisionManager();

  static CollisionManager* singleton;

  void Register(GameSprite*);
  void Unregister(GameSprite*);
  void Update(float a_fDeltaTime);
  std::vector<GameSprite*> colliders;
  std::vector<GameSprite*> removeVector;
  std::map<GameSprite*, std::vector<Collision> > collisions;

  bool HasCollisions(GameSprite*);
  std::vector<Collision>& GetCollisions(GameSprite*);
};

