

Intro
-------


 Starting in Workbench 5.1 you can now create a complete backup of your Workbench settings to install on a new computer. This allows you to migrate your settings and accounts exactly as they are from one machine to another. To do this you have to be running Workbench as a local admin on the windows machine.


**Note:**
 Additionally, it's still best practice to back up your jobs separately. The process of backing up your Workbench 5.1 settings does not directly back up individual Workbench 5.1 jobs.


 To learn more about backing up your Workbench jobs, refer to the

Backing Up Workbench 5.1 jobs

article.

Creating a Workbench 5.1 Back Up
----------------------------------


1. Click on the
 **ellipses**
 (More) icon.
2. Click
 **Settings**
 .
3. In the
 **Path**
 field, type the file path or click the
 **Browse...**
 button to select a file path.
4. Type the desired name for the .wbf file.
5. Click
 **Save**
 . After you’ve selected where you want to save the backup you can create a passcode used for importing the data into Workbench.
6. In the
 **Passcode**
 field, Type the desired passcode for the .wbf file or, click
 **Generate and copy**
 to have Workbench 5.1 automatically create and copy a passcode for you.

The passcode must be at least 20 characters in length and contain at least 1 uppercase character(s), 1 lowercase character(s), 1 number(s), and 1 symbol(s).
7. Click
 **Create.**
 If done correctly, you will see a message in green saying success. This creates an encrypted .wbf file, a proprietary format that can be used to quickly restore your workbench settings on a new machine.

The backup contains credentials and other potentially sensitive details used in your Workbench Jobs, The passcode is used to decrypt that information upon import back in to workbench, so keep it safe.


 Stopping Workbench 5.1
------------------------


 After creating the backup, you will need to turn off the workbench service on the original machine. Running multiple instances of workbench pointed to the same agent in Domo, will result in an error.


 To stop the service:


1. Click on the
 **upward facing arrow**
 on the bottom right of your Windows taskbar.
2. Right click the
 **Workbench**
 icon
 **.**
3. Select
 **Service**
 .
4. then click
 **Stop**
 .


 If you no longer need Workbench on the existing machine you can uninstall it through the windows control panel.

Importing Workbench 5.1 Settings
----------------------------------

If you lose your Workbench 5.1 settings for any reason, and still have the back up .wbf file you created for your Workbench 5.1 settings, you can import that file using Workbench 5.1 to restore your settings.

. Click on the
 **ellipses**
 (More) icon.
2. Click
 **Settings**
 .
3. Click
 **Import Backup**
 .
4. Click the
 **Browse...**
 button to locate the .wbf file with your Workbench 5.1 settings.
5. In the
 **Passcode**
 field, paste or type the Passcode associated with your .wbf file.
6. Click
 **Import**
 . If successful, there will be a message in green saying success.

You can learn more about backing up your Workbench 5.1 settings by watching this video.

