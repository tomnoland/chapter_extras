#!/bin/sh
#####################################################################################
###
###	Run Finder and open folder
###
#####################################################################################

FOLDER=\
.
./resources
$CONTAINING_FOLDER


APPLICATION=/System/Library/CoreServices/Finder.app
/usr/bin/open -a $APPLICATION $FOLDER

#####################################################################################