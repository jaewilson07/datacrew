

Intro
-------

dotmailer is a

scalable email marketing and marketing automation solution

. To learn more about the dotmailer API, visit their page (

https://developer.dotmailer.com/

).


 You connect to your dotmailer account in the Data Center. This topic discusses the fields and menus that are specific to the dotmailer connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your dotmailer account and create a DataSet, you must have a dotmailer username and password.


 Connecting to Your dotmailer Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the dotmailer Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your dotmailer account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your dotmailer account.
  |
|
 Password
  |
 Enter the password for your dotmailer account.
  |


 Once you have entered valid dotmailer credentials, you can use the same account any time you go to create a new dotmailer DataSet. You can manage connector accounts in the
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
 Select the dotmailer report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Address Books
  |
 Retrieves a list of all address books in the account.
  |
|
 Address Books for Campaign
  |
 Retrieves a list of address books and segments that a campaign has been sent to.
  |
|
 Address Book for Contact
  |
 Retrieves a list of address books containing a contact with a specified email address.
  |
|
 Campaign Activities
  |
 Retrieves a list of contacts associated with a campaign, along with their activity, after a given date.
  |
|
 Campaign Clicks
  |
 Retrieves the number of link clicks for a given campaign.
  |
|
 Campaign Contact Activities
  |
 Retrieves a list of activities for a given campaign and email address.
  |
|
 Campaign Contact Clicks
  |
 Retrieves a list of clicks for a given campaign and email address.
  |
|
 Campaign Contact Opens
  |
 Retrieves a list of opens for a given campaign and email address.
  |
|
 Campaign Contact Page Views
  |
 Retrieves a list of page views for a given campaign and email address.
  |
|
 Campaign Contact Replies
  |
 Retrieves a list of replies for a given campaign and email address.
  |
|
 Campaign Contact ROI Details
  |
 Retrieves ROI information for a given campaign and email address.
  |
|
 Campaign Contact Social Bookmark Views
  |
 Retrieves a list of social bookmark views for a given campaign and email address.
  |
|
 Campaign Hard Bouncing Contacts
  |
 Retrieves a list of contacts who hard-bounced when sent the specified campaign
  |
|
 Campaign Opens
  |
 Retrieves a list of campaign opens after a given date.
  |
|
 Campaign ROI Details
  |
 Retrieves campaign ROI details after a given date.
  |
|
 Campaign Page Views
  |
 Retrieves a list of campaign page views after a given date.
  |
|
 Campaigns
  |
 Retrieves all existing campaigns in the account.
  |
|
 Campaigns for Address Book
  |
 Retrieves a list of campaigns that have been sent to the given address book.
  |
|
 Campaign Social Bookmark Views
  |
 Retrieves a list of social bookmark views for the given campaign.
  |
|
 Campaign Summary
  |
 Retrieves a summary of reporting information for the selected campaign.
  |
|
 Contacts
  |
 Retrieves a list of contacts in the account.
  |
|
 Contacts in Address Book
  |
 Retrieves a list of contacts in the selected address book.
  |
|
 Custom From Addresses
  |
 Retrieves a list of all "custom from" addresses which can be used in a campaign.
  |
|
 Enrolments by Status
  |
 Retrieves a list of program enrolments by status (processing or finished).
  |
|
 Modified Contact
  |
 Retrieves a list of contacts modified after a given date.
  |
|
 Modified Contact in Address Book
  |
 Retrieves a list of contacts in a given address book modified since a given date.
  |
|
 New Contact
  |
 Retrieves a list of contacts who are new since a given date.
  |
|
 Programs
  |
 Retrieves a list of programs for the account.
  |
|
 Segments
  |
 Retrieves a list of segments for the account.
  |
|
 Sent Campaign with Activity
  |
 Retrieves a list of all sent campaigns that have had activity since a specified date.
  |
|
 Suppressed Contacts
  |
 Retrieves a list of suppressed contacts after a given date along with the reason for suppression.
  |
|
 Survey Field
  |
 Retrieves a list of pages for the selected survey, each containing a list of the fields on that page.
  |
|
 Survey Responses
  |
 Retrieves the list of responses for a selected survey.
  |
|
 Survey Responses with Activity
  |
 Retrieves response activity for a specified survey since a specified date.
  |
|
 Surveys
  |
 Retrieves a list of surveys in the account.
  |
|
 Surveys with Activity
  |
 Retrieves activity for a specified survey since a specified date.
  |
|
 Templates
  |
 Retrieves a list of templates for the account.
  |

|
|
 Campaigns
  |
 Select the campaign you want to retrieve data for.
  |
|
 Date Since
  |
 Select whether this report contains data for a specific date or a given number of past days (relative).
  |
|
 Specific Date
  |
 Select the date you want to retrieve data for.
  |
|
 Days Back
  |
 Enter the number of past days you want to retrieve data for. For example, if you entered

7

, data would be pulled for the last week every time you ran this report.
  |
|
 Address Book
  |
 Select the address book you want to retrieve data for.
  |
|
 Survey
  |
 Select the survey you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

