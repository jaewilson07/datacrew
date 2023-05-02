

Intro
-------

Google Contacts is an online address book that integrates with other Google products such as Gmail, Google Calendar, and Google Drive. To learn more about the Google Contacts API, visit their page (

https://developers.google.com/google...s/contacts/v3/

).


 You connect to your Google Service account in the Data Center. This topic discusses the fields and menus that are specific to the Google Contacts Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google service account and create a DataSet, you must have the following:

 A Google service account JSON key
* The email address of the user the application is trying to impersonate in the service account flow

To generate a JSON key, do the following:

. In the GCP Console, open the IAM & Admin page.
2. Click
 ****Service accounts****
 in the left-hand navigation pane.
3. Select your project and click
 ****Open****
 .
4. Click
 ****Create Service Account****
 .
5. Enter a name and description for the service account.
6. Click
 ****Create****
 .
7. Select
 ****Project Owner****
 .
8. Click
 ****Continue****
 .
9. Click
 ****Create key****
 .
10. Select JSON as the key type.
11. Click
 ****Create****
 .

A private key will be saved to your computer.


 Connecting to Your Google Contacts Service Account
----------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Contacts Service Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Google service account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON for your Google service account key. For information about creating a key, see "Prerequisites," above.
  |
|
 Service Account User
  |
 Enter the email address of the user the application is trying to impersonate in the service account flow.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new Google Contacts Service DataSet. You can manage connector accounts in the
 ********Accounts********
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary menu from which you select your desired Google Contacts report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Google Contacts report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contacts
  |
 Retrieves your list of contacts from Google.
  |
|
 Contact Groups
  |
 Retrieves your list of contact groups from Google.
  |

|
|
 Person Fields
  |
 Select the fields (columns) you want to appear in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

