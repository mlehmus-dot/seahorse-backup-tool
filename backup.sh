#!/bin/bash

echo ===SEAHORSE KEYRING BACKUP TOOL - BACKUP===

#Making temporary folder for backups
mkdir "$PWD/seahorse-backup-$(date +"%Y-%m-%d")"

#Copying keyring -folder to backup folder
cp -r ~/.local/share/keyrings/ "$PWD/seahorse-backup-$(date +"%Y-%m-%d")/"
echo
echo Keyring folder has been copied temporary in this folder.
echo
echo Now run /.restore.sh on that machine you want restore backups.
exit
