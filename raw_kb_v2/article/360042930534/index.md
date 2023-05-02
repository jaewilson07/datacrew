

Intro
-------

Apache Kafka is a streams messaging platform built to handle high volumes of data very quickly. Domo's Kafka Connector lets you pull information on messaging topics, topic data, and partitions so that you can cut through the noise and focus on the communication that is most vital. To learn more about the Kafka API, visit their page (

https://kafka.apache.org/documentation/

).


 You connect to your Kafka account in the Data Center. This topic discusses the fields and menus that are specific to the Kafka connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kafka account and create a DataSet, you must have the server name or IP address of your Kafka server. You must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Kafka Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kafka Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Kafka account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Kafka Server
  |
 Enter the server name or IP address of your Kafka server.
  |


 Once you have entered valid Kafka credentials, you can use the same account any time you go to create a new Kafka DataSet. You can manage connector accounts in the
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
 Select the Kafka report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Partitions
  |
 Returns a list of partitions for a selected topic.
  |
|
 Topics
  |
 Returns a list of available topics.
  |
|
 Topics Data
  |
 Returns all data for the selected topic.
  |

|
|
 Topic Name
  |
 Select the topic you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

