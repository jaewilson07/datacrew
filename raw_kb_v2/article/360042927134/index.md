

Intro
-------

Rival IQ is a social media marketing analytics platform. Use the Domo connector to compile reports about social media posts per day, interactions per post, average shares per day, and more. To learn more about the Rival IQ API, visit their page (

https://www.rivaliq.com/developers/

).


 You connect to your Rival IQ account in the Data Center. This topic discusses the fields and menus that are specific to the Rival IQ connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Rival IQ account and create a DataSet, you must have your Rival IQ API key. You can generate an API key in your Rival IQ

account settings page

.


 Connecting to Your Rival IQ Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Rival IQ Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Rival IQ account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Rival IQ API key.
  |


 Once you have entered valid Rival IQ credentials, you can use the same account any time you go to create a new Rival IQ DataSet. You can manage connector accounts in the
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
 Select the Rival IQ report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Metrics - Summary Values
  |
 Returns summary values for all metrics.
  |
|
 All Metrics - Time Series
  |
 Returns daily values for all metrics for a given time period.
  |
|
 Landscapes
  |
 Returns a list of available landscapes.
  |
|
 Positioning
  |
 Returns current positioning data for all companies within the landscape.
  |
|
 Social Posts
  |
 Returns the top 500 posts for all companies within the landscape for a given time period.
  |

|
|
 Landscape ID
  |
 Select the ID of the landscape you want to retrieve data for.
  |
|
 Summary Type
  |
 Select the summary type you want to retrieve data for.
  |
|
 Channel
  |
 Select the channel you want to retrieve data for.
  |
|
 Select Type of Time Range
  |
 Select whether you want a predefined or custom (
 **User Defined**
 ) time range.
  |
|
 Time Period
  |
 Select the time period for your report.
  |
|
 Main Period Start
  |
 Select the start date for your report.
  |
|
 Main Period End
  |
 Select the end date for your report.
  |
|
 Post Type
  |
 Select the type of social posts you want to retrieve data for.
  |
|
 Order By
  |
 Select how you want the report data to be sorted.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

