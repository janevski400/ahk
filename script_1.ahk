;ctrl + alt + space
^!Space::Send       {Media_Play_Pause}

;ctrl + alt + leftArrow
^!Left::Send        {Media_Prev}

;ctrl + alt + rightArrow
^!Right::Send       {Media_Next}

;ctrl + alt + end 
^!End::Send  {Volume_Mute}

;ctrl + alt + pageUp
^!PgUp::Send   {Volume_Up}

;ctrl + alt + pageDown
^!PgDn::Send   {Volume_Down}

; windows terminal
;alt + ctrl + t
!^t::
run, C:\Users\stef\Software\wt\wt
return

!^f::
run, explorer.exe
return

; bitwarden
!^w::
run, C:\Users\stef\AppData\Local\Programs\Bitwarden\Bitwarden.exe
return

!^n::
run, notepad
return

!^y::
run, C:\Users\stef\ahpexTwinTraka.m4a
return

; MKD

;ѐ (Кирилично)
:?*O:ѝе::
{
    if (GetKeyState("CapsLock","T")) 
        Send, Ѐ
    else 
        Send, ѐ
Return
}

; alt + ѝ за ` при користење на Македонска поддршка
!`::
Send, ``
Return

; Враќамо што е наше

; shift+1 => !
$+1::
Send, {!}
Return

; shift+2 => @
$+2::
Send, {@}
Return

; shift+3 => #
$+3::
Send, {#}
Return

; shift+4 => $
$+4::
Send, {$}
Return

; shift+5 => %
$+5::
Send, `%
Return

; shift+6 => ^
$+6::
Send, {^}
Return

; shift+7 => &
$+7::
Send, {&}
Return

; shift+8 => *
$+8::
Send, {*}
Return

; shift+9 => (
$+9::
Send, {(}
Return

; shift+0 => )
$+0::
Send, {)}
Return

; shift+- => _
$+SC00C::
Send, `_
Return

; ctrl+alt+ѓ => ]
^!SC01B::
Send, {]}
Return

; ctrl+shift+ѓ => ]
^+SC01A::
Send, {[}
Return
; [][]
; ctrl+shift+" => “
^+SC028::
Send, `“
Return

; ctrl+alt+" => „
^!SC028::
Send, `„
Return

; google-search (ctrl+alt+g)
^!g::
{
    Send, ^c
    Sleep 50
    Run, https://www.google.com/search?q=%clipboard%
    Return
}

; Duck-Duck-Go (ctrl+alt+d)
^!d:: 
{
    Send, ^c
    Sleep 50
    Run, https://duckduckgo.com/?q=%clipboard%
    Return
}

; makedonski-gov-mk (ctrl+alt+r)
^!r:: 
{
    Send, ^c
    Sleep 50
    Run, https://makedonski.gov.mk/corpus/s?q=%clipboard%
    Return
}

; dictionary (ctrl+alt+`)
^!`::
{
    Send, ^c
    Sleep 50
    Run, https://www.dictionary.com/browse/%clipboard%
    Return
}