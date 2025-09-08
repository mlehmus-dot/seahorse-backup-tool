# seahorse-backup-tool
Password wallet (seahorse) backup and restore tool (Tested with: Linux Mint XFCE, Linux Mint Cinnamon. Linux MX Fluxbox, Linux RaspiOS Bullseye 11)
Please use with your own risk!

<b> ==BACKUP PASSWORDS==</b><br><br>
NOTICE: FORMAT YOUR USB STICK TO NTFS OR EXT FILESYSTEM!

1. Download folder "seahorse-backup-tool"

2. Unzip packed to USB STICK

3. Open terminal and navigate to seahorse-backup-tool -folder (GitHub zip-downloading might change name to <b>seahorse-backup-tool-main</b> - still working)

4. type: <pre>```chmod +x INSTALL.sh && ./INSTALL.sh```</pre>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# TO BACKUP SEAHORSE KEYRINGS (passwords only - NOT ssh keys, etc.)

Make sure you are still in USB-STICK/seahorse-backup-tool -folder.

To take backup type: <pre>```./backup.sh```</pre> 

5. NOW EJECT USB STICK FROM YOUR COMPUTER AND PLUG IT COMPUTER YOU WANT TO RESTORE PASSWORDS!
<br>
<br>
<b>==RESTORE PASSWORDS==</b><br>
<br>

Restoring passwords/keyrings:
		
1. Open terminal and navigate to USB-STICK/seahorse-backup-tool -folder

2. To restore passwords, type: <pre>```./restore.sh```</pre>

3. When passwords are restored. You can select keep or delete backup-folder:<br>
 If you select Y to yes = seahorse-backup-yyyy-mm-dd -folder will be moved to /seahorse-backup-tool/saved-backups/<br>
 If you select N to no =  backup will be removed from /seahorse-backup-tool -folder<br>
SELECTION DOESN'T AFFECT TO RESTORING PASSWORD. IT HAS ALREADY BE DONE!
<br>
4. Now reboot your OS - After that restoring is done!
<br><br>
<b>GOOD TO KNOW: SCRIPT RESTORES BACKUPS ONLY FROM MAIN FOLDER - NOT FROM SUBFOLDERS</b>
<br>
Restoring password uses only /seahorse-backup-tool -folder.<br><br>
So if there is spesific backup to restore, first: <br>
<b>Copy backup folder from /seahorse-backup-tool/saved-backups/ to /seahorse-backup-tool/ and run ./restore.sh</b><br>
<br>
SEAHORSE KEYRING PASSWORD NOT CHANGE AUTOMATICLY DURING THIS PROCESS! TO OPEN PASSWORD LISTING USE SAME PASSWORD THAN BEFORE UPDATE!
<br><b>SEAHORSE KEYRINGS PASSWORD = PASSWORD THAT SEAHORSE ASKS WHEN OPEN SAVED PASSWORDS KEYRING. This password can be changed by right-click it and select <i>change password<i>
