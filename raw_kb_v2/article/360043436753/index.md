

Intro
-------

Microsoft OneDrive for Business is an online file sharing and personal cloud content management service for businesses. For more information about the OneDrive API, see

https://msdn.microsoft.com/en-us/lib.../dn659752.aspx

.


 You connect to your OneDrive for Business account in the Data Center. This topic discusses the fields and menus that are specific to the OneDrive for Business connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your OneDrive for Business account and create a DataSet, you must have the following:

 A OneDrive for Business client secret
* A Microsoft username and password

If you are using the Microsoft Graph, you will need to set your redirect\_uri to a different URL depending on whether you are using a newly registered or existing app.

 If you are using a
 *newly registered*
 app, set your redirect\_uri to

https://oauth.domo.com

/api/data/v1/oauth/providers/onedrive-business/exchange


 .
* If you are using an
 *existing*
 app, set your redirect\_uri to

https://oauth.domo.com

/api/data/v1/oauth/providers/microsoft-onedrive-business/exchange


 .

For instructions about obtaining a OneDrive for Business client ID, client secret, and registering your app using SharePoint Server 2016, see

https://dev.onedrive.com/app-registration-server.htm

.


 For instructions about registering your app for Microsoft Graph, see

https://docs.microsoft.com/en-us/onedrive/app-registration.htm

Connecting to Your OneDrive for Business Account
--------------------------------------------------

This section enumerates the
 **Permission**
 settings within Microsoft needed for Domo access as well as options in the
 **Credentials**
 and
 **Details**
 panes in the OneDrive for Business Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Microsoft Permissions

Having the correct permissions within Microsoft allows Domo to effectively access your data using the Microsoft OneDrive for Business connector. The steps required for setting these permissions depend on when your app was registered. Newly registered apps
 *cannot*
 access the Office 365 discovery service. Existing apps can use this service until November 1st, 2019.

###
 Setting Permissions for Existing Apps

These steps pertain only to already existing apps. You must follow these steps for each API:

. In your Microsoft Azure portal, navigate to Required permissions under API Access. Select Office 365 SharePoint Online under API, then in Delegated Permissions, check the boxes for
 **Read and write user files**
 and
 **Read user files**
 .


 2. Next, under API, select Windows Azure Active Directory. Under Delegated Permissions, check the box for
 **Read directory data**
 .

3. Lastly, under API, select Microsoft Graph. Under Delegated Permissions, check the box for
 **Read all files that user can access**
 .


####
 Setting Permissions for New Apps

These steps pertain only to new apps.

. Navigate to

https://apps.dev.microsoft.com/

and sign in.
2. Click
 **Add an app**
 .
3. Name the app.
4. Click
 **Create**
 .

The APP ID that appears is the ClientID.
5. Click
 **Generate new password**
 .


 Be sure to SAVE THIS—you will not see it again. This is your Secret.
6. Click
 **OK**
 .
7. Click
 **Add platform**
 .
8. Select
 **Web**
 .
9. In the
 **Redirect URLs**
 field, enter the URL

https://oauth.domo.com/api/data/v1/oauth/providers/microsoft-onedrive-business/exchange

.
10. Click
 **Save**
 .
11. Add permissions for

Files.Read.All

.
12. Click
 **Save**
 .
13. Go to Domo and use the ClientID and Secret to connect.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your OneDrive for Business account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your OneDrive for Business client ID.
  |
|
 Client Secret
  |
 Enter your OneDrive for Business client secret.
  |


 Once you have entered these credentials, you are taken to the Microsoft login screen, where you can enter the username and password for your Microsoft account. After you successfully connect, you can use the same account any time you go to create a new OneDrive for Business DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the OneDrive for Business report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Children
  |
 Lists the children of the item with the specified folder or path.
  |
|
 Default Drive
  |
 Returns metadata about the authenticated user's default drive in OneDrive
  |
|
 Download File
  |
 Downloads a file into Domo as a DataSet. You specify the file type and file/folder or path, along with other information.
  |
|
 Download Shared File
  |
 Downloads a Shared file into Domo as a DataSet. You specify the file type and file/folder or path, along with other information.
  |
|
 Drive By Id
  |
 Lists drives for a selected drive ID.
  |
|
 Drives
  |
 Lists the available drives for the authenticated user.
  |
|
 Properties
  |
 Returns properties for the item with the specified file/folder or path.
  |
|
 Recent Items
  |
 Returns a list of items that have been recently used by the authenticated user. This list includes items that are in the user's drive as well as items they have access to from other drives.
  |
|
 Shared Items
  |
 Lists items that are shared with the authenticated user.
  |

|
|
 Addressing
  |
 Specify whether the addressing for the item is ID-based (in which case, you specify a file or folder name) or path-based (in which case, you specify the file path).
  |
|
 Path
  |
 Enter the relative path of the file or folder you want to retrieve a report for. For example:

/Documents/test.csv
  |
|
 File/Folder Name
  |
 Enter the name (or a portion of the name), without extension, of the MS OneDrive file/folder to retrieve. The connector returns the most recently created or modified file matching the name, based on what you have selected in the
 **Date Field**
 menu.
  |
|
 Match Type
  |
 Specify whether the retrieve file starts with or contains the name you have entered in
 **File Name**
 .
  |
|
 Parent Folder/Parent Folder Name
  |
 Enter a complete folder name (not case-sensitive) to limit the file search to a specific folder's root contents. Subfolders are ignored. If you leave this blank, the search includes all files in all folders for which you have access.
  |
|
 Date Field
  |
 Specify whether to retrieve a file based on its creation or last modified date. This is useful when there are multiple files containing the name you have entered in
 **File Name**
 .
  |
|
 File Type
  |
 Select the file type for the data file you want to retrieve.
  |
|
 Is Password Protected?
  |
 Select whether the file is password-protected.
  |
|
 Sheet Name
  |
 Enter the sheet name you want to retrieve in the specified spreadsheet.
  |
|
 File Name or Portion of File Name to Search For in ZIP
  |
 Enter the name of the zipped file to retrieve. Leave blank to retrieve the first zipped file.
  |
|
 Zipped File Type
  |
 Select the file type for the zipped data file you want to retrieve.
  |
|
 Drive ID
  |
 Select the drive you want to retrieve information for.
  |

FAQ
-----


####
 What kind of credentials do I need to power up this connector?

You need the client id and client secret of your OneDrive App.

###
 Where can I find my client id and client secret?

You can find instructions about obtaining the client ID and client secret

here

.

###
 How often can the data be updated?

Datasets should be set to update no more than once per hour.

###
 Are there any API limits that I need to be aware of?

Microsoft limits API calls on a per user/per app basis. To prevent rate limiting, reduce the number of datasets scheduled to run at the same time.

