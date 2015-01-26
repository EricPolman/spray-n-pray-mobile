#include "Trackpad.h"
#include "ImageManager.h"
#include "Input.h"
#include "Game.h"

int32 Trackpad::m_TouchID;

Trackpad::Trackpad(float a_x, float a_y, float a_width, float a_height,
  Image* a_normalState, Image* a_pressedState,
  void(*a_callBack)(Vector2))
  : m_position(a_x, a_y),
  m_size(a_width, a_height),
  m_callBack(a_callBack),
  m_isPressed(false),
  m_prevIsPressed(false)
{
  m_normal.SetImage(a_normalState);
  m_pressed.SetImage(a_pressedState);

  UpdateLayout(a_x, a_y, a_width, a_height);

  m_bottomRight = m_position + m_size;

  guiType = TRACKPAD;
}


Trackpad::~Trackpad()
{

}


void Trackpad::Update(float a_fDeltaTime)
{
  m_prevIsPressed = m_isPressed;
  m_TouchID = -1;

  bool hit = false;
  for (int id = 0; id < MAX_TOUCHES; ++id)
  {
    Vector2 pPos(Input::g_Touches[id].x, Input::g_Touches[id].y);
    bool prevPressed = Input::g_Touches[id].prevActive;
    bool pressed = Input::g_Touches[id].active;

    if (pressed)
    {
      if (pPos.x >= m_position.x && pPos.x <= m_bottomRight.x &&
        pPos.y >= m_position.y && pPos.y <= m_bottomRight.y)
      {
        Vector2 middle = (m_position + m_bottomRight) / 2;

        m_isPressed = true;
        m_callBack(pPos - middle); // Callback with an offset vector
        hit = true;
        m_TouchID = id; // Set touch id, so player can ignore this touch for shooting
        break;
      }
      else
      {
        m_isPressed = false;
      }
    }
  }

  if (!hit)
  {
    m_isPressed = false;
  }

  m_normal.Update(a_fDeltaTime);
  m_pressed.Update(a_fDeltaTime);
}

void Trackpad::Render()
{
  if (m_isPressed)
  {
    m_pressed.Render();
  }
  else
  {
    m_normal.Render();
  }
}

void Trackpad::UpdateLayout(float x, float y, float w, float h)
{
  m_position = Vector2(x, y);
  m_size = Vector2(w, h);

  m_normal.SetScale(Vector2(
    m_size.x / m_normal.GetImage()->GetWidth(),
    m_size.y / m_normal.GetImage()->GetWidth())
    );
  m_pressed.SetScale(Vector2(
    m_size.x / m_pressed.GetImage()->GetWidth(),
    m_size.y / m_pressed.GetImage()->GetWidth())
    );

  m_normal.SetPosition(m_position);
  m_pressed.SetPosition(m_position);

  m_bottomRight = m_position + m_size;
}
