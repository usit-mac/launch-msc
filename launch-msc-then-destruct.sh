#!/bin/sh

WORK_D=no.uio.usit.launch-msc.plist
PATH=/Library/LaunchAgent

open /Applications/Managed\ Software\ Center.app
launchctl stop ${WORK_D}
launchctl unload ${PATH}/${WORK_D}
rm ${PATH}/${WORK_D}
srm "$0"
