#!/bin/sh

DOMAIN=no.uio.usit.launch-msc
PLIST=${DOMAIN}.plist
THEPATH=/Library/LaunchAgents/${PLIST}

open /Applications/Managed\ Software\ Center.app
launchctl stop ${THEPATH}
rm ${THEPATH}
srm "$0"
