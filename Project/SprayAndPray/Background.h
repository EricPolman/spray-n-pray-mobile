#pragma once
#include "GuiElement.h"

class Background :
  public GuiElement
{
public:
  Background(const char*);
  ~Background();

  virtual void Update(float a_fDeltaTime = 0);
  virtual void UpdateLayout(float = 0, float = 0, float = 0, float = 0);
  virtual void Render();

protected:
  Sprite m_sprite;
};

