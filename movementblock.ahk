#SingleInstance Force
#installKeybdHook
#Persistent
#NoEnv

F5::Suspend

RButton::
{
IfWinActive, League of Legends (TM) Client
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
return
}
else
{
Send {l down}
sleep 3
send {l up}
}
}
else
Send {RButton}

sleep 100
loop
{
GetKeyState, state, RButton, P
if state = D
{
sleep 100
IfWinActive, League of Legends (TM) Client
{
FileReadLine, line, movementblock.txt, 1
if line = 1
{
return
}
else
{
Send {l down}
sleep 3
send {l up}
}
}
}
else break
}
}