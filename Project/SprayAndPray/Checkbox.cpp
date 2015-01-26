#include "Checkbox.h"
#include "ImageManager.h"
#include "Input.h"
#include "Game.h"

Checkbox::Checkbox(float a_x, float a_y, float a_width, float a_height,
  Image* a_normalState, Image* a_pressedState, Image* a_checkmark,
  void(*a_callBack)(bool))
  : m_position(a_x, a_y),
  m_size(a_width, a_height),
  m_callBack(a_callBack),
  m_isPressed(false),
  m_prevIsPressed(false),
  isChecked(true)
{
  m_normal.SetImage(a_normalState);
  m_pressed.SetImage(a_pressedState);
  m_checkmark.SetImage(a_checkmark);

  UpdateLayout(a_x, a_y, a_width, a_height); 

  guiType = CHECKBOX;
}


Checkbox::~Checkbox()
{

}


void Checkbox::Update(float a_fDeltaTime)
{
  m_prevIsPressed = m_isPressed;

  Vector2 pPos(Input::g_Touches[0].x, Input::g_Touches[0].y);
  bool prevPressed = Input::g_Touches[0].prevActive;
  bool pressed = Input::g_Touches[0].active;

  if (pressed)
  {
    // If in bounds
    if (pPos.x >= m_position.x && pPos.x <= m_bottomRight.x &&
      pPos.y >= m_position.y && pPos.y <= m_bottomRight.y)
    {
      m_isPressed = true;
    }
    else
    {
      m_isPressed = false;
    }
  }
  else
  {
    m_isPressed = false;
    if (prevPressed && m_prevIsPressed)
    {
      // Basically an OnButtonUp. If button was pressed previous frame and there was 
      // input previous frame, toggle checkbox and call the callback
      isChecked = !isChecked;
      m_callBack(isChecked);
    }
  }

  m_normal.Update(a_fDeltaTime);
  m_pressed.Update(a_fDeltaTime);
}

void Checkbox::Render()
{
  if (m_isPressed)
  {
    m_pressed.Render();
  }
  else
  {
    m_normal.Render();
  }

  if (isChecked)
    m_checkmark.Render();
}

void Checkbox::UpdateLayout(float x, float y, float w, float h)
{
  // Set positions and scales with new values for all 3 images
  
  m_position = Vector2(x, y);
  m_size = Vector2(w, h);

  m_normal.SetScale(Vector2(
    m_size.x / m_normal.GetImage()->GetWidth(),
    m_size.y / m_normal.GetImage()->GetHeight())
    );
  m_pressed.SetScale(Vector2(
    m_size.x / m_pressed.GetImage()->GetWidth(),
    m_size.y / m_pressed.GetImage()->GetHeight())
    );
  m_checkmark.SetScale(Vector2(
    m_size.x / m_pressed.GetImage()->GetWidth(),
    m_size.y / m_pressed.GetImage()->GetHeight())
    );

  m_normal.SetPosition(m_position);
  m_pressed.SetPosition(m_position);
  m_checkmark.SetPosition(m_position);

  m_bottomRight = m_position + m_size;
}
