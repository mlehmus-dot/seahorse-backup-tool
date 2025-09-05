# seahorse-backup-tool
GNOME based password wallet (seahorse) backup and restore tool
USE AT YOUR OWN RISK

# ==TAKE BACKUP==

1a. Copy folder "seahorse-backup-tool" (inc. files: backup.sh, restore.sh, remove-old-keys.sh, INSTALL.sh and folder named: saved-backup)


2a. If you want copy passwords from computer A to computer B: Paste seahorse-backup-tool -folder to USB stick


3a. Open terminal and navigate to seahorse-backup-tool -folder

4a. type: chmod +x INSTALL.sh and then run installer typing: /.INSTALL.sh
	this should give execute permissions to other .sh files.
	IF NOT WORKING DO IT MANUALLY TYPING: chmod +x basckup.sh restore.sh remove-old-keys.sh

IF STILL NOT WORKING:  MOVE SEAHORSE-BACKUP-TOOL FROM USB STICK TO ~/seahorse-backup-tool/ and try repeat givin permissions: Navigate to ~/seahorse-backup-tool and in TERMINAL, type: chmod +x INSTALL.sh and then run installer typing: /.INSTALL.sh
OR IF NEEDED, DO IT MANUALY: navigate to ~/seahorse-backup-tool and in TERMINAL, type: 1) chmod +x basckup.sh restore.sh remove-old-keys.sh



TO BACKUP SEAHORSE KEYRINGS (passwords only - NOT ssh keys, etc.)

Type: ./backup.sh to run backup script
	This copies keyrings -folder from ~/local/share/keyrings to seahorse-backup-tool -folder making subfolder "seahorse-backup-yyyy-mm-dd" (example seahorse-backup-2025-09-05)

Now your passwords are save in seahorse-backup-tool -folder. You can keep folder in safe place to use it restoring passwords later. If re-installing OS, or want to use passwords on another computer THEN MOVE folder /seahorse-backup-tool to USB Stick.

--------------------------------------------------------------
If backuping went like it should, you get prompt:

===SEAHORSE KEYRING BACKUP TOOL - BACKUP===

Keyring folder has been copied temporary in this folder.

Now run /.restore.sh on that machine you want restore backups.
--------------------------------------------------------------

# ==RESTORE BACKUP==

You can restore or copy your passwords to another Linux computer (BE SURE THAT DISTRIBUTION RUNS seahorse (usually named: Passwords and keys) (tested in: Linux Mint XFCE, Cinnamon. Linux MX Fluxbox)

Restoring passwords/keyrings:

1b. Open terminal and navigate to /seahorse-backup-tool -folder

2b. Run restoring, type: ./restore.sh
	IF YOU GET ANY ERRORS MAKE SURE THAT ALL .sh -FILES ARE EXECUTABLE: chmod +x basckup.sh restore.sh remove-old-keys.sh (try step 4a if needed)

3b. Now it copies keyring -folder to ./local/share/ from /seahorse-backup-tool -folder

4b. When passwords are restored. You can select if you want still keep backup-folder in /seahorse-backup-tool -folder for later use.
 If you select Y to yes = seahorse-backup-yyyy-mm-dd -folder will be moved to /seahorse-backup-tool/saved-backups/
 If you select N to no =  seahorse-backup-yyyy-mm-dd -folder will be removed from /seahorse-backup-tool -folder

5b. Restart OS, log in again and show all restored passwords should be found in seahorse password wallet

THIS DOESN'T AFFECT TO RESTORING PASSWORD. IT HAS ALREADY BE DONE!

IF YOU CHOOSE TO NOT DELETE BACKUP -FOLDER AND RESTORE IT LATER TO ANOTHER OS: Navigate to /seahorse-backup-tool/saved-backups/ and move backup folder (seahorse-backup-yyyy-mm-dd) to /seahorse-backup-tool/

SCRIPT RESTORES BACKUP ONLY FROM FOLDER /seahorse-backup-tool/


--------------------------------------------------------------
If restoring backup went like it should, you get prompted:

===SEAHORSE KEYRING BACKUP TOOL - RESTORE===

<p>Keyring folder has been restored to:
/.local/share/keyrings/</p>
--------------------------------------------------------------


IF YOUR PASSWORD KEYRING IS PROTECTED WITH PASSWORD! AFTER RESTORING PASSWORDS USE SAME KEYRING PASSWORD THAT YOU USE WITH OS FROM WHERE YOU BACKUPPED PASWORDS/KEYRINGS
