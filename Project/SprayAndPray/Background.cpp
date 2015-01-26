#include "Background.h"
#include "ImageManager.h"
#include "Game.h"

Background::Background(const char* resName)
{
  m_sprite.SetImage(ImageManager::GetImage(resName));

  // Set scale to full-screen
  m_sprite.SetScale(Vector2(
    Game::g_viewportWidth / m_sprite.GetImage()->GetWidth(),
    Game::g_viewportHeight / m_sprite.GetImage()->GetHeight()));

  guiType = BACKGROUND;
}


Background::~Background()
{
}


void Background::Update(float a_fDeltaTime)
{

}


void Background::Render()
{
  m_sprite.Render();
}

void Background::UpdateLayout(float a_width, float a_height, float, float)
{
  // Set scale to full-screen
  m_sprite.SetScale(Vector2(
    a_width / m_sprite.GetImage()->GetWidth(),
    a_height / m_sprite.GetImage()->GetHeight()));
}
