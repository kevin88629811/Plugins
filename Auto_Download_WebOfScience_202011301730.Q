[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=00edde77-9ebb-4488-89a0-c50d38d8d872
Description=我的脚本2
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Dim input
Dim output
input = 1
output = 500
Dim inputstr(6)
Dim outputstr(6)
Dim Responsetime
Responsetime = 200

Dim freshtime
freshtime = 10000

For times = 1 to 50 step 1



'==========以下是按键精灵录制的内容==========
MoveTo 776, 428
Delay Responsetime
LeftDown 1
MoveTo 776, 429
Delay Responsetime
LeftUp 1
Delay 16
LeftUp 1
MoveTo 650, 445
Delay Responsetime
LeftDown 1
LeftDown 1
MoveTo 648, 447
Delay 100
LeftUp 1
LeftUp 1
MoveTo 775, 440
Delay Responsetime
LeftDown 1
LeftClick 1
Delay 15
LeftUp 1
Delay Responsetime


For i = 1 To 6
	KeyDown "BackSpace", 1
	Delay 20
	KeyUp "BackSpace", 1
Next


c = len(input)
For i = 1 To c
    inputstr(i) = CStr(Mid(input, i, 1))
    Delay 10
    KeyDown inputstr(i), 1
    Delay 20
	KeyUp inputstr(i), 1
Next


KeyDown "Tab", 1
KeyUp "Tab", 1
Delay 40

For i = 1 To 6
	KeyDown "BackSpace", 1
	Delay 40
	KeyUp "BackSpace", 1
Next



c = len(output)
For i = 1 To c
	Delay 10
    outputstr(i) = CStr(Mid(output, i, 1))
    KeyDown outputstr(i), 1
    Delay 10
	KeyUp outputstr(i), 1
Next

Delay 1000

MoveTo 1032, 583
Delay Responsetime
LeftClick 1
LeftUp 1
MoveTo 958, 712
Delay Responsetime
LeftDown 1
LeftClick 1
LeftUp 1
MoveTo 960, 838
Delay Responsetime
LeftDown 1
LeftClick 1
Delay 15
LeftUp 1
'==========以上是按键精灵录制的内容==========

input = input + 500
output = output + 500
Delay freshtime
Next