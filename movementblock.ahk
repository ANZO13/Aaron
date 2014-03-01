#SingleInstance Force
#installKeybdHook
#Persistent
#NoEnv
alreadyrun := 0
canrun := 0
canrun2 := 0
Hotkey, IfWinActive, League of Legends (TM) Client
Hotkey, RButton, Bullshit

Bullshit:
{
if canrun = 1
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
Send {RButton}
return
}
else
{
Send {RButton}
Send {MButton down}
sleep 3
send {MButton up}
}
SetTimer, Bullshit2, 250
alreadyrun := 0
}
else
canrun := 1
}



Bullshit2:
{
if canrun2 = 1
{
if alreadyrun = 1
{
GetKeyState, state, RButton, P
if state = D
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
Send {RButton}
return
}
else
{
Send {RButton}
Send {MButton down}
sleep 3
send {RButton up}
}
}
else 
SetTimer, Bullshit2, Off
}
else alreadyrun := 1
}
else
canrun2 := 1
}