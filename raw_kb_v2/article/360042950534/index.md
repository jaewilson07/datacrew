


**Important:**
 This topic is for INTERNAL USE ONLY. Do NOT share any of the content in this page with customers!

There are two approaches to getting data from Oracle Hyperion/Essbase and into Domo. The first is to have the customer run jobs to extract the data from the dabase, put it into a CSV file, and use Workbench to upload it to Domo. If that's what you're going to do, then you can stop reading now.


 If, however, you want Workbench to connect directly to the Hyperion/Essbase database, then you have two options for connecting. You can either run Workbench directly on the Hyperion/Essbase server (assuming it's installed on a Windows server), or run Workbench on a different workstation/server. In the case of the former, the ODBC driver you need is already installed, and it's called
 **DataDirect <version number> Oracle Wire Protocol**
 . Configuring the ODBC driver is beyond the scope of this document. Sorry. You'll have to figure that out on your own.

. The first thing you'll need to do is go to this page:

http://www.oracle.com/technetwork/middleware/bi-enterprise-edition/downloads/bi-downloads-2537285.ht...
2. Next, accept the license agreement and download
 **File 2**
 for Microsoft Windows x86-64-bit.
3. Unzip the file you downloaded,

obi\_WINDOWSX64\_11.1.1.9.0\_2of5.zip

, to the location of your choice. For purposes of this demonstration, we'll assume you unzipped it to

c:\OBIEE.
4. Open a command prompt and navigate to the

DataFiles

directory of the files you unzipped. E.g:


`cd /d c:\OBIEE\bishiphome\Disk2\stage\Components\oracle.bi.bifndnepm\11.1.1.9.0\1\`


`DataFiles`


5. Unzip the

\common\ODBC

directory from

filegroup1.jar

to a location of your choosing. For purposes of this demonstration, we'll assume

c:\DataDirect


`unzip -j filegroup1.jar common\ODBC\* -d c:\DataDirect`

. Make a backup of your Windows Registry by opening the Windows Registry Editor, right-clicking on
 **Computer**
 , and selecting
 **Export**
 .
7. You will need to rename

DataDirect.reg.txt

to

DataDirect.reg

.
8. (Optional) If you unzipped

filegroup1.jar

to a location other than

c:\DataDirect

, you will need to edit

DataDirect.reg

so that it reflects this new path. Right-click on the file

DataDirect.reg

and select
 **Edit**
 , change the paths, and save the file. Don't screw up. Keep in mind that backspaces must be escaped with a backspace (\\). Single (\) and triple backspaces (\\\) are not your friends here. Don't let them stay in your file.
9. Double-click the file

DataDirect.reg

. When asked if you want to continue, click
 **Yes**
 .


 Y

ou should now be able to add a 64-bit ODBC Data Source. If you get an error, it's because you modified DataDirect.reg and there is now a typo or incorrect path in the registry.

0. Open Windows Registry Editor and fix the errors in

HKEY\_LOCAL\_MACHINE\SOFTWARE\ODBC\ODBCINST.INI

. A correct entry will look similar to this:


 That's it. It's now on you to configure the 64-bit ODBC datasource. May the Force be with you.

james.blevins@domo.com


 datadirect.reg.txt


