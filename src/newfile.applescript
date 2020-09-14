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

-- Get file name
set theResponse to display dialog "What should we name your file?" default answer "" buttons {"Cancel", "Continue"} default button "Continue"

-- Create file
do shell script "cd " & cd & "; touch " & (text returned of theResponse)
