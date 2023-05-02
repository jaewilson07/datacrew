

Intro
-------

You can move your Workbench service from one server to another, allowing you to efficiently transition from an current machine to a new one.

*Note:**
 This article applies only to migrating from different versions of Workbench 5 to the current version of Workbench 5. Workbench 4 does not support exportable keys, which means that this procedure does not work when migrating from Workbench version 4.x to version 5.x.

Migrate a Workbench Server
----------------------------

To successfully migrate a Workbench server, you must install Workbench on both the current and new machines, export and import the Workbench registry, and then export and import the encrypted Workbench key. These steps are described in their own sections below.

##
 Install Workbench

Install the latest version of Workbench on both your current Workbench machine and the new machine. See our article about

Installing Workbench 5

for instructions.

##


 Export and Import the Workbench Registry


1. On the current


 machine, open the
 **Run**
 dialog.
2. In the
 **Open**
 field, enter "regedit.exe", and then select
 **OK**
 .


 The
 **Registry Editor**
 opens.
3. In the
 **Registry Editor**
 , navigate to
 **HKEY\_LOCAL\_MACHINE\SOFTWARE**
 .
4. Right-click the Domo directory and choose
 **Export**
 to save the directory as a file.
5. Copy the file to the new machine.
6. Install Workbench on the new machine if it isn't already installed.
7. Open the exported file.


 Workbench prompts you to import the file.


###
 Export and Import the Workbench Encrypted Key

Before exporting and importing the encrypted Workbench key, you must first

export and import the Workbench registry

.

. On the current machine, open a command prompt as an administrator.
2. Navigate to the Workbench installation directory. The default location for Workbench is

``
C:\Program Files\Domo\Workbench
```
3. Run the following commands:

``
cd C:\Program Files\Domo\Workbench\
```


```
wb.exe import-key -n "keyExport.dwk"
```
4. Copy the keyExport.dwk file created by the Workbench installation directory to the new machine.
5. On the new machine, import the registry settings from the current Workbench machine.
6. Open a command prompt as an administrator.
7. Navigate to the Workbench installation directory. The default location for Workbench is provided in the second step.
8. Run the following commands:

``
cd C:\Program Files\Domo\Workbench\
```


```
wb.exe import-key -n "keyExport.dwk"
```

Final Steps
-------------


1. Restart Workbench and make sure that all of the jobs have synced correctly.
2. Uninstall Workbench or turn off the Workbench service on the current machine. This prevents the same jobs from trying to execute at the same time.
3. (Optional) If you want to keep a Workbench server as a failover, turn off the Workbench service on one of the machines.


