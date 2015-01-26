#include "GameView.h"
#include "IwGxFont.h"
#include "Game.h"
#include "ImageManager.h"
#include "Input.h"
#include "Trackpad.h"
#include "Button.h"
#include "GuiTexture.h"
#include "Bullet.h"
#include "Enemy.h"
#include "CollisionManager.h"
#include "AudioManager.h"
#include "IwGxPrint.h"

static uint bgmMusicInstance = 0;

GameView::GameView()
{
  // Initialize trackpad
  Image* tpNormal = ImageManager::singleton->GetImage("mover");
  Image* tpPressed = ImageManager::singleton->GetImage("mover_pressed");

  Trackpad* tp = new Trackpad(0, 0.65f, 0.35f, 0.35f, tpNormal, tpPressed, Game::TrackpadCB);
  m_guiElements.push_back(tp);   

  // Initialize restart button
  Image* restartNormal = ImageManager::singleton->GetImage("restartbtn_normal");
  Image* restartPressed = ImageManager::singleton->GetImage("restartbtn_pressed");

  Button* rstrt = new Button(0, 0, 0, 0, restartNormal, restartPressed, Game::RestartButtonCB);
  m_guiElements.push_back(rstrt);

  // Initialize continue-playing overlay
  GuiTexture* continuePlaying = new GuiTexture("continueplaying", 0,0,0,0);
  m_guiElements.push_back(continuePlaying);
}


GameView::~GameView()
{
}


void GameView::Enter()
{
  // Position and scale the camera
  Game::g_instance->m_SceneRoot->m_X = Game::g_viewportWidth / 2;
  Game::g_instance->m_SceneRoot->m_Y = Game::g_viewportHeight / 2;
  Game::g_instance->m_SceneRoot->m_ScaleX = GameSprite::g_zoomLevel;
  Game::g_instance->m_SceneRoot->m_ScaleY = GameSprite::g_zoomLevel;
  
  UpdateLayout();

  // Start the music
  if (Game::g_instance->useMusic)
    bgmMusicInstance = AudioManager::singleton->Play("bgm_ingame");

  //Initialize font
  IwGetResManager()->SetCurrentGroup(IwGetResManager()->GetGroupNamed("fonts"));
  CIwGxFont* font = (CIwGxFont*)IwGetResManager()->GetResNamed("ArialBold8", "CIwGxFont");
  IwGxFontSetFont(font);
}

void GameView::Exit()
{
  AudioManager::singleton->StopAll();
  View::Exit();
}

void GameView::Update(float a_DeltaTime)
{
  View::Update(a_DeltaTime);
  CollisionManager::singleton->Update(a_DeltaTime);

  switch (Game::g_instance->m_State)
  {
  case GAME_STARTING:
    break;
  case GAME_PLAYING:
    Game::g_instance->m_SceneRoot->Update(a_DeltaTime);
    break;
  case GAME_PAUSED:
    break;
  case GAME_OVER:
    break;
  }

  // Position camera on player
  Game::g_instance->m_SceneRoot->m_X = Game::g_viewportWidth / 2 - Game::g_instance->m_player->m_X * GameSprite::g_zoomLevel;
  Game::g_instance->m_SceneRoot->m_Y = Game::g_viewportHeight / 2 - Game::g_instance->m_player->m_Y * GameSprite::g_zoomLevel;
}

void GameView::Render()
{
  Game::g_instance->m_SceneRoot->Render();
  View::Render();

  Iw2DFinishDrawing();

  // Draw text based on the current game state
  // It places, scales, aligns, and draws the ingame text here
  static char stringBuffer[128];
  switch (Game::g_instance->m_State)
  {
  case GAME_STARTING:
    if (Game::g_instance->countdownTimer > 3)
      sprintf(stringBuffer, "GO!");
    else
      sprintf(stringBuffer, "%i", 3 - (int)Game::g_instance->countdownTimer);

    IwGxFontSetAlignmentHor(IW_GX_FONT_ALIGN_CENTRE);
    IwGxFontSetScale(GameSprite::g_zoomLevel * 2048.0f);
    IwGxFontSetRect(CIwRect(0, (int)(Game::g_viewportHeight * 0.45f), (int)Game::g_viewportWidth, 400));
    IwGxFontDrawText(stringBuffer);
    break;
  case GAME_PLAYING:
    // Player's health bar
    Iw2DSetColour(0xFF2222AA);
    Iw2DFillRect(
      Vector2(0, 0),
      Vector2(Game::g_viewportWidth, Game::g_viewportHeight * 0.025f));
    Iw2DSetColour(0xFF22AA22);
    Iw2DFillRect(
      Vector2(0, 0),
      Vector2(Game::g_viewportWidth * (Game::g_instance->m_player->health / 100.0f), Game::g_viewportHeight * 0.025f));
    Iw2DSetColour(0xFFFFFFFF);

    IwGxFontSetAlignmentHor(IW_GX_FONT_ALIGN_LEFT);
    IwGxFontSetScale(GameSprite::g_zoomLevel * 1024.0f);
    IwGxFontSetRect(CIwRect((int)(Game::g_viewportWidth * 0.05f), (int)(Game::g_viewportHeight * 0.05f), (int)Game::g_viewportWidth, 400));
    sprintf(stringBuffer, "Kills: %u", Enemy::g_enemiesKilled);
    IwGxFontDrawText(stringBuffer);

    IwGxFontSetRect(CIwRect((int)(Game::g_viewportWidth * 0.05f), (int)(Game::g_viewportHeight * 0.1f), (int)Game::g_viewportWidth, 400));
    sprintf(stringBuffer, "Highscore: %u", Game::highscore);
    IwGxFontDrawText(stringBuffer);
    break;
  case GAME_PAUSED:
    break;
  case GAME_OVER:
    IwGxFontSetScale(GameSprite::g_zoomLevel * 2048.0f);
    IwGxFontSetRect(CIwRect(0, (int)(Game::g_viewportHeight * 0.3f), (int)Game::g_viewportWidth, 200));
    IwGxFontSetAlignmentHor(IW_GX_FONT_ALIGN_CENTRE);
    IwGxFontDrawText("Game over!");
    IwGxFontSetRect(CIwRect(0, (int)(Game::g_viewportHeight * 0.45f), (int)Game::g_viewportWidth, 100));
    sprintf(stringBuffer, "Kill count: %u", Enemy::g_enemiesKilled);
    IwGxFontDrawText(stringBuffer);
    break;
  }
}

void GameView::UpdateLayout()
{
  const float scrw = Game::g_viewportWidth;
  const float scrh = Game::g_viewportHeight;

  // Different settings for portrait and landscape mode. 
  if (Game::g_inPortrait)
  {
    GameSprite::g_zoomLevel = Game::g_viewportWidth / 250.0f;
    Trackpad* tp = (Trackpad*)m_guiElements[0];
    float tpSize = 0.35f * scrw;
    float tpLeftMargin = 0.00f * scrw;
    float tpTopMargin = scrh - tpSize - tpLeftMargin;

    // Updates the trackpad layout
    tp->UpdateLayout(tpLeftMargin, tpTopMargin, tpSize, tpSize);

    // Updates restart button layout, only visible on game over though
    Button* rstrt = (Button*)m_guiElements[1];
    rstrt->UpdateLayout(scrw * 0.3f, scrh * 0.6f, scrw * 0.4f, scrw * 0.1f);

    // Updates continue-playing overlay
    m_guiElements[2]->UpdateLayout(scrw, scrw, 0, scrh-scrw);

    // Changes zoomlevel based on new resolution
    GameSprite::g_zoomLevel = scrw / ASSUMED_WIDTH;
  }
  else
  {
    GameSprite::g_zoomLevel = Game::g_viewportHeight / 250.0f;
    Trackpad* tp = (Trackpad*)m_guiElements[0];
    float tpSize = 0.35f * scrh;
    float tpLeftMargin = 0.00f * scrw;
    float tpTopMargin = scrh - tpSize - tpLeftMargin;

    tp->UpdateLayout(tpLeftMargin, tpTopMargin, tpSize, tpSize);

    // Updates restart button layout, only visible on game over though
    Button* rstrt = (Button*)m_guiElements[1];
    rstrt->UpdateLayout(scrw * 0.3f, scrh * 0.6f, scrw * 0.4f, scrw * 0.1f);

    // Updates continue-playing overlay
    m_guiElements[2]->UpdateLayout(scrh, scrh, 0, 0);

    // Changes zoomlevel based on new resolution
    GameSprite::g_zoomLevel = scrw / ASSUMED_HEIGHT;
  }

  Game::g_instance->m_SceneRoot->m_ScaleX = GameSprite::g_zoomLevel;
  Game::g_instance->m_SceneRoot->m_ScaleY = GameSprite::g_zoomLevel;
}

// Trackpad movement gets forwarded to the player
void GameView::TrackpadMovement(Vector2 a_offset)
{
  Game::g_instance->m_player->Move(a_offset);
}

