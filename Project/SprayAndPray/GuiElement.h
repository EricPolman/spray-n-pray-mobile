#pragma once
#include "Sprite.h"

enum GuiType
{
  NONE,
  BACKGROUND,
  BUTTON,
  TRACKPAD,
  TEXTURE,
  CHECKBOX
};

class GuiElement
{
public:
  GuiElement();
  virtual ~GuiElement();

  virtual void Update(float a_fDeltaTime = 0);
  virtual void UpdateLayout(float = 0, float = 0, float = 0, float = 0) = 0;
  virtual void Render() = 0;

  GuiType guiType;
  bool enabled;
};

