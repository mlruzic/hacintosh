on run {input, parameters}
	tell application "Finder"
		set dir_path to quoted form of (POSIX path of (target of front window as alias))
	end tell
	CD_to(dir_path)
end run


on CD_to(theDir)
	tell application "iTerm"
		activate
		tell (create window with profile "Default")
		end tell
		tell current session of current window
			write text "cd " & theDir & ";clear;"
		end tell
	end tell
end CD_to
