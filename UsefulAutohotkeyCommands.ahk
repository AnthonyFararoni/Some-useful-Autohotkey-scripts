!1:: 
      { 
            global startTime := 0
            i := 0

            keyName := StrReplace(A_ThisHotkey, "!")

            While (GetKeyState(keyName, "P"))
            { 
                  startTime += 1
                  Sleep 200
                  volumeIncrease := 2 ** i 
                  SoundSetVolume("-" . volumeIncrease)
                  i++

            }

            return
      }

!2::
      { 
            global startTime := 0
            i := 0

            keyName := StrReplace(A_ThisHotkey, "!")

            While (GetKeyState(keyName, "P"))
            { 
                  startTime += 1
                  Sleep 200
                  volumeIncrease := 2 ** i 
                  SoundSetVolume("+" . volumeIncrease)
                  i++

            }

            return
      }

      !3::SoundSetMute "+1"

      !4::Send("{Media_Prev}")

      !5::Send("{Media_Next}")

      !6::Send("{Media_Play_Pause}")

      !7::WinMinimize("A")

      !8::WinMaximize("A")

!Q::
      {
            If WinExist("A")
            {
                  WinClose("A")
            }

            return
      }