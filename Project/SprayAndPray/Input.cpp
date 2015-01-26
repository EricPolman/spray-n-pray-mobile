#include "Input.h"
// Used the SDK Examples for this

Input* Input::_singleton = NULL;
CTouch Input::g_Touches[MAX_TOUCHES];

CTouch* Input::GetTouch(int32 id)
{
  CTouch* pInActive = NULL;
  for (uint32 i = 0; i < MAX_TOUCHES; i++)
  {
    if (id == g_Touches[i].id)
      return &g_Touches[i];
    if (!g_Touches[i].active)
      pInActive = &g_Touches[i];
  }
  //Return first inactive touch
  if (pInActive)
  {
    pInActive->id = id;
    return pInActive;
  }
  //No more touches, give up.
  return NULL;
}

void SingleTouchButtonCB(s3ePointerEvent* event)
{
  Input::g_Touches[0].active = event->m_Pressed != 0;
  Input::g_Touches[0].x = event->m_x;
  Input::g_Touches[0].y = event->m_y;
}
void SingleTouchMotionCB(s3ePointerMotionEvent* event)
{
  Input::g_Touches[0].x = event->m_x;
  Input::g_Touches[0].y = event->m_y;
}
void MultiTouchButtonCB(s3ePointerTouchEvent* event)
{
  CTouch* touch = Input::Get()->GetTouch(event->m_TouchID);
  if (touch)
  {
    touch->active = event->m_Pressed != 0;
    touch->x = event->m_x;
    touch->y = event->m_y;
  }
}
void MultiTouchMotionCB(s3ePointerTouchMotionEvent* event)
{
  CTouch* touch = Input::Get()->GetTouch(event->m_TouchID);
  if (touch)
  {
    touch->x = event->m_x;
    touch->y = event->m_y;
  }
}


Input::Input()
{
  // Register callbacks
  s3ePointerRegister(S3E_POINTER_TOUCH_EVENT, (s3eCallback)MultiTouchButtonCB, NULL);
  s3ePointerRegister(S3E_POINTER_TOUCH_MOTION_EVENT, (s3eCallback)MultiTouchMotionCB, NULL);
}

Input::~Input()
{
  // Unregister callbacks
  s3ePointerUnRegister(S3E_POINTER_TOUCH_EVENT, (s3eCallback)MultiTouchButtonCB);
  s3ePointerUnRegister(S3E_POINTER_TOUCH_MOTION_EVENT, (s3eCallback)MultiTouchMotionCB);
}

void Input::Update()
{
  // For tracking movement and previous states
  for (uint i = 0; i < MAX_TOUCHES; ++i)
  {
    g_Touches[i].rx = g_Touches[i].x - g_Touches[i].px;
    g_Touches[i].ry = g_Touches[i].y - g_Touches[i].py;
    g_Touches[i].px = g_Touches[i].x;
    g_Touches[i].py = g_Touches[i].y;

    g_Touches[i].prevActive = g_Touches[i].active;
  }
}