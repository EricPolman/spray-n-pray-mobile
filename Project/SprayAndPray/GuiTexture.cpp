#include "GuiTexture.h"
#include "ImageManager.h"
#include "Game.h"

// Basic GuiTexture, just an image on screen, nothing special
GuiTexture::GuiTexture(const char* resName, float x, float y, float w, float h)
{
  m_sprite.SetImage(ImageManager::GetImage(resName));
  UpdateLayout(w, h, x, y);

  guiType = TEXTURE;
}


GuiTexture::~GuiTexture()
{
}


void GuiTexture::Update(float a_fDeltaTime)
{

}


void GuiTexture::Render()
{
  m_sprite.Render();
}

void GuiTexture::UpdateLayout(float a_width, float a_height, float a_x, float a_y)
{
  m_sprite.SetPosition(a_x, a_y);
  m_sprite.SetScale(Vector2(
    a_width / m_sprite.GetImage()->GetWidth(),
    a_height / m_sprite.GetImage()->GetHeight()));
}
