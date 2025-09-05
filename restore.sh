#!/bin/sh

echo ===SEAHORSE KEYRING BACKUP TOOL - RESTORE===
echo
echo Keyring folder has been restored to:
echo /.local/share/keyrings/
cp -r  seahorse-backup-*/keyrings ~/.local/share/ 
date +"%Y-%m-%d" > ~/.local/share/keyrings/restore-date
echo 
echo 
./remove-old-keys.sh



