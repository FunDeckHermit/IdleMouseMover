#Requires AutoHotkey v2.0-beta

; Take optional command line argument as maxIdleTime
; Default is still 1 minute
global maxIdleTime := (A_Args.Length > 0) ? A_Args[1] : 60000
SetTimer DetectInactivity, 1000


DetectInactivity()
{
	static idleEventCount := 0
	if A_TimeIdle > maxIdleTime
	{
		idleEventCount += 1
		MouseMove (idleEventCount&1) ? 5 : -5, 0, , "R"
	}
}
