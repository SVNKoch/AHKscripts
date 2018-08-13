SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, %A_ScriptDir%\icon.ico

#+c::Run, firefox.exe -new-window https://calendar.google.com/calendar/r/month
#^c::Run, firefox.exe -new-window https://calendar.google.com/calendar/r/month
#c::Run, firefox.exe -new-tab https://calendar.google.com/calendar/r/month