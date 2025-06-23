	    #NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ^ = CTRL, # = Win, ! = Alt, + = Shift

;----------------------------------------------------------------------------

;minimize maximize (windowsLogo and downArrow or upArrow)

#Down::WinMinimize, A
return

#Up::WinMaximize, A
return

;----------------------------------------------------------------------------

;Always on top, (Alt and t)

!t::WinSet, AlwaysOnTop, Toggle, A
return

;----------------------------------------------------------------------------

;remap alt and F4 with (alt and q)

!q::!F4

;----------------------------------------------------------------------------

;Volume control, Alt+Scroll wheel (and Mbutton)

Alt & WheelUp::Volume_Up
Alt & WheelDown::Volume_Down
Alt & MButton::Volume_Mute

;----------------------------------------------------------------------------

;Suspend hotkeys with (alt and s)

!s::
suspend, toggle
return

;---------------------------------------------------------------------------

;Search selection with (alt and right mouse button)

!RButton::
{
clipboard=
Send, ^c
Sleep 0025
Run, http://www.google.com/search?q=%clipboard%
Return
}

;---------------------------------------------------------------------------

; search youtube with (F2) and google/duckduckgo with (F1)

customSearch(service := 1)
{
    static urls := { 0: ""
                  , 1: "https://google.com/search?q=" 
                  , 2: "https://www.youtube.com/results?search_query=" }

    InputBox, query, 5609234566923853434695838975569209345,,, 300, 100
    if (ErrorLevel)
        return  ; Cancel, close, or empty input

    Run, % urls[service] . UrlEncode(query)
}

UrlEncode(str) {
    f := A_FormatInteger
    SetFormat, Integer, Hex
    If RegExMatch(str, "^\w+:/{0,2}", pr)
        StringTrimLeft, str, str, StrLen(pr)
    StringReplace, str, str, `%, `%25, All
    Loop
        If RegExMatch(str, "i)[^\w\.~%/:\[\]-]", char)
            StringReplace, str, str, %char%, % "%" . SubStr(Asc(char),3), All
        Else Break
    SetFormat, Integer, %f%
    Return pr . str
}

F1::customSearch(1) ;
F2::customSearch(2) ;

;---------------------------------------------------------------------------

;fast alt tab with (CapsLock)

CapsLock::
send {Alt Down}
sleep 000 ; Add a small delay to prevent crash
send {Tab}
sleep 000 ; Add a small delay to prevent crash
Send {Alt Up}
return

;---------------------------------------------------------------------------

