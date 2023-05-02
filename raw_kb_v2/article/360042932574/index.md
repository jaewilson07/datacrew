

Intro
-------

You can install, update, repair, or uninstall Workbench.

*Note:**
 Workbench 5 is no longer available for install. Instead, you will need to install the newest version which is Workbench 5.1. For more information on Workbench 5.1, see

Installing Workbench 5.1

.

System Requirements
---------------------


* Windows Operating System


|  |  |
| --- | --- |
|
 Supported
  |
 Windows Server 2012, Windows Server 2012 R2, Windows Server 2016, Windows Server 2019


 Windows 8, Windows 8.1, Windows 10
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
 Minimum
  |
 Recommended
  |
| --- | --- | --- |
|
 CPU
  |
 Pentium 1 GHz or higher
  |
 1 CPU core per simultaneously running job.
  |
|
 RAM
  |
 64-bit system: 512 MB or more


 32-bit system: 512 MB
  |
 1 GB RAM per simultaneously running job.
  |
|
 Disk space
  |
 250 MB - 2 GB for application files and logs (though more may be required depending on the amount of data in your jobs)
  |
 60+GB free space on C: drive.
  |
* Internet connection


**Notes:**


* For additional information on hardware specifications please see the

.NET Framework system requirements page here.
* Typically Workbench is installed to

C:\Program Files\Domo\Workbench

on machines running Microsoft Windows.
* The Workbench installation program installs the following components if they do not already exist:


	+ Windows Installer 4.5
	+ Microsoft .NET Framework 4 Client Profile (x86 and x64)
* When you uninstall or reinstall the same major version of Workbench, your existing jobs and settings are preserved.
* The install process creates a Windows user group and adds the installing user to that group. Members of this group can run Workbench without being Windows administrators.
* Due to OAuth 2.0, each user is allowed 50 refresh tokens per client. This means that only 50 Workbench machines can be running at a time per user. If you set up more machines using the same set of credentials, you will likely run into problems while executing jobs.
* There are known UI issues with some virtualization platforms. While every effort is taken to ensure the greatest level of compatibility with physical and virtual environments, some variables may be out of Domo’s control.

Installing Workbench
----------------------

You can run the Workbench installation program to install Workbench. You can also update, repair, or uninstall Workbench.


**To install Workbench,**

. Ensure that system requirements are met.
2. Obtain the Workbench installation program by doing one of the following:

* In Domo, select

**> Admin**
	 , click
	 **More**
	 in the menu on the left, select
	 **Tool Downloads**
	 , then click the
	 **Download Domo Workbench**
	 button under the Workbench 5.0 section.
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
4. (Conditional) If prompted to elevate your privileges, log off of Windows and then back on. If a Windows Security Alert appears, click
 **Allow Access.**

After installing, the Workbench service starts.


 On Enterprise, Pro, and Server versions of Windows, the
 **Workbench Settings**
 dialog appears, and a "Domo Workbench Users" group is added to your Local Users and Groups in Windows. All users in this group can access Workbench on this machine whether or not they have administrative rights. Hence, any non-admin user who should be able to use Workbench on this machine should be added into this group. Note that group management tools are
 *only*
 available on Enterprise, Pro, and Server versions of Windows.

For information about configuring Workbench, see

Understanding the Workbench 5 User Interface

.


 For information about running the Workbench application, see

Running Workbench 5

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


