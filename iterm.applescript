on run {input, parameters}
	tell application "Finder"
		set _file to first item of input
		set _path to quoted form of (POSIX path of _file)
	end tell
	openTerm(_path)
end run

on openTerm(theDir)
	tell application "iTerm"
		activate
		tell (create tab with profile "Default")
		end tell
		tell current session of current window
			write text "cd " & theDir & ";clear;"
		end tell
	end tell
end openTerm
