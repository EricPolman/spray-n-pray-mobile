#include "Menu.h"
#include "ImageManager.h"
#include "Background.h"
#include "Button.h"
#include "Checkbox.h"
#include "GuiTexture.h"
#include "Game.h"
#include "AudioManager.h"

static char dataToRead[32];
static char dataToWrite[32];

Menu::Menu()
{
  m_state = MENU_MAIN_MENU;
  main.isContainer = settings.isContainer = true;

  RetrieveSettingsFromFile();
  
  // Setup background and guiTextures
  m_background = new Background("menu_background");
  m_logoTex = new GuiTexture("logo", 0, 0, 0, 0);
  m_menuBarTex = new GuiTexture("menu_bar", 0, 0, 0, 0);

  // Retrieve play button images
  Image* playNormalId =
    ImageManager::singleton->GetImage("button_play_normal");
  Image* playPressedId =
    ImageManager::singleton->GetImage("button_play_pressed");

  // Retrieve settings button images
  Image* settingsNormalId =
    ImageManager::singleton->GetImage("settings");
  Image* settingsPressedId =
    ImageManager::singleton->GetImage("settings_pressed");

  // Retrieve back button images
  Image* backNormalId =
    ImageManager::singleton->GetImage("back");
  Image* backPressedId =
    ImageManager::singleton->GetImage("back_pressed");

  // Retrieve checkbox images
  Image* checkboxNormal =
    ImageManager::singleton->GetImage("checkbox_normal");
  Image* checkboxPressed =
    ImageManager::singleton->GetImage("checkbox_pressed");
  Image* checkboxMark =
    ImageManager::singleton->GetImage("checkbox_mark");

  // Setup main menu view
  m_startBtn = new Button(0, 0, 0, 0, playNormalId, playPressedId, Game::StartButtonCB);
  m_settingsBtn = new Button(0, 0, 0, 0, settingsNormalId, settingsPressedId, Game::SettingsButtonCB);

  main.AddElement(m_background);
  main.AddElement(m_menuBarTex);
  main.AddElement(m_startBtn);
  main.AddElement(m_settingsBtn);
  main.AddElement(m_logoTex);

  // Setup settings menu view
  m_backBtn = new Button(0, 0, 0, 0, backNormalId, backPressedId, Game::BackButtonCB);

  m_sfxLabel = new GuiTexture("sfx_label", 0, 0, 0, 0);
  m_mscLabel = new GuiTexture("music_label", 0, 0, 0, 0);
  m_mscCheckbox = new Checkbox(0, 0, 0, 0, checkboxNormal, checkboxPressed, checkboxMark, Game::MusicCheckboxCB);
  m_sfxCheckbox = new Checkbox(0, 0, 0, 0, checkboxNormal, checkboxPressed, checkboxMark, Game::SfxCheckboxCB);
  m_mscCheckbox->isChecked = Game::g_instance->useMusic;
  m_sfxCheckbox->isChecked = Game::g_instance->useSfx;

  settings.AddElement(m_background);
  settings.AddElement(m_menuBarTex);
  settings.AddElement(m_backBtn);
  settings.AddElement(m_mscCheckbox);
  settings.AddElement(m_sfxCheckbox);
  settings.AddElement(m_mscLabel);
  settings.AddElement(m_sfxLabel);

  UpdateLayout();
}


Menu::~Menu()
{
  delete m_background, m_logoTex, m_menuBarTex, m_startBtn;
  delete m_settingsBtn, m_backBtn, m_mscCheckbox, m_sfxCheckbox;
  delete m_sfxLabel, m_mscLabel;
}


void Menu::Enter()
{
  if (Game::g_instance->useMusic)
    bgmMusicInstance = AudioManager::singleton->Play("bgm_menu");

  View::Enter();
}

void Menu::Update(float a_DeltaTime)
{
  switch (m_state)
  {
  case MENU_MAIN_MENU:
    main.Update(a_DeltaTime);
    break;
  case MENU_SETTINGS:
    settings.Update(a_DeltaTime);
    break;
  }
  View::Update(a_DeltaTime);
}

void Menu::Exit()
{
  AudioManager::singleton->StopAll();
  View::Exit();
}

void Menu::Render()
{
  View::Render();

  switch (m_state)
  {
  case MENU_MAIN_MENU:
    main.Render();
    break;
  case MENU_SETTINGS:
    settings.Render();
    break;
  }
}

// Updates all gui elements, for settings and main menu. 
void Menu::UpdateLayout()
{
  m_background->UpdateLayout(Game::g_viewportWidth, Game::g_viewportHeight);
  const float scrw = Game::g_viewportWidth;
  const float scrh = Game::g_viewportHeight;

  // Menu bar buttons
  float settingsSize = 0.1f * (scrw < scrh ? scrw : scrh);
  float settingsMargin = scrw - settingsSize - 0.05f * (scrw < scrh ? scrw : scrh);
  float menuBarButtonOffset = scrw < scrh ? 0.05f * scrw : 0.05f * scrh;

  m_menuBarTex->UpdateLayout(scrw, settingsSize + 2 * menuBarButtonOffset, 0, 0);
  m_settingsBtn->UpdateLayout(settingsMargin, menuBarButtonOffset, settingsSize, settingsSize);
  m_backBtn->UpdateLayout(scrw * 0.05f, menuBarButtonOffset, settingsSize, settingsSize);

  if (Game::g_inPortrait)
  {
    // Start button
    Image* img = m_startBtn->m_normal.GetImage();
    float startBtnWidth = scrw * 0.8f;
    float startBtnMargin = scrw - startBtnWidth;
    float startBtnHeight = (img->GetHeight() / img->GetWidth()) * startBtnWidth;
    m_startBtn->UpdateLayout(startBtnMargin / 2, scrh - 20 - startBtnHeight, startBtnWidth, startBtnHeight);

    //Checkbox labels
    m_mscLabel->UpdateLayout(settingsSize * 5, settingsSize * 2, scrw * 0.5f - settingsSize * 2.5f, 0.20f * scrh);
    m_sfxLabel->UpdateLayout(settingsSize * 5, settingsSize * 2, scrw * 0.5f - settingsSize * 2.5f, 0.60f * scrh);

    // Checkboxes 
    m_mscCheckbox->UpdateLayout(scrw * 0.5f - settingsSize, 0.35f * scrh, settingsSize * 2, settingsSize * 2);
    m_sfxCheckbox->UpdateLayout(scrw * 0.5f - settingsSize, 0.75f * scrh, settingsSize * 2, settingsSize * 2);

    // GuiTextures
    m_logoTex->UpdateLayout(scrw * 0.8f, (scrw*0.8f) * 0.5f, 0.1f * scrw, settingsSize + 0.2f * scrw);
  }
  else
  {
    // Start button
    Image* img = m_startBtn->m_normal.GetImage();
    float startBtnWidth = scrw * 0.35f;
    float startBtnMargin = scrw - startBtnWidth;
    float startBtnHeight = (img->GetHeight() / img->GetWidth()) * startBtnWidth;
    m_startBtn->UpdateLayout(0.9f * scrw - startBtnWidth, scrh * 0.9f - startBtnHeight, startBtnWidth, startBtnHeight);

    //Checkbox labels
    m_mscLabel->UpdateLayout(settingsSize * 5, settingsSize * 2, scrw * 0.25f - settingsSize * 2.5f, 0.35f * scrh);
    m_sfxLabel->UpdateLayout(settingsSize * 5, settingsSize * 2, scrw * 0.75f - settingsSize * 2.5f, 0.35f * scrh);

    // Checkboxes 
    m_mscCheckbox->UpdateLayout(scrw * 0.25f - settingsSize, 0.55f * scrh, settingsSize * 2, settingsSize * 2);
    m_sfxCheckbox->UpdateLayout(scrw * 0.75f - settingsSize, 0.55f * scrh, settingsSize * 2, settingsSize * 2);

    // GuiTextures
    m_logoTex->UpdateLayout(scrw * 0.5f, (scrw*0.25f), 0.1f * scrh, scrh * 0.9f - (scrw*0.25f));
  }
}


void Menu::Show(MenuState a_state)
{
  m_state = a_state;
  UpdateLayout();
}

// Retrieve sound settings from file
void Menu::RetrieveSettingsFromFile()
{
  // Parse file
  if (!s3eFileCheckExists("settings.dat"))
  {
    UpdateSettingsInFile();
  }

  s3eFile* settingsFile = s3eFileOpen("settings.dat", "r");

  int32 fileSize = s3eFileGetSize(settingsFile);
  for (uint i = 0; i < 2; ++i) // Read lines from file
  {
    memset(dataToRead, 0, 32);
    s3eFileReadString(dataToRead, 30, settingsFile);
    dataToRead[8] = 0;
    const char* c = &dataToRead[7];
    if (strncmp(dataToRead, "usesfx=", 7) == 0)
    {
      Game::g_instance->useSfx = (bool)atoi(c); // Parse 0 or 1 as bool
    }
    else if (strncmp(dataToRead, "usemsc=", 7) == 0)
    {
      Game::g_instance->useMusic = (bool)atoi(c); // Parse 0 or 1 as bool
    }
  }
  s3eFileClose(settingsFile);
}

// Writes current settings to file
void Menu::UpdateSettingsInFile()
{
  memset(dataToWrite, 0, 32);

  s3eFile* settingsFile = s3eFileOpen("settings.dat", "w");
  sprintf(dataToWrite, "usesfx=%i\n", Game::g_instance->useSfx ? 1 : 0); 
  s3eFileWrite(dataToWrite, 9, 1, settingsFile);
  sprintf(dataToWrite, "usemsc=%i\n", Game::g_instance->useMusic ? 1 : 0);
  s3eFileWrite(dataToWrite, 9, 1, settingsFile);
  s3eFileClose(settingsFile);
}
