

Intro
-------

Easily switch your Workbench service from one server to another allowing you to seamlessly switch from an old machine to a new one.

*Note:**
 This article is only for migrating from different versions of Workbench 5 to the current version of Workbench 5. Workbench 4 does not support exportable keys (meaning that this procedure will not work when migrating from Workbench version 4.x to version 5.x).


###
 Migrating a Workbench Server

To successfully migrate your Workbench server, you must install Workbench on both the old and new machine, export and import the Workbench Registry, and export and import the Workbench Encrypted Key.

#####
 To migrate your Workbench server,


1. Install the latest version of Workbench on your current Workbench machine as well as the new machine.


######
 To export and import the Workbench Registry,


1. On the old machine, open the registry by going to
 **Start > Run > regedit**
 .
2. Navigate to
 **HKEY\_LOCAL\_MACHINE\SOFTWARE**
 .
3. Right-click on the Domo directory.
4. Export it to a file.
5. Copy the file to the destination computer.
6. Install Workbench on the destination computer, if it isn't already.
7. Open the exported file and Workbench will prompt you to import it.


######
 To export and import the Workbench Encrypted Key,


1. Open a command prompt as an Administrator.
2. Navigate to the Workbench installation directory.
3. Run the following command:
 `wb.exe export-key -n"keyExport"`
4. Copy the keyExport.dwk file that was created in the Workbench installation directory to the new machine.
5. Import the registry settings from the old Workbench machine.
6. Open a command prompt on the new machine.
7. Navigate to the Workbench installation directory.
8. Run the following command:
 `wb.exe import-key -n"keyExport"`
9. Move both files to the new Workbench machine using a secure file transfer protocol such as a thumb drive.


######
 Finishing Up


1. Restart Workbench and make sure all of the jobs have synced correctly.
2. Uninstall Workbench or turn off the Workbench Service on the old machine.


 This will prevent the same jobs from trying to execute at the same time. If you would like to keep a Workbench Server as a failover, simply turn off the Workbench Service on one of the machines.


