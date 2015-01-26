#pragma once
#include <map>
#include <string>
#include <vector>
#include "IwSound.h" // Using SoundEngine SDK example

class AudioManager
{
public:
  AudioManager()
  {
    // Initialize sound subsystem and load audio group
    IwSoundInit();
    IwGetResManager()->AddHandler(new CIwResHandlerWAV);
    m_pSoundsGroup = IwGetResManager()->LoadGroup("audio.group");
  }
  ~AudioManager()
  {
    // Cleanup group and shutdown sound subsystem
    IwGetResManager()->DestroyGroup(m_pSoundsGroup);
    IwSoundTerminate();
  }

  void Update(float a_fDeltaTime)
  {
    IwGetSoundManager()->Update();

    // Clear finished sound instance pointers from map
    for (std::map<uint, CIwSoundInst*>::iterator it = soundInstances.begin();
      it != soundInstances.end();)
    {
      if (!it->second->IsPlaying())
      {
        soundInstances.erase(it);
        break;
      }
      else
      {
        ++it;
      }
    }
  }

  CIwResGroup* m_pSoundsGroup;
  static AudioManager* singleton;

  std::map<uint, CIwSoundInst*> soundInstances;
  uint Play(const char* name)
  {
    // Get sound from sound group and play it. Return an id to the sound instance
    g_IwResManager->SetCurrentGroup(singleton->m_pSoundsGroup);
    CIwSoundSpec* soundSpec = (CIwSoundSpec*)m_pSoundsGroup->GetResNamed(name, "CIwSoundSpec");
    CIwSoundInst* inst = soundSpec->Play();
    if (inst != 0)
    {
      soundInstances[_counter] = inst;
      return _counter++;
    }
    return -1;
  }
  void Stop(uint id)
  {
    // Stop sound instance with id
    if (soundInstances.find(id) != soundInstances.end())
      soundInstances[id]->Stop();
  }
  void StopAll()
  {
    // Stop all playing sounds
    IwGetSoundManager()->StopAll();
  }

private:
  int _counter;
};

