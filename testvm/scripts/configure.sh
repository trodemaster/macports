#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
shopt -s nullglob nocaseglob

sleep 99999
# approve kenel extensions

echo "INSERT or REPLACE INTO access VALUES('kTCCServiceMicrophone','com.microsoft.SkypeForBusiness',0,1,1,NULL,NULL,NULL,'UNUSED',NULL,0,1541440109)" | sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db

# update accessablity db


EG7KH642X6|com.vmware.kext.VMwareGfx|1|VMware, Inc.|1
EG7KH642X6|com.vmware.kext.vmhgfs|1|VMware, Inc.|1


sudo defaults write /Library/Preferences/com.apple.loginwindow.plist autoLoginUser packer

sudo plutil -replace autoLoginUser -string packer /Library/Preferences/com.apple.loginwindow.plist

sudo /usr/libexec/PlistBuddy -c "Set autoLoginUser packer" /Library/Preferences/com.apple.loginwindow.plist


#!/bin/sh -e
/Volumes/Macintosh\ HD/usr/bin/sqlite3 /Volumes/Macintosh\ HD/var/db/SystemPolicyConfiguration/KextPolicy 'delete from kext_policy where team_id="TEAMID1234";'
/Volumes/Macintosh\ HD/usr/bin/sqlite3 /Volumes/Macintosh\ HD/var/db/SystemPolicyConfiguration/KextPolicy 'delete from kext_load_history_v3 where team_id="TEAMID1234";'
