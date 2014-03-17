; =================================================
; Switch between different Windows audio outputs,
; each setting stands for a distinct file to
; be executed to take effect.
; (most useful with keyboards having bindable keys)
;
;  Made by Arthur S. Muszynski, 16th of March 2014
; ================================================= 

; =================================================
; Setting I (i.e. PC speakers):
; =================================================
Run("C:\Windows\System32\control.exe mmsys.cpl")

WinWaitActive("Sound")

; -------------------------------------------------
; Edit this to your liking...
; Send("{DOWN}") or
; Send("{UP}")
; to hit the appropriate audio device.
Send("{DOWN}")
Send("{DOWN}")
; -------------------------------------------------

If ControlEnable("Sound", "", 1001) Then
	Send("{TAB}")
EndIf

If ControlEnable("Sound", "", 1002) Then
	Send("{TAB}")
	Send("{ENTER}")
EndIf

WinClose("Sound")
; =================================================
; Setting I End
; =================================================

; =================================================
; Setting II (i.e. TV screen audio output):
; =================================================
Run("C:\Windows\System32\control.exe mmsys.cpl")

WinWaitActive("Sound")

; -------------------------------------------------
; Edit this to your liking...
; Send("{DOWN}") or
; Send("{UP}")
; to hit the appropriate audio device.
Send("{DOWN}")
; -------------------------------------------------

If ControlEnable("Sound", "", 1001) Then
	Send("{TAB}")
EndIf

If ControlEnable("Sound", "", 1002) Then
	Send("{TAB}")
	Send("{ENTER}")
EndIf

WinClose("Sound")
; =================================================
; Setting II End
; =================================================