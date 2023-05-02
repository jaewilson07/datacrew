

Intro
-------


 Particle.io

is a manufacturer of Internet-connected hardware and microcontrollers. Particle allows developers, hardware engineers, and DIY makers to build Internet-connected devices via WiFi, Cellular and Mesh connectivity. To learn more about the Particle API, visit their page (

https://docs.particle.io/reference/device-cloud/api/

).


 You connect to your Particle account in the Data Center. This topic discusses the fields and menus that are specific to the Particle connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Particle account and create a DataSet, you must have a Particle access token. For help generating a token, please consult the

Particle.io API documentation

.


 Connecting to Your Particle Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Particle Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Particle account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Token
  |
 Enter your Particle access token. For help generating a token, please consult the

Particle.io API documentation

.
  |


 Once you have entered valid Particle credentials, you can use the same account any time you go to create a new Particle DataSet. You can manage connector accounts in the
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
 Select the Particle report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get All Historical Device Vitals
  |
 Returns all available historical device vitals information.
  |
|
 Get Cellular Network Status
  |
 Returns information about Particle IoT cellular network status.
  |
|
 Get Data Usage for Product Fleet
  |
 Returns information about data usage costs for your Particle IoT products.
  |
|
 Get Device Information
  |
 Returns detailed information about Particle IoT devices.
  |
|
 Get Last Known Device Vitals
  |
 Returns device vitals information from the last connection to the cloud for your Particle IoT devices.
  |
|
 Get Sim Information
  |
 Returns detailed information about Particle IoT device SIM cards.
  |
|
 Get Variable Value
  |
 Returns the value of a cloud variable you specify.
  |
|
 List Customers for a Product
  |
 Returns information about your Particle IoT product customers.
  |
|
 List Device Groups
  |
 Returns information about product device groups.
  |
|
 List Devices
  |
 Returns information about Particle IoT devices.
  |
|
 List Devices in a Product
  |
 Returns information about your Particle IoT devices you have assigned to a product.
  |
|
 List Product Firmwares
  |
 Returns information about product firmware.
  |
|
 List Products
  |
 Returns information about your Particle IoT products.
  |
|
 List Sim Cards
  |
 Returns information about Particle IoT device SIM cards.
  |

|
|
 Devices
  |
 Select the devices you want to retrieve data for.
  |
|
 Variable Name
  |
 Select the variable you want to retrieve data for. Variable names must correspond to the devices you select in the
 **Devices**
 menu. If there are no variables listed, return to the
 **Devices**
 menu and choose devices with the same variable names.
  |
|
 Data Selection
  |
 Select the desired data type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

