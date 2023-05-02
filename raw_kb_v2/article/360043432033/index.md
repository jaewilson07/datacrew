

Intro
-------

Sysomos Heartbeat is a service that tracks social media accounts (Twitter, Facebook, blogs, etc) and records information about posts, usage, followers, etc. Use Domo's Sysomos Heartbeat connector to gain insights into how the posts in those services are used, seen or shared. To learn more about the Sysomos Heartbeat API, visit their page (

https://sysomos.com/services/api/

).


 You connect to your Sysomos Heartbeat account in the Data Center. This topic discusses the fields and menus that are specific to the Sysomos Heartbeat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sysomos Heartbeat account and create a DataSet, you must have a Sysomos API key. To obtain an API key, reach out to your Sysomos account representative.


 Connecting to Your Sysomos Heartbeat Account
----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sysomos Heartbeat Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Sysomos Heartbeat account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Sysomos API key.
  |


 Once you have entered valid Sysomos Heartbeat credentials, you can use the same account any time you go to create a new Sysomos Heartbeat DataSet. You can manage connector accounts in the
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
 Select the Sysomos Heartbeat report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Buzz Graph
  |
 Returns a list pairs of words that are commonly associated with each other in the heartbeat's accounts.
  |
|
 Facebook Fan Page Metrics
  |
 Returns information about a particular fan page tracked by the heartbeat.
  |
|
 Influencers
  |
 Returns a list of the top influencers in the heartbeat's accounts.
  |
|
 Measure
  |
 Returns the raw numbers and counts shown in the Measure Tab of the heartbeat's online portal.
  |
|
 RSS Content
  |
 Returns information about all of the posts tracked by the heartbeat.
  |
|
 Twitter Handle Metrics
  |
 Returns information about a particular Twitter handle tracked by the heartbeat.
  |
|
 YouTube Channel Metrics
  |
 Returns information about a particular YouTube Channel tracked by the heartbeat.
  |

|
|
 Heartbeat ID
  |
 Enter the ID of the heartbeat you want to retrieve data for.
  |
|
 Filters (Optional)
  |
 Enter a comma-separated list of filters you want to apply.
  |
|
 Tags (Optional)
  |
 Enter a comma-separated list of tags to be included in the output.
  |
|
 Start Days
  |
 Enter the number of past days for which you want to start your report. Use

0

for yesterday,

1

for today, and so on. Pair with
 **End Days**
 to create a range of days. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , the report would pull data from 14 days ago until 7 days ago each time it ran.
  |
|
 End Days
  |
 Enter the number of past days for which you want to end your report. Use

0

for yesterday,

1

for today, and so on. Pair with
 **Start Days**
 to create a range of days. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , the report would pull data from 14 days ago until 7 days ago each time it ran.
  |
|
 Word Pairs
  |
 Enter the number of word pairs to retrieve data for in a "Buzz Graph" report.
  |
|
 Maximum Influencers
  |
 Enter the maximum number of influencers you want to retrieve data for in an "Influencers" report.
  |
|
 Maximum Mentions
  |
 Enter the maximum number of mentions per influencers you want to retrieve data for in an "Influencers" report.
  |
|
 Channel Name
  |
 Enter the name of the YouTube channel you want to retrieve data for in a "YouTube Channel Metrics" report.
  |
|
 Twitter Handle
  |
 Enter the Twitter handle you want to retrieve data for in a "Twitter Handle Metrics" report.
  |
|
 Facebook Page ID
  |
 Enter the Facebook page ID you want to retrieve data for in a "Facebook Fan Page Metrics" report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

