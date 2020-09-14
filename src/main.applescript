-- Finder Tell Block
tell application "Finder"
		if exists Finder window 1 then
				set currentDir to target of Finder window 1 as alias
		else
				set currentDir to desktop as alias
		end if
end tell

set cd to POSIX path of currentDir

log cd

-- Open application
do shell script "open -b '__APP__' '" & cd & "'"
