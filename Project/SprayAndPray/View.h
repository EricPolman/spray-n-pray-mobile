#pragma once
#include "definitions.h"
#include <vector>
#include "GuiElement.h"

class View
{
public:
  View();
  virtual ~View();

  virtual void Enter();
  virtual void Update(float a_DeltaTime = 0);
  virtual void Render();
  virtual void UpdateLayout();
  virtual void Exit();
  virtual void HandleEvent(EventType a_eventType);

  void AddElement(GuiElement* el) { m_guiElements.push_back(el); }
  GuiElement* GetElement(uint id) { return m_guiElements[id]; }
  bool isContainer;
protected:
  std::vector<GuiElement*> m_guiElements;
};

