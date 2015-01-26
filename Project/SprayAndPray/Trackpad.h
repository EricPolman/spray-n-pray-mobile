#pragma once
#include "GuiElement.h"
class Trackpad :
  public GuiElement
{
public:
  Trackpad(float a_x, float a_y, float a_width, float a_height,
    Image* a_normalState, Image* a_pressedState,
    void(*a_callBack)(Vector2));
  ~Trackpad();

  void Update(float a_fDeltaTime);
  void Render();
  void UpdateLayout(float = 0, float = 0, float = 0, float = 0);
  Vector2 m_position;
  static int32 m_TouchID;
private:
  bool m_isPressed, m_prevIsPressed;
  void(*m_callBack)(Vector2);
  Sprite m_normal, m_pressed;

  Vector2 m_size;
  Vector2 m_bottomRight;
};

