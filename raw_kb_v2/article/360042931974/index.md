

Intro
-------

Dropbox is a personal cloud storage service frequently used for file sharing and collaboration. You can use Domo's Dropbox File connector to retrieve CSV, XLS, and XLSX files from a selected Dropbox account. To learn more about the Dropbox API, go to (

https://www.dropbox.com/developers

).


 You connect to your Dropbox account in the Data Center. This topic discusses the fields and menus that are specific to the Dropbox File connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Dropbox account and create a Dropbox File DataSet, you must have the following:

 The email address you enter to access your Dropbox account.
* Your Dropbox password.

Connecting to Your Dropbox Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Dropbox File Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Dropbox File connector uses OAuth to connect. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Dropbox File accounts in Domo) to open the Dropbox OAuth screen where you can enter the email address associated with your Dropbox account and your Dropbox password. Once you have entered valid Dropbox credentials, you can use the same account any time you go to create a new Dropbox File DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Dropbox when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Dropbox.


###
 Details Pane

In this pane, you specify the file name and file type of the Dropbox file you want to import into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Type
  |
 Select the file type for the file you want to import. In the standard version of the connector, only CSV, XLS, and XLSX files can be imported. If you want to import other file types such as JSON, XML, and ZIP files, use the

Dropbox File Advanced

connector.
  |
|
 File Name
  |
 Enter the name of the file you want to import from Dropbox into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How do I know my Dropbox credentials are secure?

The login process uses OAuth, so your Dropbox credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.

####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 What's the difference between this connector and the advanced version?

The Dropbox File connector imports only CSV, XLS and XLSX files, whereas the Dropbox File Advanced connector also imports JSON, XML and ZIP files. The Dropbox File Advanced connector also provides some advanced filters to import the data from the file.

