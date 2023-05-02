


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

You can install, update, repair, or uninstall Workbench.

*Training Video - Installing Workbench 4**

Learn how to install Workbench 4 on your machine (Windows only).


 System requirements
---------------------


* Windows Operating System


|  |  |
| --- | --- |
|
 Supported
  |
 Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows Server 2016


 Windows 8.1, Windows 7, Windows 10
  |


 Both 32-bit and 64-bit versions are supported. You are no longer asked to choose a version, as Workbench determines the most appropriate version at runtime.
* Administrative access to the Windows Operating System


 To install and run Workbench, you
 *must*
 have administrator access to the machine.


* Hardware


|
 Element
  |
 Description
  |
| --- | --- |
|
 CPU
  |
 Pentium 1 GHz or higher
  |
|
 RAM
  |
 64-bit system: 512 MB or more


 32-bit system: 512 MB
  |
|
 Disk space
  |
 250 MB minimum, 2 GB recommended (though more may be required depending on the amount of data in your jobs)
  |
* Internet connection


**Notes:**


* Typically Workbench is installed to

C:\Program Files\Domo\Workbench

on machines running Microsoft Windows.
* The Workbench installation program installs the following components if they do not already exist:


	+ Windows Installer 4.5
	+ Microsoft .NET Framework 4 Client Profile (x86 and x64)
* When you uninstall or reinstall the same major version of Workbench, your existing jobs and settings are preserved.
* New to Workbench 4.5, the install process creates a Windows user group and adds the installing user to that group. Members of this group can run Workbench without being Windows administrators.

Installing Workbench
----------------------

You can run the Workbench installation program to install Workbench. You can also update, repair, or uninstall Workbench.


**To install Workbench,**

. Ensure that system requirements are met.
2. Obtain the Workbench installation program by doing one of the following:

* In Domo, select

**> Data Center**
	 , click
	 **On Premise**
	 in the toolbar along the top of the window, then click the
	 **Download for Windows**
	 button for your desired version in the box on the right side of the screen.


	**Tip:**
	 You can also open this page from anywhere in Domo by selecting

 in the app toolbar and selecting
	 **Data > On Premise**
	 .
	* Contact a Domo Customer Success Manager or Technical Consultant.

**Note:**
	 If you
	 *cannot*
	 download the Workbench installation program (perhaps getting an error message indicating that downloading did not succeed or that the operation has timed out), have your system administrator ensure that the IP address where you are downloading the Workbench installation program (for example,

 184.73.184.86

 ) is not being blocked.
3. Run the Workbench installation program, then follow its instructions.

*Tip:**
 Ensure that any anti-virus protection software does
 *not*
 block or sandbox the Workbench installation program


---


**Note:**
 If you
 *cannot*
 install or run Workbench, have your system administrator ensure that you have administrator access to your machine.
4. (Workbench 4.5 only) When prompted to elevate your privileges, log off of Windows and then back on. If a Windows Security Alert appears, click
 **Allow Access.**

After installing, the Workbench service starts and the
 **Workbench Settings**
 dialog appears. New to Workbench 4.5, a "Domo Workbench Users" group is added to your Local Users and Groups in Windows. All users in this group can access Workbench on this machine whether or not they have administrative rights. Hence, any non-admin user who should be able to use Workbench on this machine should be added into this group.

For information about configuring Workbench, see

Understanding the Workbench 4 User Interface

.


 For information about running the Workbench application, see

Running Workbench 4

.


**To update Workbench,**

. In the Windows system taskbar, right-click the Workbench service icon, then click
 **Check for Updates**
 .


 A dialog appears.
2. (Conditional) If an update is available and you want to update the application, click
 **Update**
 .


 After the upgrade, Workbench restarts as necessary.

*Tip:**
 Ensure that any anti-virus protection software does
 *not*
 block or sandbox the Workbench installation program.
3. (Conditional) If an update is available and you do
 *not*
 want to update the application, click
 **Don't Update**
 .


 If you do
 *not*
 want to be prompted again to update this version, click
 **Don't prompt for this version again**
 .

*To repair Workbench,**

. In the Windows Control Panel (

Control Panel\Programs\Programs and Features

), select
 **Domo Workbench**
 , then click
 **Repair**
 .

*To uninstall Workbench,**

. (Optional) Remove log files, which are typically located in

C:\ProgramData\DomoWorkbench

.
2. In the Windows Control Panel (

Control Panel\Programs\Programs and Features

), select
 **Domo Workbench**
 , then click
 **Uninstall**
 .


