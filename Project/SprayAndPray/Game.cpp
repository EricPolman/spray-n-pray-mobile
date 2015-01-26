#include "Game.h"
#include "Iw2DSceneGraph.h"
#include "IwGx.h"
#include <map>
#include "ImageManager.h"
#include "Input.h"
#include "Menu.h"
#include "Enemy.h"
#include "Bullet.h"
#include <math.h>
#include "AudioManager.h"
#include "CollisionManager.h"

using namespace Iw2DSceneGraphCore;
using namespace Iw2DSceneGraph;

ImageManager* ImageManager::singleton;
#define Images ImageManager::singleton

// Helper variables used for determining sizes of elements
float Game::g_viewportWidth, Game::g_viewportHeight, Game::g_heightScale;
bool Game::g_inPortrait = true;

// Static reference to Game instance
Game* Game::g_instance;

// Current highscore, will be changed when loaded from file later
uint Game::highscore = 0;

// Flag used for changing screen orientation
static bool orientationChanged = false;

// Callback for screen orientation. Will flag a variable and resizing will happen later.
void OnScreenSizeOrientationChangedCallback(void* systemData, void* userData)
{
  orientationChanged = true;
}

Game::Game()
  : m_SceneRoot(0), useSfx(true), useMusic(true)
{
  g_instance = this;
  
  // Register screensize change callback
  s3eSurfaceRegister(S3E_SURFACE_SCREENSIZE, (s3eCallback)OnScreenSizeOrientationChangedCallback, this);

  // All bullets and enemies share an image, so it's set globally
  Bullet::g_image = ImageManager::singleton->GetImage("bullet");
  Enemy::g_image = ImageManager::singleton->GetImage("enemy");
}


Game::~Game()
{
  // Delete everything
  delete m_menu;
  delete m_gameView;
  delete m_SceneRoot;
  delete CollisionManager::singleton;

  // Unregister callback
  s3eSurfaceUnRegister(S3E_SURFACE_SCREENSIZE, (s3eCallback)OnScreenSizeOrientationChangedCallback);
}

void Game::Setup()
{
  CollisionManager::singleton = new CollisionManager();
  m_SceneRoot = new GameSprite();

  // Setup viewport data
  g_viewportWidth = IwGxGetScreenWidth();
  g_viewportHeight = IwGxGetScreenHeight();
  g_heightScale = g_viewportWidth / g_viewportHeight;
  if (g_viewportWidth > g_viewportHeight)
    g_inPortrait = false;
  else
    g_inPortrait = true;

  // Initialize views
  m_gameView = new GameView();
  m_menu = new Menu();
  Iw2DSetTransformMatrix(CIwFMat2D::g_Identity);
  m_SceneRoot->CalculateMatrices();

  // Game over button
  m_gameView->GetElement(1)->enabled = false;

  // Setup playfield
  GameSprite* playground = new GameSprite();
  playground->SetImage(ImageManager::GetImage("playground"));
  m_SceneRoot->pendingChildren.push(playground);
  
  m_resetGame = false;
}

void Game::Init()
{
  Setup();

  // Starts in main menu
  m_currentView = m_menu;

  // Initialize game
  m_player = new Player();
  m_SceneRoot->pendingChildren.push(Game::g_instance->m_player);

  for (uint i = 0; i < 10; ++i) SpawnEnemy();

  // Load scores and set current score to 0
  Enemy::g_enemiesKilled = 0;
  RetrieveHighscoreFromFile();

  m_currentView->Enter();
}

void Game::InitFromFile(const char* name)
{
  Setup();
  m_currentView = m_gameView;

  // Read state file
  s3eFile* stateFileHandle = s3eFileOpen(name, "rb");

  uint enemiesAlive;
  Enemy::g_enemiesAlive = 0;
  // Set current score and get how many enemies were saved
  s3eFileRead(&Enemy::g_enemiesKilled, 4, 1, stateFileHandle);
  s3eFileRead(&enemiesAlive, 4, 1, stateFileHandle);

  // Initialize player
  m_player = new Player();
  m_SceneRoot->pendingChildren.push(m_player);
  s3eFileRead(&m_player->health, 4, 1, stateFileHandle);
  s3eFileRead(&m_player->m_X, 4, 1, stateFileHandle);
  s3eFileRead(&m_player->m_Y, 4, 1, stateFileHandle);

  // Spawn enemies from file
  for (uint i = 0; i < enemiesAlive; ++i)
  {
    Enemy* enemy = new Enemy(Vector2(0, 0));
    s3eFileRead(&enemy->health, 4, 1, stateFileHandle);
    s3eFileRead(&enemy->m_X, 4, 1, stateFileHandle);
    s3eFileRead(&enemy->m_Y, 4, 1, stateFileHandle);
    m_SceneRoot->pendingChildren.push(enemy);
  }

  s3eFileClose(stateFileHandle);

  // Delete file, we don't need it anymore.
  s3eFileDelete(name);

  m_currentView->Enter();
  // Play one frame, to get the graphics on screen
  m_State = GAME_PLAYING;
  Update(0);

  SetState(GAME_PAUSED);
}

void Game::Update(float a_fDeltaTime)
{
  // Handle callback
  if (orientationChanged)
  {
    //g_Scale = IwGxGetScreenWidth() / 100.0f / g_horizontalTiles;
    g_viewportWidth = IwGxGetScreenWidth();
    g_viewportHeight = IwGxGetScreenHeight();
    g_heightScale = g_viewportWidth / g_viewportHeight;

    if (g_viewportWidth > g_viewportHeight)
      g_inPortrait = false;
    else
      g_inPortrait = true;

    // Update current view
    m_currentView->HandleEvent(EVENT_SCREEN_CHANGED);

    orientationChanged = false;
  }

  switch (m_State)
  {
  case GAME_IN_MENU:
  case GAME_STARTING:
    countdownTimer += a_fDeltaTime;
    if (countdownTimer > 4)
    {
      countdownTimer = 0;
      m_State = GAME_PLAYING;
    }
    break;
  }
  m_currentView->Update(a_fDeltaTime);
}

void Game::Render()
{
  m_currentView->Render();
}

void Game::SpawnEnemy()
{
  // Spawn enemy in random direction from player
  float angle = (float)(rand() % 2048) / 2048.0f * (PI * 2);
  Vector2 offset(cosf(angle), sinf(angle));
  m_SceneRoot->pendingChildren.push(new Enemy(Vector2(m_player->m_X, m_player->m_Y) + offset * 200.0f));
}

// Callbacks
void Game::StartButtonCB() { g_instance->SetState(GAME_LOADING); }
void Game::SettingsButtonCB() { g_instance->m_menu->Show(MENU_SETTINGS); }
void Game::BackButtonCB() { g_instance->m_menu->Show(MENU_MAIN_MENU); }
void Game::TrackpadCB(Vector2 a_offset)
{
  if (g_instance->m_State == GAME_PLAYING)
    g_instance->m_gameView->TrackpadMovement(a_offset);
  else if (g_instance->m_State == GAME_PAUSED)
    g_instance->SetState(GAME_PLAYING);
}
void Game::MusicCheckboxCB(bool checked)
{
  g_instance->useMusic = checked;
  if (!checked)
    AudioManager::singleton->Stop(g_instance->m_menu->bgmMusicInstance);
  else
    g_instance->m_menu->bgmMusicInstance = AudioManager::singleton->Play("bgm_menu");

  g_instance->m_menu->UpdateSettingsInFile();
}
void Game::SfxCheckboxCB(bool checked)
{
  g_instance->useSfx = checked;
  g_instance->m_menu->UpdateSettingsInFile();
}

// Changes state of the game
void Game::SetState(GameState a_newState)
{
  m_State = a_newState;
  m_gameView->GetElement(2)->enabled = false;
  switch (m_State)
  {
  case GAME_STARTING:
    break;
  case GAME_IN_MENU:
    m_currentView->Exit();
    m_currentView = m_menu;
    m_currentView->Enter();
  case GAME_PAUSED:
    m_gameView->GetElement(2)->enabled = true;
    break;
  case GAME_LOADING:
    m_gameView->GetElement(1)->enabled = false;
    m_currentView->Exit();
    m_currentView = m_gameView;
    m_currentView->Enter();
    m_State = GAME_PLAYING;
    Update(0);
    m_State = GAME_STARTING;
    countdownTimer = 0;
    break;
  case GAME_OVER:
    m_gameView->GetElement(1)->enabled = true;
    if (Enemy::g_enemiesKilled > highscore)
    {
      highscore = Enemy::g_enemiesKilled;
      UpdateHighscoreInFile();
    }
    
    // We don't need saved state, the game is over.
    if (s3eFileCheckExists("savedstate.dat"))
      s3eFileDelete("savedstate.dat");
    break;
  }
}

void Game::PlayerDied()
{
  SetState(GAME_OVER);
}

void Game::RetrieveHighscoreFromFile()
{
  char dataToRead[32];

  // Parse file
  if (!s3eFileCheckExists("highscore.dat"))
  {
    UpdateHighscoreInFile();
  }

  s3eFile* hsFile = s3eFileOpen("highscore.dat", "r");

  int32 fileSize = s3eFileGetSize(hsFile);
  memset(dataToRead, 0, 32);
  s3eFileReadString(dataToRead, 30, hsFile);
  Game::highscore = atoi(dataToRead);
  s3eFileClose(hsFile);
}

void Game::UpdateHighscoreInFile()
{
  char dataToWrite[32];
  memset(dataToWrite, 0, 32);

  s3eFile* hsFile = s3eFileOpen("highscore.dat", "w");
  sprintf(dataToWrite, "%u", Game::highscore);
  s3eFileWrite(dataToWrite, strlen(dataToWrite), 1, hsFile);
  s3eFileClose(hsFile);
}

void Game::SaveInternalState()
{
  s3eFile* stateFileHandle = s3eFileOpen("savedstate.dat", "wb");

  // Save current score
  s3eFileWrite(&Enemy::g_enemiesKilled, 4, 1, stateFileHandle);
  s3eFileWrite(&Enemy::g_enemiesAlive, 4, 1, stateFileHandle);

  // Save player data
  s3eFileWrite(&m_player->health, 4, 1, stateFileHandle);
  s3eFileWrite(&m_player->m_X, 4, 1, stateFileHandle);
  s3eFileWrite(&m_player->m_Y, 4, 1, stateFileHandle);

  std::vector<CNode*>& rootChildren = m_SceneRoot->GetChildren();
  for (std::vector<CNode*>::iterator iter = rootChildren.begin();
    iter != rootChildren.end(); ++iter)
  {
    GameSprite* gs = (GameSprite*)(*iter);
    if (gs->colliderType == ENEMY && gs->alive)
    {
      Enemy* enemy = (Enemy*)gs;

      s3eFileWrite(&enemy->health, 4, 1, stateFileHandle);
      s3eFileWrite(&enemy->m_X, 4, 1, stateFileHandle);
      s3eFileWrite(&enemy->m_Y, 4, 1, stateFileHandle);      
    }
  }

  s3eFileClose(stateFileHandle);
}
