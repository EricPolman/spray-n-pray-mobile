#pragma once
#include "View.h"
#include "Sprite.h"
#include <vector>

class Button;
class Background;
class GuiTexture;
class Checkbox;

enum MenuState
{
  MENU_MAIN_MENU,
  MENU_SETTINGS
};

class Menu : public View
{
public:
  Menu();
  ~Menu();

  void Enter();
  void Update(float a_DeltaTime = 0);
  void UpdateLayout();
  void Exit();
  void Render();
  //void HandleEvent();

  void Show(MenuState a_state);
  uint bgmMusicInstance;
  void UpdateSettingsInFile();
private:
  MenuState m_state;
  View main, settings;

  void RetrieveSettingsFromFile();

  Background* m_background;
  GuiTexture* m_logoTex;
  GuiTexture* m_menuBarTex;
  Button* m_startBtn;
  Button* m_settingsBtn;
  Button* m_backBtn;
  Checkbox* m_sfxCheckbox;
  Checkbox* m_mscCheckbox;
  GuiTexture* m_sfxLabel;
  GuiTexture* m_mscLabel;
};

