#pragma once
class CIw2DImage;
class CIwFVec2;

// Some typedefs to make typing less tedious
typedef CIw2DImage Image;
typedef CIwFVec2 Vector2;

enum EventType
{
  EVENT_SCREEN_CHANGED
};

// Assumed resolution, used for making it resolution-independent
#define ASSUMED_WIDTH 200
#define ASSUMED_HEIGHT 320

// All GameSprites have a CollisionType, for efficient checking
enum CollisionType
{
  GENERIC,
  PLAYER_BULLET,
  ENEMY_BULLET,
  PLAYER,
  ENEMY
};

// Always build resources
#ifndef IW_BUILD_RESOURCES
#define IW_BUILD_RESOURCES
#endif
