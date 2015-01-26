#include "Sprite.h"
#include "IwGx.h"
#include "Game.h"
#include <algorithm>

using namespace Iw2DSceneGraphCore;

Sprite::Sprite()
: CNode(), m_image(0), z(0)
{
}


Sprite::~Sprite()
{
}


void Sprite::Update(float a_fDeltaTime, float a_fAlphaFactor)
{
  CNode::Update(a_fDeltaTime, a_fAlphaFactor);
}

bool zSort(CNode* a, CNode* b)
{
  return ((Sprite*)a)->z > ((Sprite*)b)->z;
}


void Sprite::Render()
{
  if (m_image)
  {
    Vector2 pos = Vector2(m_X, m_Y);

    float imgw = m_image->GetWidth() * m_ScaleX;
    float imgh = m_image->GetHeight() * m_ScaleY;

    if ((pos.x < IwGxGetScreenWidth() && pos.x + imgw > 0
      && (pos.y  < IwGxGetScreenHeight() && pos.y + imgh > 0)))
    {
      Iw2DDrawImage(m_image, pos, Vector2(imgw, imgh));
    }
  }
  CNode::Render();

  Iw2DSetTransformMatrix(CIwFMat2D::g_Identity);
}


void Sprite::SetImage(Image* a_img)
{
  m_image = a_img;
}
