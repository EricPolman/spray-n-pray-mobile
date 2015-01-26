#pragma once
#include "definitions.h"
#include "GuiElement.h"
#include "Sprite.h"

class Checkbox : public GuiElement
{
public:
  Checkbox(float a_x, float a_y, float a_width, float a_height,
    Image* a_normalState, Image* a_pressedState, Image* a_checkmark,
    void(*a_callBack)(bool));
  ~Checkbox();

  void Update(float a_fDeltaTime);
  void Render();
  virtual void UpdateLayout(float = 0, float = 0, float = 0, float = 0);
  Vector2 m_position;
  Sprite m_normal, m_pressed, m_checkmark;
  bool isChecked;
private:
  bool m_isPressed, m_prevIsPressed;
  void(*m_callBack)(bool);

  Vector2 m_size;
  Vector2 m_bottomRight;
};

