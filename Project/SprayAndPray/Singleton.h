#pragma once

template <class Type>
class Singleton
{
public:
  virtual ~Singleton(void){}
  static Type* Get(void)
  {
    return single;
  }

  static void Reset(){ delete single; single = 0; }
protected:
  static Type* single;
};

template <class Type>
Type* Singleton<Type>::single = 0;
