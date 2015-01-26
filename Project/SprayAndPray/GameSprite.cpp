#include "GameSprite.h"
#include "Game.h"
#include "IwGx.h"
#include "CollisionManager.h"

float GameSprite::g_zoomLevel = 1.0f;
CIwFMat2D Sprite::g_currentTransform;

GameSprite::GameSprite()
  : colliderRadius(0), colliderType(GENERIC), color(0xFFFFFFFF), alive(true)
{
  m_X = 0;
  m_Y = 0;
}


GameSprite::~GameSprite()
{
}


void GameSprite::Update(float a_fDeltaTime, float)
{
  // Add postponed children to actual children
  while (!pendingChildren.empty())
  {
    AddChild(pendingChildren.front());
    CollisionManager::singleton->Register(pendingChildren.front());
    pendingChildren.pop();
  }

  // Remove postponed removals and delete them
  while (!pendingRemoveChildren.empty())
  {
    GameSprite* spr = pendingRemoveChildren.front();
    RemoveChild(spr);
    CollisionManager::singleton->Unregister(spr);
    pendingRemoveChildren.pop();
    delete spr;
  }

  // Update base class
  Sprite::Update(a_fDeltaTime);
}

void GameSprite::Render()
{
  mat.SetIdentity();
  mat.SetRot(m_Angle);
  mat.ScaleRot(m_ScaleX);
  mat.SetTrans(Vector2(m_X, m_Y));

  if (m_Parent)
    mat.PostMult(((GameSprite*)(m_Parent))->mat);;

  Iw2DSetTransformMatrix(mat);

  if (m_image)
  {
    Vector2 pos = mat.t;

    // Scale images to be resolution independent
    float imgw = m_image->GetWidth() * 0.5f * g_zoomLevel;
    float imgh = m_image->GetHeight() * 0.5f * g_zoomLevel;

    // Check if the image is actually on screen
    if ((pos.x - imgw < IwGxGetScreenWidth() && pos.x + imgw > 0
      && (pos.y - imgh  < IwGxGetScreenHeight() && pos.y + imgh > 0)))
    {
      Iw2DSetColour(color);
      if (Game::g_instance->m_State == GAME_PAUSED)
        Iw2DSetColour(0xFF555555); // Darker colour, to exaggerate paused-ness
      Iw2DDrawImage(m_image, -Vector2(imgw, imgh) / g_zoomLevel, Vector2(imgw, imgh) * 2.0f / g_zoomLevel);
      Iw2DSetColour(0xFFFFFFFF);
    }
  }

  CNode::Render();
  Iw2DSetTransformMatrix(CIwFMat2D::g_Identity);
}

void GameSprite::Destroy()
{
  ((GameSprite*)m_Parent)->pendingRemoveChildren.push(this);
}
