

Google Gmail is a powerful email server used throughout the world. The Google Gmail Service Connector lets you pull data from your Gmail inbox into Domo so you can combine the power of email data and manage your inbox efficiently. To learn more about the Gmail API, visit their page (

https://developers.google.com/gmail/api/

).


 You connect to your Gmail service account in the Data Center. This topic discusses the fields and menus that are specific to the Google Gmail Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Gmail service account and create a DataSet, you must have the following:

 A Google service account JSON key
* The email address of the user the application is trying to impersonate in the service account flow

To generate a JSON key, do the following:

. In the GCP Console, open the IAM & Admin page.
2. Click
 **Service accounts**
 in the left-hand navigation pane.
3. Select your project and click
 **Open**
 .
4. Click
 **Create Service Account**
 .
5. Enter a name and description for the service account.
6. Click
 **Create**
 .
7. Select
 **Project Owner**
 .
8. Click
 **Continue**
 .
9. Click
 **Create key**
 .
10. Select JSON as the key type.
11. Click
 **Create**
 .

A private key will be saved to your computer.


 Connecting to Your Gmail Service Account
------------------------------------------


####
**Performing the G Suite Domain-Wide Delegation of Authority:**


1. Create the service account and its credentials.
2. In the

Google Cloud Platform Console

, open the
 **IAM & Admin**
 page.
3. In the left navigation, click
 **Service accounts**
 .
4. Select your project and click
 **Open**
 .
5. Click
 **Create Service Account**
 .
6. Enter a service account name, service account description. Click
 **Create**
 .
7. Select a role you wish to grant to the service account (Project Owner). Click
 **Continue**
 .
8. Click
 **Create key**
 .
9. Select JSON key type. Click
 **Create**
 .
10. The private key will be saved to your computer.
11. Close the pop-up. Click
 **Done**
 .
12. Open the

Google Cloud Platform Service account

page.
13. If prompted, select a project.
14. In the right side of the pane, click on

(
 **Column display options)**
 and check
 **Domain-wide Delegation**
 .


####
**Delegating domain-wide authority to your service account:**

The service account that you created needs to be granted access to the G Suite domain’s user data that you want to access. The following tasks must be performed by an administrator of the G Suite domain:

. Go to your G Suite domain’s

Admin console

.
2. Select
 **Security**
 from the list of controls. If you don't see Security listed, select
 **More controls**
 from the gray bar at the bottom of the page, then select
 **Security**
 from the list of controls. If you don't see the controls, make sure you're signed in as an administrator for the domain.
3. Select
 **Show more**
 and then
 **Advanced settings**
 from the list of options..
4. Select
 **Manage API client access**
 in the
 **Authentication**
 section.
5. In the
 **Client Name**
 field enter the service account's
 **Client ID**
 .
6. In the
 **One or More API Scopes**
 field, enter the list of scopes that your application should be granted access to. For example, if you need domain-wide access to Contacts service enter: https//

www.googleapis.com/auth/gmail.labels

,

https://www.googleapis.com/auth/gmail.readonly

.
7. Click
 **Authorize**
 .

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Gmail Service Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Gmail service account. The following table describes what is needed for each field:


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

Once you have entered valid credentials, you can use the same account any time you go to create a new Google Gmail Service DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the Gmail report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Attachment Details
  |
 Returns the specified message attachments.
  |
|
 Draft Message Details
  |
 Returns the specified draft messages.
  |
|
 History Details
  |
 Lists the history of all changes to the given mailbox.
  |
|
 Labels
  |
 Returns the specified labels with details.
  |
|
 Messages
  |
 Returns the specified messages with details.
  |
|
 Thread Details
  |
 Returns the specified threads.
  |

|
|
 Message ID
  |
 Enter the ID of the message you want to retrieve data for. You can find message IDs by running the "Messages" report.
  |
|
 History ID
  |
 Enter the Start History ID you want to retreive data for. This can be obtained from the historyId of a message, thread, or previous list response.
  |
|
 Attachment ID
  |
 Enter the attachment ID of the message you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

