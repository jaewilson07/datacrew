

Intro
-------

Apache Kafka is a streams messaging platform built to handle high volumes of data very quickly. Domo's Apache Kafka REST Proxy Connector lets you pull information on brokers, partitions, topics, topic metadata, and topic records so that you can cut through the noise and focus on the most vital communication. To learn more about the Kafka REST API, visit their page (

https://docs.confluent.io/current/ka...ocs/intro.html

).


 You connect to your Kafka server and set up an acccount in the Data Center. This topic discusses the fields and menus that are specific to the Kafka REST connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kafka REST account and create a DataSet, you must know the name of your Kafka server. You must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Kafka REST Server
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kafka REST Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Kafka REST account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Kafka Server
  |
 Enter the list of host/port pairs for the Kafka server.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Kafka REST DataSet. You can manage connector accounts in the
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
 Select the Kafka REST report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Brokers
  |
 Returns a list of brokers.
  |
|
 Partitions
  |
 Returns a list of partitions for the selected topic.
  |
|
 Topics
  |
 Returns a list of Kafka topics.
  |
|
 Topics Metadata
  |
 Returns metadata for the selected topic.
  |
|
 Topics Records
  |
 Returns data for the selected topics or partitions using one of the subscribe/assign APIs.
  |

|
|
 Topic Name
  |
 Select the topic you want to retrieve data for.
  |
|
 Group Name
  |
 Enter the name of the consumer group you want to retrieve data for.
  |
|
 Name (Optional)
  |
 Enter the name of the consumer instance you want to retrieve data for.
  |
|
 Auto Offset Reset (Optional)
  |
 Enter the auto.offset.reset value for the consumer.
  |
|
 Auto Commit Enable (Optional)
  |
 Enter the auto.commit.enable value for the consumer.
  |
|
 Timeout (Optional)
  |
 Enter the number of milliseconds for the underlying client library poll (timeout) request to fetch records.
  |
|
 Max Bytes (Optional)
  |
 Enter the maximum number of bytes of unencoded keys and values that should be included in the response.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

