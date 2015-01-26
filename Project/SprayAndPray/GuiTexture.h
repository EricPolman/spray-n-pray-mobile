#pragma once
#include "GuiElement.h"
class GuiTexture :
  public GuiElement
{
public:
  GuiTexture(const char* resName, float x, float y, float w, float h);
  ~GuiTexture();

  virtual void Update(float a_fDeltaTime = 0);
  virtual void UpdateLayout(float = 0, float = 0, float = 0, float = 0);
  virtual void Render();

protected:
  Sprite m_sprite;
};

