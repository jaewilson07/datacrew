

Intro
-------


 Splunk provides the leading platform for operational intelligence. Customers use Splunk to search, monitor, analyze and visualize machine data.

Use Domo's

Splunk

Writeback Connector to push data from a Domo DataSet to

Splunk

. To learn more about the

Splunk

API, visit their page (

http://dev.splunk.com/restapi

).


 You configure your Domo-

Splunk

connection in the Data Center. This topic discusses the fields and menus that are specific to the

Splunk

Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have the following:

 Your Domo Developer account credentials (client ID and client Secret)
* Your host name
* Your port number
* Your HTTP

event collector token


#####
 To obtain your Domo developer credentials, do the following:


1. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .


 Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Splunk

Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the

Splunk

account where you want your data to be copied to. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |
|
 Splunk Host Name
  |

Enter your host name.


**Note**

- Do not include

*https://**

or

*http://**

.


 Example: "

subdomain.domain.info

"

|
|
 Port
  |

Enter the port number.

|
|
 HTTP Event Collector Token
  |

Enter the event collector token.

|


 Once you have entered valid credentials, you can use the same account any time you go to set up a new

Splunk

Writeback DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Splunk Index Name
  |
 Enter your Splunk instance index name.
  |
|
 Source
  |

Enter the domo source name.

*Example:**


 customername.domo.com


 |
|
 Start Date Type
  |
 Select the Start date selection type.
  |
|
 Start Date
  |
 Select the start date from which you want to start fetching data.
  |
|
 Start Date Offset
  |
 Select the number of days back from which you want to start fetching data. For example, Enter 0 for today.
  |
|
 End Date Type

|
 Select the End date selection type.
  |
|
 End Date

|
 Select the End Date.
  |
|
 End Date Offset

|
 Select the number of days back till which you want to fetch data. For Example, enter 0 for today.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need your Domo Developer account credentials (client ID and client Secret), host name, port number, and HTTP event collector token.

###
 How often can the data be updated?

Datasets should be set to update no more than once every 15 minutes.

###
 Are there any API limits that I need to be aware of?

No

###
 What's the Source?

You need to provide the source location (in Domo) from where you want to fetch the activity logs for your user.

