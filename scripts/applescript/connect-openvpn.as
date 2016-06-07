tell application "Tunnelblick"
	disconnect "{NAME}"
	get state of first configuration where name = "{NAME}"
	repeat until result = "DISCONNECTED"
		delay 1
		get state of first configuration where name = "{NAME}"
	end repeat
end tell
