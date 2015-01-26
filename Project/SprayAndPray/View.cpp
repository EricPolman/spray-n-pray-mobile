#include "View.h"
#include "IwGx.h"
#include "Game.h"

View::View() :isContainer(false) {}
View::~View()
{
  // A container only holds some pointers to objects, managed by another class (like menu)
  if (!isContainer)
  {
    for (std::vector<GuiElement*>::iterator it = m_guiElements.begin();
      it != m_guiElements.end(); ++it)
    {
      delete (*it);
    }
    m_guiElements.clear();
  }
}

void View::Enter()
{
  UpdateLayout();
}

void View::Update(float a_DeltaTime)
{
  // Update gui elements, used for button states, trackpad, etc.
  for (std::vector<GuiElement*>::iterator it = m_guiElements.begin();
    it != m_guiElements.end(); ++it)
  {
    if ((*it)->enabled) // Only update if enabled.
      (*it)->Update(a_DeltaTime);
  }
}

void View::UpdateLayout()
{
  // Always done by derived classes
}

void View::Exit()
{
  // Always done by derived classes
}

void View::Render()
{
  // Render gui elements
  for (std::vector<GuiElement*>::iterator it = m_guiElements.begin();
    it != m_guiElements.end(); ++it)
  {
    if ((*it)->enabled) // If the element is enabled
      (*it)->Render();
  }
}

void View::HandleEvent(EventType a_eventType)
{
  switch (a_eventType)
  {
  case EVENT_SCREEN_CHANGED:
    UpdateLayout(); // Orientation changed, update elements
    break;
  }
}