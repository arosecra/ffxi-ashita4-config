; Run every line
Critical
   #UseHook
; Avoid warning dialogue about over-hits
#MaxHotkeysPerInterval 50000
#HotkeyInterval 1
  
#WinActivateForce
  

F6::
{
  IfWinNotActive Specktr ahk_class FFXiClass
  {
   If WinExist("Specktr ahk_class FFXiClass")
   {
     WinActivate, Specktr ahk_class FFXiClass
   }
  }
 return
}
F7::
{
  IfWinNotActive Sternaru ahk_class FFXiClass
  {
   If WinExist("Sternaru ahk_class FFXiClass")
   {
     WinActivate, Sternaru ahk_class FFXiClass
   }
  }
 return
}
F8::
{
  IfWinNotActive Sillyaru ahk_class FFXiClass
  {
   If WinExist("Sillyaru ahk_class FFXiClass")
   {
     WinActivate, Sillyaru ahk_class FFXiClass
   }
  }
 return
}
F9::
{
  IfWinNotActive Shyaru ahk_class FFXiClass
  {
   If WinExist("Shyaru ahk_class FFXiClass")
   {
     WinActivate, Shyaru ahk_class FFXiClass
   }
  }
 return
}
F10::
{
  IfWinNotActive Sassyaru ahk_class FFXiClass
  {
   If WinExist("Sassyaru ahk_class FFXiClass")
   {
     WinActivate, Sassyaru ahk_class FFXiClass
   }
  }
 return
}
F11::
{
  IfWinNotActive Sadaru ahk_class FFXiClass
  {
   If WinExist("Sadaru ahk_class FFXiClass")
   {
     WinActivate, Sadaru ahk_class FFXiClass
   }
  }
 return
}