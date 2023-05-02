

Intro
-------

Searchmetrics is an SEO and content performance platform with a historical database containing over 250 billion pieces of information, such as keyword rankings, search terms, social links, and backlinks. To learn more about the Searchmetrics API, visit their page (

http://api.searchmetrics.com/v3/documentation

).


 You connect to your Searchmetrics account in the Data Center. This topic discusses the fields and menus that are specific to the Searchmetrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Searchmetrics account and create a DataSet, you must have the following:

 A Searchmetrics API key
* An Searchmetrics API secret

You can view and generate these credentials by opening your account settings in Searchmetrics and then going to
 **My API**
 .


 Connecting to Your Searchmetrics Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Searchmetrics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Searchmetrics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Searchmetrics API key.
  |
|
 API Secret
  |
 Enter your Searchmetrics API secret.
  |

For more information about obtaining credentials, see "Prerequisites," above.

Once you have entered valid Searchmetrics credentials, you can use the same account any time you go to create a new Searchmetrics DataSet. You can manage connector accounts in the
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
 Select the Searchmetrics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 List Rankings Keyword
  |
 Returns rankings for a given keyword in organic search results.
  |
|
 List Rankings Keyword Historic
  |
 Returns historic rankings for a given keyword in organic search results.
  |
|
 List Rankings Keyword Longtail
  |
 Returns historic rankings for a given keyword in organic search results (longtail).
  |
|
 List Similar Keywords
  |
 Returns a list of keywords that contain a selected keyword.
  |

|
|
 Country Code
  |
 Select the country you want to return data for.
  |
|
 Keyword
  |
 Enter the keyword you want to return data for.
  |
|
 Date Type
  |
 Select whether you want to pull data for a specific date or for a given number of days back from the day the report is run (offset).
  |
|
 Specific Date
  |
 Select the specific date you want to retrieve data for.
  |
|
 Date Offset
  |
 Enter the number of days back from the day on which the report is run to pull data for that day.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQs
------


#####
 Are there any API limits I should be aware of?

If you receive an error because your rate limit was exceeded, try shifting your queries to nighttime and weekend hours. SearchMetrics allows higher request rate limits during these times due to overall lower number of requests.

####
 How often can the data be updated?

As often as needed.

