# seahorse-backup-tool
GNOME based password wallet (seahorse) backup and restore tool
Please use with your own risk!

# ==TAKE BACKUP==
# NOTICE: FORMAT YOUR USB STICK TO NTFS OR EXT FILESYSTEM!

1a. Download folder "seahorse-backup-tool" (inc. files: backup.sh, restore.sh, remove-old-keys.sh, INSTALL.sh and folder named: saved-backup)

2a. Unzip packed example to ~/Download or direct to USB STICK

3a. Open terminal and navigate to seahorse-backup-tool -folder

4a. type: <pre>```chmod +x INSTALL.sh && ./INSTALL.sh```</pre>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# TO BACKUP SEAHORSE KEYRINGS (passwords only - NOT ssh keys, etc.)

Type: <pre>```./backup.sh```</pre> to run backup script
	This copies keyrings -folder from ~/local/share/keyrings to seahorse-backup-tool -folder making subfolder "seahorse-backup-yyyy-mm-dd" (example seahorse-backup-2025-09-05)

NOW EJECT USB STICK FROM YOUR COMPUTER AND PLUG IT COMPUTER YOU WANT TO RESTORE PASSWORDS!


# ==RESTORE BACKUP==

Restoring passwords/keyrings:
		
1b. Open terminal and navigate to ~/seahorse-backup-tool -folder

2b. Run restoring, type: <pre>```./restore.sh```</pre>
	IF YOU GET ANY ERRORS MAKE SURE THAT ALL .sh -FILES ARE EXECUTABLE: chmod +x backup.sh restore.sh remove-old-keys.sh (try step 4a if needed)

3b. Now it copies keyring -folder to ./local/share/ from /seahorse-backup-tool -folder

4b. When passwords are restored. You can select if you want still keep backup-folder in /seahorse-backup-tool -folder for later use.
 If you select Y to yes = seahorse-backup-yyyy-mm-dd -folder will be moved to /seahorse-backup-tool/saved-backups/
 If you select N to no =  seahorse-backup-yyyy-mm-dd -folder will be removed from /seahorse-backup-tool -folder

5b. Restart OS, log in again and show all restored passwords should be found in seahorse password wallet

THIS DOESN'T AFFECT TO RESTORING PASSWORD. IT HAS ALREADY BE DONE!

IF YOU CHOOSE TO NOT DELETE BACKUP -FOLDER AND RESTORE IT LATER TO ANOTHER OS: Navigate to /seahorse-backup-tool/saved-backups/ and move backup folder (seahorse-backup-yyyy-mm-dd) to /seahorse-backup-tool/

SCRIPT RESTORES BACKUP ONLY FROM FOLDER MAIN FOLDER - NOT FROM SUBFOLDERS

You can restore or copy your passwords to another Linux computer (BE SURE THAT DISTRIBUTION RUNS seahorse (usually named: Passwords and keys) (tested in: Linux Mint XFCE, Cinnamon. Linux MX Fluxbox)

--------------------------------------------------------------
If restoring backup went like it should, you get prompted:

===SEAHORSE KEYRING BACKUP TOOL - RESTORE===

<p>Keyring folder has been restored to:
./local/share/keyrings/</p>
--------------------------------------------------------------


IF YOUR PASSWORD KEYRING IS PROTECTED WITH PASSWORD! AFTER RESTORING PASSWORDS USE SAME KEYRING PASSWORD THAT YOU USE WITH OS FROM WHERE YOU BACKUPPED PASWORDS/KEYRINGS
