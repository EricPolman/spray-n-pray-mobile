#pragma once
#include "definitions.h"
#include "Iw2DSceneGraph.h"

class Sprite : public Iw2DSceneGraphCore::CNode
{
public:
  Sprite();
  virtual ~Sprite();

  void Update(float a_fDeltaTime = 0.0f, float a_fAlphaFactor = 1.0f);
  static CIwFMat2D g_currentTransform;
  virtual void Render();

  float z;
  

  void SetImage(Image* a_img);
  Image* GetImage() { return m_image; }

  void Translate(const Vector2& a_Amount)
  { m_X += a_Amount.x; m_Y += a_Amount.y; };
  void Translate(float a_X, float a_Y)
  { m_X += a_X; m_Y += a_Y; };
  
  void Rotate(float a_Amount)
  { m_Angle += a_Amount; };
  
  void Scale(float a_Amount)
  { m_ScaleX *= a_Amount; m_ScaleY *= a_Amount; };
  void Scale(const Vector2& a_Amount)
  { m_ScaleX *= a_Amount.x; m_ScaleY *= a_Amount.y; };

  void SetPosition(const Vector2& a_Pos)
  { m_X = a_Pos.x; m_Y = a_Pos.y; };
  void SetPosition(float a_X, float a_Y)
  { m_X = a_X; m_Y = a_Y; };

  void SetRotation(float a_Rot)
  { m_Angle = a_Rot; };
 
  void SetScale(float a_Scale) 
  { m_ScaleX = a_Scale; m_ScaleY = a_Scale; };
  void SetScale(const Vector2& a_Scale) 
  { m_ScaleX = a_Scale.x; m_ScaleY = a_Scale.y; };
protected:
  Image* m_image;
};
