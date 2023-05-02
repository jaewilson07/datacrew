

Intro
-------

Indeed is a job search engine that offers access to millions of employment opportunities from thousands of websites. To learn more about the Indeed API, visit their page (

https://www.indeed.com/publisher

).


 You connect to your Indeed account in the Data Center. This topic discusses the fields and menus that are specific to the Indeed connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Indeed account and create a DataSet, you must have an Indeed publisher key. You can obtain a publisher key at

https://ads.indeed.com/jobroll/xmlfeed

.


 Connecting to Your Indeed Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Indeed Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

a DataSet Using a Data Connector

.

##
 Credentials Pane


 This pane contains fields for entering credentials to connect to your Indeed account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Publisher Key
  |
 Enter your Indeed publisher key. You can obtain a publisher key at

https://ads.indeed.com/jobroll/xmlfeed

.
  |


 Once you have entered valid Indeed credentials, you can use the same account any time you go to create a new Indeed DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus that allow you to configure your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Indeed report you want to run. Currently only one report type is available.


|  |  |
| --- | --- |
|
 Search
  |
 Returns data about Indeed job searches.
  |

|
|
 Search
  |
 Enter the keyword you want to filter by in your report. For example, if you entered

Aircraft repair technician

, your report would return job listings for that profession.
  |
|
 Job Type
  |
 Select a job type to filter your results by.
  |
|
 Country
  |
 Select the country you want to retrieve job listings for.
  |
|
 Location (Optional)
  |
 Enter the U.S. city you want to retrieve job listings for, in

city, state

format. For example:

Seattle, Washington

|
|
 Sort
  |
 Select whether you want to sort by date or relevance.
 **Date**
 sorts the job listings by job posting date.
 **Relevance**
 sorts by search relevance.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

