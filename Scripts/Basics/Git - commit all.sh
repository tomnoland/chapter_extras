#!/bin/sh
#####################################################################################
###
###	Run Chrome and open www.bouldervolleyball.org
###
#####################################################################################


################################################################################
###
###	INPUT BOX 
###	
################################################################################

#   http://stackoverflow.com/questions/9180476/how-to-prompt-a-user-for-a-name-to-create-a-folder-bash-shell-script

while :; do # Loop until valid input is entered or Cancel is pressed.
    STRING=$(osascript -e 'Tell application "System Events" to display dialog "Enter the project name:" default answer ""' -e 'text returned of result' 2>/dev/null)
    if (( $? )); then exit 1; fi  # Abort, if user pressed Cancel.
    STRING=$(echo "$STRING" | sed 's/^ *//' | sed 's/ *$//')  # Trim leading and trailing whitespace.
    if [[ -z "$STRING" ]]; then
        # The user left the project name blank.
        osascript -e 'Tell application "System Events" to display alert "You must enter a non-blank project name; please try again." as warning' >/dev/null
        # Continue loop to prompt again.
    else
        # Valid input: exit loop and continue.
        break
    fi
done

###################################################################################

GIT_COMMIT_MESSAGE=$STRING


git add .
git commit -m "$GIT_COMMIT_MESSAGE"
git push origin master


# Open a new Mac OS X terminal window with the command given
# as argument.
#
# - If there are arguments and the first one is not a directory,
#   the new window will be opened in the current directory and
#   then the arguments will be executed as command.
#
# Written by Marc Liyanage <http://www.entropy.ch>
#
# Version 1.0
#



COMMAND="cd `pwd`; git add .; git commit -m \"$GIT_COMMIT_MESSAGE\"; git push origin master"

osascript 2>/dev/null <<EOF
    tell application "Terminal"
        activate
        do script with command "$COMMAND $EXIT"
    end tell
EOF

###################################################################################






I