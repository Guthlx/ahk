;Ignore this section
#NoEnv
 
;Removes the AHK icon from your taskbar, just remove these two lines if you really want the icon
;#NoTrayIcon
 
#SingleInstance Force
#Persistent
SetBatchLines -1
SetTitleMatchMode, 2

; Ctrl+F11 // get Active window resolution
^F11::
WinGetPos, X,Y,W,H,A
MsgBox, %W%`,%H%
return

; Ctrl+F12 // Resizes the client to whatever resolution you wish 
^F12::ResizeWin(781,542)
;   change this ^^^^^^^^^^^^
ResizeWin(Width = 0,Height = 0)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 0
    Width := W
  If %Height% = 0
    Height := H
  WinMove,A,,%X%,%Y%,%Width%,%Height%
}
