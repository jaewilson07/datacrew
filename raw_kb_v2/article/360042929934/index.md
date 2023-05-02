

Intro
-------

Pinterest is a social network that allows users to visually share and discover new interests. With the Pinterest Enterprise connector, you can check out Pinterest data including followers, following, pins, and many other Pinterest entities. To learn more about the Pinterest API, visit their page (

https://developers.pinterest.com/

).


 You connect to your Pinterest account in the Data Center. This topic discusses the fields and menus that are specific to the Pinterest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pinterest account and create a DataSet, you must have the following:

 A Pinterest client ID
* A Pinterest client secret
* Credentials for the Pinterest account (the email address you use to log into Pinterest and your Pinterest password) OR Facebook or Google credentials.

For the Redirect URI for the client ID and client secret, enter

https://oauth.domo.com/api/data/v1/oauth/providers/pinterest-enterprise/exchange

.


 To learn how to generate a client ID and client secret, go here:

https://www.codeholic.in/blog/how-to-generate-pinterest-client-id-and-secret-key/

.


 Connecting to Your Pinterest Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pinterest Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Pinterest account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Pinterest client ID.
  |
|
 Client Secret
  |
 Enter your Pinterest client secret.
  |

To learn how to generate a client ID and client secret, go here:

https://www.codeholic.in/blog/how-to-generate-pinterest-client-id-and-secret-key/

.

Once you have entered valid Pinterest credentials, you can use the same account any time you go to create a new Pinterest DataSet. You can manage connector accounts in the
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
 Select the Pinterest report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Returns the first and last name, ID, and URL of the authenticated user.
  |
|
 Boards
  |
 Returns a list of the authenticated user's public boards, including the URL, ID, and name.
  |
|
 Board Pins
  |
 Returns a list of Pins on the board with their IDs, URLs, links, and descriptions.
  |
|
 Followers
  |
 Returns the users who follow the authenticated user, with their first and last names, IDs, and URLs.
  |
|
 Following Boards
  |
 Returns the boards that the authenticated user follows, with their IDs, names, and URLs.
  |
|
 Following Interests
  |
 Returns the topics that the authenticated user follows, with their names and IDs.
  |
|
 Following Users
  |
 Returns the users that the authenticated user follows, with their first and last names, IDs, and URLs.
  |
|
 Pins
  |
 Returns the IDs, links, URLs, and descriptions of the authenticated user's Pins.
  |
|
 Search Boards
  |
 Searches the authenticated user's board names (but not Pins on boards), with their IDs, names and URLs.
  |
|
 Search Pins
  |
 Searches the authenticated user's Pin descriptions, matching IDs, links, URLs, and descriptions.
  |

|
|
 Board ID
  |
 Enter the ID of the board you want to pull data for. You can find boards IDs by running the "Boards" report and looking at the column called "Data Id Str."
  |
|
 Query (Optional)
  |
 Lets you enter a query keyword when using the "Search Boards" and "Search Pins" reports.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How do I know my Pinterest credentials are secure?

Domo uses the OAuth process to connect to Pinterest, so your credentials are secure and are never saved. You can revoke Domo's access to your Pinterest account at any time.

####
 Where can I find a Board ID?

You can find boards IDs by running the "Boards" report and looking at the column called "Data Id Str."

####
 How often can the data be updated?

DataSets should be set to update once a day.

####
 Are there any API rate limits I should be aware of?

Pinterest allows each user to make up to 1000 API calls per hour. Note that a single DataSet run may require multiple API calls. The 60-minute window is a sliding window based on when you make your first request. If you hit your rate limit, you’ll only have to wait a maximum of 1 hour to get a few more requests.

####
 What happened to the Pins that I liked?

In June 2017, Pinterest removed the Like button from their UI., having concluded that the differences between the Like button and the Save button were confusing to users. Now they just have the Save button. All of the items that you had marked as "Liked" prior to that time were moved to a private board in your account called "Your Pinterest Likes."

