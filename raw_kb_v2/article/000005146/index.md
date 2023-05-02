

Intro
-------


**Important:**
 We highly recommend that you install via Microsoft AppSource. Follow these links for

Domo for Office

and

Domo for Outlook

.

This installation guide shows you how to install the Domo add-ins for Microsoft 365 on Mac, Windows, and the web. If you are unable to install the add-ins, you may need to enable connected experiences in Microsoft Office. For detailed instructions on how to do this, see

Microsoft's documentation

.


 Use the following links to navigate to the tasks in this guide:

 Install Excel, PowerPoint, and Word for Mac
* Install Outlook for Mac
* Install Excel, PowerPoint, and Word for Microsoft 365 for the web
* Install Outlook for Microsoft 365 for the web
* Install Excel, PowerPoint, and Word for Windows
* Install Outlook for Windows

Install Excel, PowerPoint, and Word for Mac
-----------------------------------------------

To streamline the installation for Mac, we provide three scripts that you can run in Terminal to prepare the add-ins for installation. These scripts retrieve a configuration file and place it in a folder where Microsoft 365 expects to find it it to be located. Although you can retrieve and place the files manually, these commands do it for you.

. Open Terminal by pressing
 **Command + Space**
 , typing "terminal" into the search bar, and then pressing
 **Enter**
 .
2. Follow these links to the scripts on GitHub:
	* Excel
	* PowerPoint
	* Word
3. Copy the scripts for the Microsoft products you are using and paste them into Terminal.
4. Press
 **Enter**
 to execute each script before pasting the next.
5. Open the Microsoft 365 app that you ran the script for.
6. Go to the
 **Insert**
 tab of the ribbon at the top of the app.
7. Select the down arrow next to
 **My Add-ins**
 .


 The
 **My Add-ins**
 menu displays.
8. Under
 **Developer Add-ins**
 , select
 **Domo.**


 If the add-in installs successfully, the
 **Domo**
 tab displays in the ribbon.

Install Outlook for Mac
---------------------------


1. To download the add-in manifest file for Outlook, click this link:

https://extensions.domo.com/office365/addins/manifest/outlook-extensions-domo-manifest.xml

After you click the link, it loads in a browser.
2. Right-click the page that loads and select
 **Save As**
 . Save the file to your computer.
3. Open Outlook.
4. Select the

meatball menu in the ribbon at the top of the app.
5. Select
 **Get Add-ins**
 .
6. Select
 **My Add-ins**
 .
7. Select
 **Add a custom add-in**
 .
8. Select
 **Add from File...**


 A file browser opens.
9. Navigate to and select the file you saved in the second step of this task.
10. Select
 **Open**
 .
11. Select
 **Install**
 .

Install Excel, PowerPoint, and Word for Microsoft 365 for the Web
---------------------------------------------------------------------


1. To download the add-in manifest file for the program you want to install, click the corresponding link below.


 After you click a link, it loads in a browser.
	* Excel:

 https://extensions.domo.com/office365/addins/manifest/excel-extensions-domo-manifest.xml
	* PowerPoint:

 https://extensions.domo.com/office365/addins/manifest/ppt-extensions-domo-manifest.xml
	* Word:

 https://extensions.domo.com/office365/addins/manifest/word-extensions-domo-manifest.xml
2. Right-click


 the page that opens and select
 **Save As**
 . Save the file to your computer.
3. Log in to

https://office.com

.
4. Select your program from the left menu bar.
5. Create a new file for the program you selected.


 You are redirected to the app for the program you selected in the fourth step.
6. In the ribbon at the top of the app, select
 **Insert**
 .
7. Select
 **Office Add-ins**
 .
8. In the My Add-ins tab, select
 **Upload My Add-in**
 .
9. Select
 **Browse**
 .
10. Navigate to and select the file you saved in the second step of this task.
11. Select the file and click
 **Open**
 .
12. Click
 **Upload**
 .
13. Repeat these steps for each Office program you would like to install the add-in for.

Install Outlook for Microsoft 365 for the Web
-------------------------------------------------


1. To download the add-in manifest file for Outlook, click this link:

https://extensions.domo.com/office365/addins/manifest/outlook-extensions-domo-manifest.xml

After you click the link, it loads in a browser.
2. Right-click the page that loads and select
 **Save As**
 . Save the file to your computer.
3. Log in to your email at

https://outlook.office.com/

.
4. Select
 **New message**
 to create a new email.
5. At the bottom of the new email, to the right of
 **Send**
 , select the

meatball menu.
6. Select
 **Get Add-ins**
 .
7. Select
 **My Add-ins**
 .
8. Select
 **Add a custom add-in**
 .
9. Select
 **Add from File...**


 A file browser opens.
10. Navigate to and select the file you saved in the second step of this task.
11. Select
 **Open**
 .
12. Select
 **Install**
 .

Install Excel, PowerPoint, and Word for Windows
---------------------------------------------------

To use the add-ins for Excel, PowerPoint, and Word in Windows, you need to download the add-in manifest files, add the manifests to the Trust Center, and then enable the add-ins. These three tasks are described below.

##
 Download and Prepare Manifest Files


1. To download the add-in manifest file for the program you want to install, click the corresponding link below.


 After you click a link, it loads in a browser.
	* Excel:

 https://extensions.domo.com/office365/addins/manifest/excel-extensionpps-domo-manifest.xml
	* PowerPoint:

 https://extensions.domo.com/office365/addins/manifest/ppt-extensions-domo-manifest.xml
	* Word:

 https://extensions.domo.com/office365/addins/manifest/word-extensions-domo-manifest.xml
2. Open File Explorer.
3. Create a new file folder on your local machine.


**Important:**
 The folder name must not contain any spaces in order for the add-in to display in the folder. For example, use “sharedfolder,” not “shared folder.”
4. Place all of the manifest files you downloaded into the new folder.
5. Right-click the folder you created and select
 **Properties**
 .


 A dialog displays.
6. Select the
 **Sharing**
 tab of the dialog.
7. Select
 **Share**
 .


 The
 **Network access**
 dialog displays.
8. In the dialog, add yourself and any other users or groups you want to share your add-in with.


**Note:**
 You must have at least Read/Write permission to view the folder.
9. After you have added all the recipients, select
 **Share**
 .


 Confirmation that your folder is shared displays.
10. From the sharing confirmation, note the full network path that displays immediately after the folder name. You can right-click to copy it. You need to enter this value as the Catalog URL in the next task.
11. Select
 **Done**
 to close the
 **Network access**
 dialog.
12. Close the
 **Properties**
 dialog.


###


 Add the Manifest to the Trust Center


**Note:**
 You need to perform this task for each of the three Microsoft 365 apps.


1. Open the Office app you want to work in.
2. Select
 **File**
 in the ribbon at the top of the app.
3. Select
 **Options**
 .
4. Select
 **Trust Center**
 .
5. Select
 **Trust Center Settings**
 .
6. Select
 **Trusted Add-in Catalogs**
 .
7. In the
 **Catalog URL**
 field, paste the full network path to the folder that you shared in the previous task.


**Note:**
 If you did not get the full network path when you shared the folder, you can get it from the folder's
 **Properties**
 dialog.
8. Select
 **Add catalog**
 .
9. Select the
 **Show in Menu**
 checkbox for the item you added.
10. Select
 **OK**
 .


 The
 **Trust Center**


 dialog closes.
11. Restart the Office app.


###


 Enable the Add-In


1. In the Office app you are working in, go to the
 **Insert**


 tab in the ribbon at the top of the window.
2. Select
 **My Add-ins**
 .


 A dialog opens.
3. In the dialog, select
 **Shared Folder**
 .
4. Select
 **Domo**
 .
5. Click
 **Add**
 .


 Repeat the

Add the Manifest to the Trust Center

and

Enable the Add-in

tasks for the remaining Office apps.

Install Outlook for Windows
-------------------------------


1. To download the add-in manifest file for Outlook, click this link:

https://extensions.domo.com/office365/addins/manifest/outlook-extensions-domo-manifest.xml

After you click the link, it loads in a browser.
2. Right-click the page that loads and select
 **Save As**
 . Save the file to your computer.
3. Open Outlook.
4. From the ribbon at the top of the app, select
 **Home**
 >
 **Get Add-ins**
 .


 A dialog displays.
5. In the dialog, select
 **My Add-ins**
 .
6. Select
 **Add a custom add-in**
 >
 **Add from File...**


 A file browser opens.
7. Navigate to and select the file you saved in the second step of this task.
8. Select
 **Open**
 .
9. Select
 **Install**
 .


