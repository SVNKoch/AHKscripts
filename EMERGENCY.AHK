>#r::AHKPanic(0,0,1,0,1)

AHKPanic(Kill=0, Pause=0, Reload=0, Suspend=0, SelfToo=0) {
    DetectHiddenWindows, On
    WinGet, IDList ,List, ahk_class AutoHotkey
    Loop %IDList%
    {
        ID:=IDList%A_Index%
        WinGetTitle, ATitle, ahk_id %ID%
        IfNotInString, ATitle, %A_ScriptFullPath%
        {
            If Reload
                PostMessage, 0x111, 65303,,, ahk_id %ID%	; Reload. 
            If Suspend
                PostMessage, 0x111, 65305,,, ahk_id %ID%	; Suspend. 
            If Pause
                PostMessage, 0x111, 65306,,, ahk_id %ID%	; Pause.
            If Kill
                WinClose, ahk_id %ID% ;kill
        }
    }
    If SelfToo
    {
        If Suspend
            Suspend, Toggle	; Suspend. 
        If Pause
            Pause, Toggle, 1	; Pause.
        If Reload
            Reload ;Reload.
        If Kill
            ExitApp
    }
}