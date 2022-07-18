#Requires AutoHotkey v2.0-beta

SetTimer DetectInactivity, 1000

DetectInactivity()
{
	static idleEventCount := 0
	if A_TimeIdle > 60000
	{
		idleEventCount += 1
		MouseMove (idleEventCount&1) ? 1 : -1, 0, , "R"
	}
}
