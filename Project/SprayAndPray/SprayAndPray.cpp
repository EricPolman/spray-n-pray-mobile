#include "s3e.h"
#include "IwDebug.h"
#include "IwGx.h"
#include "IwGxFont.h"
#include "Iw2D.h"
#include "definitions.h"
#include "Game.h"
#include "ImageManager.h"
#include "CollisionManager.h"
#include "AudioManager.h"
#include "Input.h"

Game* g_Game;

// If the game is running, save the state
void SuspendGame()
{
  if (g_Game->m_State == GAME_PLAYING)
  {
    g_Game->SetState(GAME_PAUSED);
    AudioManager::singleton->StopAll();

    // Create save file
    g_Game->SaveInternalState();

    // Cleanup
    delete CollisionManager::singleton;
    delete g_Game->m_SceneRoot;
    delete g_Game->m_menu;
    delete g_Game->m_gameView;
  }
} 

void ResumeGame()
{
  // Reinitialize if the game was playing. Continue game otherwise
  if (s3eFileCheckExists("savedstate.dat"))
  {
    g_Game->InitFromFile("savedstate.dat");
  }
}

void ExitGame()
{
  if (g_Game->m_State != GAME_PLAYING && g_Game->m_State != GAME_PAUSED)
  {
    // It was in menu or game over, meaning the game is finished, so the savedstate can be removed.
    if (s3eFileCheckExists("savedstate.dat"))
      s3eFileDelete("savedstate.dat");
  }
}

// Main entry point for the application
int main()
{
  //Initialise subsystems
  Iw2DInit();
  IwResManagerInit();
  IwGxFontInit();
  IwGxLightingOn();
  IwGxFontSetCol(0xFFFFFFFF);
  IwGetResManager()->LoadGroup("fonts.group");

  ImageManager::singleton = new ImageManager();
  AudioManager::singleton = new AudioManager();

  g_Game = new Game();
  // If there is a savedstate, load from it. If not, default init
  if (s3eFileCheckExists("savedstate.dat"))
    g_Game->InitFromFile("savedstate.dat");
  else
    g_Game->Init();

  // Register callbacks
  s3eDeviceRegister(S3E_DEVICE_PAUSE, (s3eCallback)SuspendGame, 0);
  s3eDeviceRegister(S3E_DEVICE_UNPAUSE, (s3eCallback)ResumeGame, 0);
  s3eDeviceRegister(S3E_DEVICE_EXIT, (s3eCallback)ExitGame, 0);

  // Prepare timing variables for deltatime
  clock_t startTime, endTime;
  clock_t clockTime;
  startTime = endTime = clockTime = 0;
  float fFrameTimer = 0;

  // Loop forever, until the user or the OS performs some action to quit the app
  while (!s3eDeviceCheckQuitRequest())
  {
    endTime = clockTime;
    clockTime = clock();
    float fDeltaTime = (float)(clockTime - endTime) / CLOCKS_PER_SEC;
    if (fDeltaTime > 1.0f / 60.0f)
      fDeltaTime = 1.0f / 60.0f;

    Iw2DSurfaceClear(0xFF000000);

    //Update the input systems
    s3eKeyboardUpdate();
    s3ePointerUpdate();

    g_Game->Update(fDeltaTime);
        
    // Your rendering/app code goes here.
    g_Game->Render();

    // On game over, this variable is set, which forces a cleanup and re-init
    if (g_Game->m_resetGame)
    {
      // Cleanup
      g_Game->m_gameView->Exit();
      delete CollisionManager::singleton;
      delete g_Game->m_SceneRoot;
      delete g_Game->m_menu;
      delete g_Game->m_gameView;

      // Reinitialize
      g_Game->Init();
    }

    Input::Get()->Update();
    AudioManager::singleton->Update(fDeltaTime);

    //Draws Surface to screen
    Iw2DSurfaceShow();
    
    // Sleep for 0ms to allow the OS to process events etc.
    s3eDeviceYield(0);
  }

  // Unregister callbacks
  s3eDeviceUnRegister(S3E_DEVICE_EXIT, (s3eCallback)ExitGame);
  s3eDeviceUnRegister(S3E_DEVICE_UNPAUSE, (s3eCallback)ResumeGame);
  s3eDeviceUnRegister(S3E_DEVICE_PAUSE, (s3eCallback)SuspendGame);

  //Terminate modules being used
  delete g_Game;

  delete ImageManager::singleton;
  delete AudioManager::singleton;
  delete Input::Get();

  IwGetResManager()->DestroyGroup("fonts.group");
  IwGxFontTerminate();
  IwResManagerTerminate();
  Iw2DTerminate();

  // Return
  return 0;
}
