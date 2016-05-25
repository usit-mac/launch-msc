#!/bin/sh
DOMAIN=no.uio.usit.launch-msc
PLIST=${DOMAIN}.plist
THEPATH=/Library/LaunchAgents/${PLIST}

open /Applications/Managed\ Software\ Center.app
rm -f ${THEPATH}
srm "$0"
