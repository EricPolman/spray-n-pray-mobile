#pragma once
#include "View.h"
#include "GameSprite.h"
#include <vector>

class Button;
class GuiTexture;

class GameView : public View
{
public:
  GameView();
  ~GameView();

  void Enter();
  void Update(float a_DeltaTime = 0);
  void Render();
  void Exit();
  void UpdateLayout();
  //void HandleEvent();
  void TrackpadMovement(Vector2 a_offset);

private:
  Button* m_restartBtn;
  GuiTexture* m_continuePlaying;
};

