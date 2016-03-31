#!/bin/sh
open /Applications/Managed\ Software\ Center.app
launchctl stop com.myorg.connectshare.plist
launchctl unload /Library/LaunchAgents/com.myorg.connectshare.plist
rm /Library/LaunchAgents/com.myorg.connectshare.plist
srm "$0"
