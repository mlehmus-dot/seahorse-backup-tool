#!/bin/bash

echo You can save just restored keyring -folder if need it later.

Backup="seahorse-backup-$(date +"%Y-%m-%d")"
echo 
read -p "Or do you want delete folder? (Y/N) " answer
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [[ "$answer" == "y" ]]; then 
rm -r $Backup
echo
echo Temporary bakcup folder has been deleted!
else mv $Backup saved-backups/
echo
echo Folder is saved to seahorse-backup-tool\saved-backups
exit
fi
