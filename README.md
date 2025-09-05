# seahorse-backup-tool
GNOME based password wallet (seahorse) backup and restore tool
Please use with your own risk!

# ==TAKE BACKUP==
# NOTICE: FORMAT YOUR USB STICK TO NTFS OR EXT FILESYSTEM!

1a. Download folder "seahorse-backup-tool" (inc. files: backup.sh, restore.sh, remove-old-keys.sh, INSTALL.sh and folder named: saved-backup)

2a. Unzip packed to USB STICK

3a. Open terminal and navigate to seahorse-backup-tool -folder

4a. type: <pre>```chmod +x INSTALL.sh && ./INSTALL.sh```</pre>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# TO BACKUP SEAHORSE KEYRINGS (passwords only - NOT ssh keys, etc.)

Type: <pre>```./backup.sh```</pre> to run backup script
	This copies keyrings -folder from: <b>~/local/share/keyrings<b>
    to: <b>seahorse-backup-tool -folder<b> making subfolder "seahorse-backup-yyyy-mm-dd" (example seahorse-backup-2025-09-05)

NOW EJECT USB STICK FROM YOUR COMPUTER AND PLUG IT COMPUTER YOU WANT TO RESTORE PASSWORDS!


# ==RESTORE BACKUP==

Restoring passwords/keyrings:
		
1b. Open terminal and navigate to USB-STICK/seahorse-backup-tool -folder

2b. Run restoring, type: <pre>```./restore.sh```</pre>

3b. Now it copies keyring -folder to ./local/share/ from /seahorse-backup-tool -folder

4b. When passwords are restored. You can select if you want still keep backup-folder in /seahorse-backup-tool -folder for later use.
 If you select Y to yes = seahorse-backup-yyyy-mm-dd -folder will be moved to /seahorse-backup-tool/saved-backups/
 If you select N to no =  seahorse-backup-yyyy-mm-dd -folder will be removed from /seahorse-backup-tool -folder
# SELECTION DOESN'T AFFECT TO RESTORING PASSWORD. IT HAS ALREADY BE DONE!

5b. Restart OS, log in again and show all restored passwords should be found in seahorse password wallet

# GOOD TO KNOW: SCRIPT RESTORES BACKUPS ONLY FROM MAIN FOLDER - NOT FROM SUBFOLDERS
Restoring password uses only /seahorse-backup-tool -folder.
So if there is spesific backup to restore, first: 
# Copy backup folder from /seahorse-backup-tool/saved-backups/ to /seahorse-backup-tool/ and run ./restore.sh


You can restore or copy your passwords to another Linux computer (BE SURE THAT DISTRIBUTION RUNS seahorse (usually named: Passwords and keys) (tested in: Linux Mint XFCE, Cinnamon. Linux MX Fluxbox)

# IF YOUR PASSWORD KEYRING IS PROTECTED WITH PASSWORD! AFTER RESTORING PASSWORDS USE SAME KEYRING PASSWORD THAT YOU USE WITH OS FROM WHERE YOU BACKUPPED PASWORDS/KEYRINGS
