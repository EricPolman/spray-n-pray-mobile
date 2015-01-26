#pragma once
#include "definitions.h"
#include "Menu.h"
#include "Sprite.h"
#include "GameView.h"
#include "Player.h"

namespace Iw2DSceneGraphCore
{
  class CNode;
};

enum GameState
{
  GAME_SPLASH_SCREENS,
  GAME_IN_MENU,
  GAME_LOADING,
  GAME_STARTING,
  GAME_PLAYING,
  GAME_PAUSED,
  GAME_OVER
};

class Game
{
  friend class GameView;
public:
  Game();
  ~Game();

  void Init();
  void InitFromFile(const char* name);
  void Update(float a_fDeltaTime);
  void Render();
  void PlayerDied();

  static void StartButtonCB();
  static void SettingsButtonCB();
  static void BackButtonCB();
  static void MusicCheckboxCB(bool checked);
  static void SfxCheckboxCB(bool checked);
  static void TrackpadCB(Vector2 a_offset);
  static void RestartButtonCB() { g_instance->m_resetGame = true; }

  //m_resetGame = true;

  static float g_viewportWidth, g_viewportHeight, g_heightScale;
  static uint highscore;

  GameState m_State;
  static Game* g_instance;
  static bool g_inPortrait;

  std::vector<GameSprite*> m_gameObjects;
  Player* m_player;

  void SpawnEnemy();

  bool useSfx, useMusic;
  float countdownTimer;

  bool m_resetGame;
  GameSprite *m_SceneRoot;
  Menu* m_menu;
  GameView* m_gameView;
  void SetState(GameState a_newState);
  void SaveInternalState();
private:
  void Setup();
  void RetrieveHighscoreFromFile();
  void UpdateHighscoreInFile();
  View* m_currentView;

};
