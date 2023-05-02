

Intro
-------

MQTT is a publish/subscribe, extremely simple and lightweight messaging protocol, designed for constrained devices and low-bandwidth, high-latency or unreliable networks. The MQTT Subscription Connector is designed for those who have their own MQTT broker and want the Subscriber to subscribe to an existing topic. Use this connector to see you MQTT data in real time, from hundreds of devices.


 You connect to your MQTT Subscription account in the Data Center. This topic discusses the fields and menus that are specific to the MQTT Subscription connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MQTT Subscription account and create a DataSet, you must have the following:

 The host for the MQTT Broker
* The port number. Typically this will be 1883 for non-SSL or 8883 for SSL.
* The username and password used for the MQTT Broker

Connecting to Your

MQTT Subscription

Account
----------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

MQTT Subscription

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

MQTT Subscription

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Broker Host
  |
 Enter the host for the MQTT Broker.
  |
|
 Port
  |
 Enter the port number. Typically this will be 1883 for non-SSL or 8883 for SSL.
  |
|
 Username
  |
 Enter the username used for the MQTT Broker.
  |
|
 Password
  |
 Enter the password used for the MQTT Broker.
  |

Once you have entered valid

MQTT Subscription

credentials, you can use the same account any time you go to create a new

MQTT Subscription

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the

MQTT Subscription

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Subscriptions
  |
 Gets the subscriptions that the subscriber has subscribe to.
  |

|
|
 MQTT Topics, Comma Delimited
  |
 These are the messages the subscriber will subscribe to. Mosquitto is the standard and can provide more information about setting up wildcards.
  |
|
 Include Metadata About the Request, Including the Topic And Timestamp
  |
 Select 'Yes' if you wish to include the metadata about the request, including the topic and timestamp; otherwise, select 'No.'
  |
|
 Enable Flattening
  |
 Select the checkbox to expand the list in the response.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

How much data can I send in one packet?

The recommended data size is 100k.

###

What type of security is best to use in the MQTT Subscription Connector?

The most secure approach is to use SSL on the host URL, and a username and password. Neither are required, but they are encouraged.

###

Does this Connector require HTTPS or SSL encryption from the data providers?

HTTPS or SSL encryption are not required from the data providers.

###

What kind of credentials do I need to power up this connector?

You need the host, port number, and the username and password used for the MQTT Broker. The port will be 1883 for non-SSL or 8883 for SSL.


