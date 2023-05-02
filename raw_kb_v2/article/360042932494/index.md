

Intro
-------

Microsoft SharePoint Online enables organizations to create and manage custom team-focused and project-focused sites for collaboration. Use Domo's SharePoint Online Writeback connector to push data from a Domo DataSet to Sharepoint. To learn more about the SharePoint API, visit their page (

https://msdn.microsoft.com/en-us/lib.../jj860569.aspx

).


 You configure your Domo-Sharepoint connection in the Data Center. This topic discusses the fields and menus that are specific to the Sharepoint Online Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 An installed Microsoft Azure app
* The Client ID and Client Secret associated with your Domo Developer account
* The Secret ID and Value associated with your Microsoft Azure app


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
 **Value**

will appear in the

*Manage Client**

section.


####
 To obtain your SharePoint Secret ID:


1. Go to


 https://portal.azure.com


 .
2. Select
 **Azure Active Directory > App registrations**
 .
3. Find and click on your web app.
4. The "application ID" is your
 **Secret ID**
 .


####
 To obtain your SharePoint Value:

. Go to


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


**+New secret**
 .
6. Provide the value description and the expiry period for your secret. Click


**Add**
 .
7. Your new value will appear. Copy it and paste in your Domo connector SharePoint client secret field.

##
 Creating an Azure App for Enterprise OAuth

To create a Microsoft Azure app, do the following:


 1. Log into


 https://portal.azure.com


 .


 2. Click on
 **App registrations**
 .

3. Click
 **New registration**
 .


 4. Enter the application name and select the supported account type as below. Enter the Redirect URI for Web as -
 **https://oauth.domo.com/api/data/v1/oauth/providers/sharepointonlinewriteback/exchange**
 .

5. Click
 **Register**
 .


 6.

The

*Application ID**

that appears here is the
 **SharePoint**

*Client ID**

you will enter in the

*Credentials**

pane in Domo. O

nce the application is registered, assign the required API permissions for your application.


 7.  Now, click
 **API Permissions**
 .

8. Click

*+Add Permissions**

button and select the permissions as required.

9. After adding the permissions, the configured permissions will be listed as below.

10. Select
 **Certificates & Secrets**
 under Manage. Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.


 11. Select the +
 **New client secret**
 button.


 12. Enter a value in Description, select a suitable option for Expires and click
 **Add**
 .


**Important:**
 Ensure to copy the client secret Value (not the Secret ID) before leaving the page. It's not displayed again after you leave this page.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SharePoint Online Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Sharepoint Online account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Sharepoint Secret ID
  |
 Enter your Sharepoint secret ID.
  |
|
 Sharepoint Value
  |
 Enter your Sharepoint value.
  |
|
 Domo Secret ID
  |
 Enter your Domo secret ID.
  |
|
 Domo Value
  |
 Enter your Domo value.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Sharepoint Online Writeback DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains options for configuring your connection.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Sharepoint Online. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.
  |
|
 Select Filename
  |
 Select how you want to choose the file where data will be copied.
 * ********Use Input DataSet GUID********
 . The filename will be the number you entered for
 ********Input DataSet ID********
 .
* ********Use Input DataSet Name********
 . The filename will be the same as that of the input DataSet.
* ********Enter File Name********
 . You will give the file a custom name in the
 ********File Name********
 field.
 |
|
 Filename
  |
 Entered the desired output filename.
  |
|
 How would you like to select the Site?
  |
 Choose the appropriate method to select a site.
  |
|
 Sites Discovery
  |
 Select the site that you would like to use.
  |
|
 Sites Search
  |
 Search the selected site.
  |
|
 Select how would you like to choose the folder to store the file?
  |
 Select how you want to choose the folder to store the file.
  |
|
 Where to store the file?
  |
 Select the name of the folder in which the file should be saved. Select
 **Root**
 if the file needs to be stored at the root level of selected site.
  |
|
 Folder Path
  |
 Enter the folder path separated by the delimeter where you want to store the file.
  |
|
 Site and Group Site ID
  |
 Select the Sharepoint site in which you want to send your data.
  |
|
 Where to Store the File?
  |
 Select the Sharepoint folder in which you want to store the DataSet data. Select
 **Root**
 if you want the file to be stored at the root level of the selected site.
  |
|
 Select Mode
  |
 Select what should happen when a file with the same name is discovered, either
 **Rename**
 or
 **Replace**
 . If you choose
 **Rename**
 , if the filename already exists, it will be renamed by appending a number, e.g.

filename 1

,

filename 2

, etc.
  |


###
 FAQs


####
 What kind of credentials do I need to power up this connector?

You need Domo developer account credentials (client id and client secret) and SharePoint credentials (client id and client secret.)

###
 Where can I find my Domo client id and client secret?

To create a new client:

 Login to

Domo developer account

.
* In the top right corner under
 **My Account**
 click
 **New Client**
 .
* Enter the application name and description.
* Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
* Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client.**

###
 Where can I find my SharePoint client id and client secret?


* To obtain the SharePoint client id:
* Login to the Azure Portal (

https://protal.azure.com

).
* Navigate to
 **Azure Active Directory >>App registrations.**
* Click on
 **Web App>Application ID.**
* The application ID is your client id.

To obtain the client secret:

 Login to Azure Portal(

https://protal.azure.com

)
* Navigate to
 **Azure Active Directory>>App registrations.**
* Click on
 **Web App > Settings > Keys > Create New Key**

.

Copy the key value. Note that the key value is generated only once. You won't be able to retrieve the key value again.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same Sharepoint Online Writeback account to create multiple datasets?

Yes

###
 Why can't I connect to my SharePoint database? Do I need to whitelist any IP addresses?

Before you can connect to a SharePoint database in Domo, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see Whitelisting IP Addresses.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

