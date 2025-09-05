# seahorse-backup-tool
Password wallet (seahorse) backup and restore tool
Please use with your own risk!

# ==TAKE BACKUP==
NOTICE: FORMAT YOUR USB STICK TO NTFS OR EXT FILESYSTEM!

1. Download folder "seahorse-backup-tool" (inc. files: backup.sh, restore.sh, remove-old-keys.sh, INSTALL.sh and folder named: saved-backup)

2. Unzip packed to USB STICK

3. Open terminal and navigate to seahorse-backup-tool -folder

4. type: <pre>```chmod +x INSTALL.sh && ./INSTALL.sh```</pre>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# TO BACKUP SEAHORSE KEYRINGS (passwords only - NOT ssh keys, etc.)

Type: <pre>```./backup.sh```</pre> to run backup script
	it copies keyrings -folder from: <b>~/local/share/keyrings</b>
    to: <b>seahorse-backup-tool -folder</b> making subfolder "seahorse-backup-yyyy-mm-dd" (example seahorse-backup-2025-09-05)

5. NOW EJECT USB STICK FROM YOUR COMPUTER AND PLUG IT COMPUTER YOU WANT TO RESTORE PASSWORDS!


# ==RESTORE BACKUP==

Restoring passwords/keyrings:
		
1. Open terminal and navigate to USB-STICK/seahorse-backup-tool -folder

2. To restore passwords, type: <pre>```./restore.sh```</pre>
	it copies keyring -folder to <b>./local/share/</b> from <b>/seahorse-backup-tool</b> -folder

3. When passwords are restored. You can select if you want still keep backup-folder in /seahorse-backup-tool -folder for later use.
 If you select Y to yes = seahorse-backup-yyyy-mm-dd -folder will be moved to /seahorse-backup-tool/saved-backups/
 If you select N to no =  seahorse-backup-yyyy-mm-dd -folder will be removed from /seahorse-backup-tool -folder
SELECTION DOESN'T AFFECT TO RESTORING PASSWORD. IT HAS ALREADY BE DONE!

4. Restart OS, log in again and show all restored passwords should be found in seahorse password wallet.

# GOOD TO KNOW: SCRIPT RESTORES BACKUPS ONLY FROM MAIN FOLDER - NOT FROM SUBFOLDERS
Restoring password uses only /seahorse-backup-tool -folder.
So if there is spesific backup to restore, first: 
# Copy backup folder from /seahorse-backup-tool/saved-backups/ to /seahorse-backup-tool/ and run ./restore.sh


seahorse founds in GNOME desktop. Tested also with: Linux Mint XFCE, Mint Cinnamon. Linux MX Fluxbox)

IF YOUR PASSWORD KEYRING IS PROTECTED WITH PASSWORD! AFTER RESTORING PASSWORDS USE SAME KEYRING PASSWORD THAT YOU USE WITH OS FROM WHERE YOU BACKUPPED PASWORDS/KEYRINGS
