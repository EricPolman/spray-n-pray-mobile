#pragma once
#include "s3e.h"

struct CTouch
{
  int32 x; // position x
  int32 y; // position y
  int32 px, py;
  int32 rx, ry;
  bool active; // is touch active (currently down)
  bool prevActive; // is touch active (currently down)
  int32 id; // touch's unique identifier
};
#define MAX_TOUCHES 10

class Input
{
public:
  Input();
  ~Input();

  static Input* Get()
  {
    if (_singleton == NULL)
    {
      _singleton = new Input();
    }
    return _singleton;
  }

  void Update();
  CTouch* GetTouch(int32 id);
  //float m_X, m_Y;
  //float m_prevX, m_prevY;
  //float m_relX, m_relY;

  static CTouch g_Touches[MAX_TOUCHES];
private:
    static Input* _singleton;
};
