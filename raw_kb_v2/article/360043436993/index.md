

Intro
-------

Microsoft OneDrive is an online file sharing and personal cloud content management service for businesses. Use this connector to export your data from a Domo DataSet to a specified OneDrive folder. For more information about the OneDrive API, see

https://msdn.microsoft.com/en-us/lib.../dn659752.aspx

.


 You export data to OneDrive in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft OneDrive Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you need the following:

 An installed Microsoft Azure app.
* The client ID and client secret associated with your Domo Developer account.
* The

Secret ID and Value associated with your Microsoft Azure app.


####
 To obtain your Domo Client ID and Client Secret:


1. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 . Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .
6. Your

*Client Secret**

will appear in the

*Manage Client**

section.


####
 To obtain your Secret (client) ID:

1. Go to


 https://portal.azure.com


 .


 2. Select
 **Azure Active Directory > App registrations**
 .


 3. Find and click on your web app.


 4. The "application ID" is your


**Client ID**
 .

###
 To obtain your Secret Value:


 1. Go to


 https://portal.azure.com


 .


 2. Select


**Azure Active Directory > App registrations**
 .


 3. Find and click on your web app.


 4. Open


**Certificates and secrets**
 .


 5. Click


**+New client secret**
 .


 6. Provide the client secret description and the expiry period for your secret. Click


**Add**
 .


 7. Your new client secret will appear. Copy it and paste in your Domo connector Client Secret field.


###
 Microsoft Permissions

Having the correct permissions within Microsoft allows Domo to effectively access your data using the Microsoft OneDrive Writeback connector.

###
 Setting Permissions for New Apps

These steps pertain only to new apps.

. Navigate to

https://apps.dev.microsoft.com/

and sign in.
2. Click
 ****Add an app****
 .
3. Name the app.
4. Click
 ****Create****
 .

The APP ID that appears is the Client ID.
5. Click
 ****Generate new password****
 .


 Be sure to SAVE THIS—you will not see it again. This is your Secret.
6. Click
 ****OK****
 .
7. Click
 ****Add platform****
 .
8. Select
 ****Web****
 .
9. In the
 ****Redirect URLs****
 field, enter the URL
 **https://oauth.domo.com/api/data/v1/o...drive/exchange**
 .
10. Click
 ****Save****
 .
11. Add permissions for Files.Read.All, offline\_access, and Sites.ReadWrite.All.
12. Click
 ****Save****
 .
13. Select
 **Certificates & Secrets**
 under Manage. Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.
14. Select the +
 **New client secret**
 button.
15. Enter a value in Description, select a suitable option for Expires and click
 **Add**
 .

*Important:**
 Ensure to copy the client secret Value (not the Secret ID) before leaving the page. It's not displayed again after you leave this page.
16. Go to Domo Connector and use the Client ID and Secret to connect.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft OneDrive Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 OneDrive App Client ID
  |
 Enter the client ID associated with your registered OneDrive app.
  |
|
 OneDrive App Client Secret
  |
 Enter the client secret associated with your registered OneDrive app.
  |
|
 Domo Client ID
  |
 Enter your client ID associated with your Domo Developer account.
  |
|
 Domo Client Secret
  |
 Enter your client secret associated with your Domo Developer account.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-OneDrive connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to a OneDrive folder or workspace. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

.


 For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Enter Folder Path
  |

Enter complete folder path (not case-sensitive) in which you want to writeback data. If you leave this blank, data will be written back into the root folder.


 Example:
 **Test/Test1/Test2/**
 will writeback data into Test2 folder in onedrive.

|
|
 Select Filename
  |
 Select how you want to choose the file where data will be copied.
 * ****Use Input DataSet GUID****
 . The filename will be the number you entered for
 ****Domo DataSet ID****
 .
* ****Use Input DataSet Name****
 . The filename will be the same as that of the input DataSet.
* ****Enter File Name****
 . You will give the file a custom name in the
 ****File Name****
 field.
 |
|
 Filename
  |

Enter output file name.


 If you wish to add current date to the file name please use the macro <current\_date> or <current\_date-1>. Example: If fileName is
 **domo\_current\_date**
 . Output file generated in Onedrive would be domo\_(todays date in format yyyy-MM-dd) like domo\_2019-07-16.

|
|
 Select File Encoding
  |
 Select the encoding with which the file is to be written back to Onedrive. If no encoding is selected, the file is written back in UTF-8 encoding.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

