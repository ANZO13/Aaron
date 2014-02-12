#SingleInstance Force
#installKeybdHook
#Persistent
#NoEnv
alreadyrun := false
Hotkey, IfWinActive, League of Legends (TM) Client
Hotkey, RButton, Bullshit

Bullshit:
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
return
}
else
{
Send {MButton down}
sleep 3
send {MButton up}
}
SetTimer, Bullshit2, 250
alreadyrun := 0
}



Bullshit2:
{
if alreadyrun = 1
{
GetKeyState, state, RButton, P
if state = D
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
return
}
else
{
Send {MButton down}
sleep 3
send {MButton up}
}
}
else 
SetTimer, Bullshit2, Off
}
else alreadyrun := 1
}