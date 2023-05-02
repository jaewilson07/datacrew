

Intro
-------

This version of the NetSuite connector uses NetSuite's SuiteScript 2.0 as well as token-based authentication (TBA). Use this version of the connector if you want to effectively gather all of your NetSuite data as securely as possible.


 You connect to NetSuite in the Data Center. This topic discusses the fields and menus that are specific to the NetSuite App TBA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your NetSuite account and create a DataSet using this connector, you must have the following:

 An installed "Domo Data Connection 2.0" NetSuite bundle
* A NetSuite token ID and token secret
* A NetSuite account ID
* A NetSuite script bundle and deploy bundle ID
* A NetSuite report ID

Each of these items is discussed in more detail in the next two sections.


 Installing the NetSuite Bundle
--------------------------------

Before you can connect to NetSuite data using this connector, you must first install the Domo Data Connection 2.0 bundle from NetSuite.


**To install the bundle,**

. In NetSuite, select
 **Customization > SuiteBundler > Search & Install Bundles.**
2. In the
 **Keywords**
 section, search for "Domo."
3. Click the search result for "Domo Data Connection 2.0."
4. Click
 **Install**
 .
5. Select
 **Customization > SuiteBundler > Search & Install Bundles > List**
 .
6. Locate "Domo Data Connection 2.0" in the list.
7. Make sure the install status is complete, indicated by a green checkmark.

Connecting to Your NetSuite Data in Domo
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the NetSuite App TBA Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for to connecting to your NetSuite account. Each connection option is discussed in detail in continuation.


 Once you have connected to NetSuite, you can use the same account any time you go to create a new NetSuite App TBA DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


####
 Choosing Your Environment

In the
 **Environment**
 menu, select
 **Sandbox**
 if your Netsuite account is a sandbox account. You can find this by hovering over your name/account in the top right corner of NetSuite and clicking
 **View all roles**
 . Your environment should be listed under
 **Account Type**
 .

###
 Obtaining Your Token ID and Token Secret

*To create a Token and ID and Token Secret,**

. In NetSuite, choose the role you want to access data in.
2. Go to your main page by clicking the house icon in the top left corner of the screen.
3. In the
 **Settings**
 box in the bottom left corner, click
 **Manage Access Tokens**
 .


**Note:**

If you have not configured your role to use access tokens, you will not see the
 **Manage Access Tokens**
 link. To enable access tokens for your role, do the following:


	1. Navigate to
	 **Setup > Company > Enable Features**
	 , then open the
	 **SuiteCloud**
	 tab.
	2. Under
	 **Manage Authentication**
	 , enable
	 **Token-Based Authentication**
	 .
4. Click
 **New Access Token**
 and choose "Domo Data Connection 2.0."
5. Choose a token name.
6. Click
 **Save**
 .


 Your Token ID and Token Secret should appear under the other information.
7. Store the newly generated credentials securely (they will not be shown again).


####
 Finding Your Account ID

To find your account ID, select
 **Setup > Integration > Web Services Preferences**
 in NetSuite.

Your account ID will be located under "Primary Information."


####
 Finding Your Script ID and Deploy ID

*To find your script ID,**

. In Netsuite, select
 **Customization > Scripting > Scripts**
 .
2. Click on Domo Data Connection 2.0.
3. The script ID is found under ID in the form: customscriptXXXX. Note that, you need to enter the entire script id, including the word "customscript" as well.

*To find your deploy ID,**

. To obtain the deployment id, the script must first be deployed. To do this, click the Deploy Script box.
2. Go to
 **Customization -> Scripting -> Script Deployments**
 .
3. Now, find the
 **Domo Data Connection 2.0**
 script.
4. The deployment ID is found under ID in the form customdeployX. Note that you need to provide the entire deployment id, including the word "customdeploy" as well.

##
 Details Pane

This pane contains a single
 **Report**
 menu in which you enter the ID for the NetSuite saved search you want to pull into Domo.


 The NetSuite App TBA connector
 *only*
 pulls in data from saved searches.


**To find the report ID for a saved search,**

. In Netsuite, select
 **Reports > Saved Searches > All Saved Searches**
 .
2. Locate the report you want to pull data from.
3. Copy the ID found in the
 **ID**
 column corresponding to the saved search you want.


 This will be in the form

customsearchXXXX

, where XXXX is the report ID.

*Tip:**
 If the ID from the ID column does not work, click
 **View**
 and use the saved search ID in the URL.


|
 Menu
  |
 Description
  |
| --- | --- |
|

Saved Searched ID

|

Please provide the custom search ID for the NetSuite saved search you wish to run.

|
|

Search Type

|

Select the Search Type. If you wish to have no search type, select the blank option at the top and click save.

|
|

Date Format

|

Select the date format.

|
|

Duplicate Row Handling

|

Select an option to keep or remove duplicate rows from your data.

|
|

Use SQLLite to Prevent duplicate records caused by modifying data during the connector run

|

Check this box to remove duplicate records, bringing in only the most recently modified data. These duplicates are caused if your data is modified while the connector is running. Duplicates are removed using an SQLite query that keeps the most recently modified row selected by the [row id].

Checking this box will slow your connector run, so use this feature only when necessary. It only works when you select the update method as
 **Merge.**

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 Why do I need a script ID?

NetSuite requires a script to access their information (through Saved Searches). Domo's NetSuite App TBA connector interacts with this script to get your data.

###
 What is the difference between this connector and other NetSuite connectors?

NetSuite App TBA uses the new version of the NetSuite API, which supports many new features. While this connector uses some of these new features to more efficiently provide data, it has the same functionality as the other NetSuite connectors.

###
 How do I know my NetSuite data is being accessed securely?

The NetSuiteAppTBA uses token-based authentication, so Domo never sees your actual credentials. Your token can be revoked at any time through the NetSuite UI.

###
 How do I know which NetSuite role the connector is using?

NetSuite roles are attached to the tokens you create. To use a different role in the NetSuite connector, you must create a new token in the role you desire. To do so...

. Hover over your name in the top right corner, then choose the role you wish to use from the dropdown.
2. Follow the directions to create a token in this role.

*Note**
**:**

All roles may not have the ability to create access tokens.


