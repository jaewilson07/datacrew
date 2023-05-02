

Intro
-------

Apache Kafka is a streams messaging platform built to handle high volumes of data very quickly.

The Kafka Connector lets you pull information on messaging topics, topic data, and partitions so that you can cut through the noise and focus on the communication that is most vital.


 Maximize the robust flexibility of Kafka by using Domo to make the data instantly available to anyone in your company.

To learn more about the Kafka API, visit their page (

https://kafka.apache.org/documentation/

).


 You connect to your Kafka account in the Data Center. This topic discusses the fields and menus that are specific to the Kafka connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kafka account and create a DataSet, you must have the following:

 Your

bootstrap servers list
* Your Kafka SASL account username and password
* You also need to select your

SASL login module, security protocol, and SASL mechanism

You must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Kafka SASL Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kafka SASL Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Kafka SASL account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Kafka BootStrap Servers
  |

Enter the bootstrap servers list.

|
|
 Username
  |

Enter the username associated with your Kafka SASL account.

|
|
 Password
  |

Enter the password associated with your Kafka SASL account.

|
|
 SASL Login Module
  |

Select the SASL login module.

|
|
 Security Protocol
  |

Select the security protocol.

|
|
 SASL Mechanism
  |

Select the SASL Mechanism.

|


 Once you have entered valid Kafka SASL credentials, you can use the same account any time you go to create a new Kafka SASL DataSet. You can manage connector accounts in the
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
 Select the Kafka SASL report you want to run. The following reports are available:


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


 FAQs
------


####
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Partitions
  |
 /topics/{topicName}/partitions
  |
|
 Topics
  |
 /topics
  |
|
 Topics Data
  |
 /consumers/{groupName}/instances/{instance}/records
  |


####
 What kind of credentials do I need to power up this connector?

You need the username and password (associated with your Kafka SASL account) and the bootstrap servers list. You also need to select the SASL login module, security protocol, and SASL mechanism.

###
 How often can the data be updated?

Datasets should be set to update no more than once every 15 minutes.

###
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 What's the difference between the Kafaka SASL and Kafka connectors?

Kafka SASL connector supports Simple Authentication and Security Layer (SASL) to authenticate producers and consumers. You can use SASL to authenticate DOMO with Kafka.

