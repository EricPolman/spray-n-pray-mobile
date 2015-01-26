#pragma once
#include "definitions.h"
#include "Iw2D.h"
#include "IwGx.h"
#include <map>
#include <string>
#include <vector>

class ImageManager
{
public:
  ImageManager()
  {
    // Load group containing images
    m_imagesGroup = IwGetResManager()->LoadGroup("images.group");
  }
  ~ImageManager()
  {
    // Delete the actual images
    for (unsigned int i = 0; i < images.size(); ++i)
    {
      delete images[i];
    }

    // Cleanup the group
    IwGetResManager()->DestroyGroup(m_imagesGroup);
  }
  static Image* GetImage(const char* texName)
  {
    CIwTexture* tex = (CIwTexture*)(singleton->m_imagesGroup->GetResNamed(texName, "CIwTexture"));
    g_IwResManager->SetCurrentGroup(singleton->m_imagesGroup);

    // If the image wasn't loaded as CIw2DImage, do so
    if (singleton->images.find(tex->m_Hash) == singleton->images.end())
    {
      Image* img2d = Iw2DCreateImageResource(tex->m_Hash);
      singleton->images[tex->m_Hash] = img2d;
      return img2d;
    }
    else
    {
      return singleton->images[tex->m_Hash];
    }
  }

  std::map<uint32, Image*> images;
  static ImageManager* singleton;
  CIwResGroup* m_imagesGroup;
};

