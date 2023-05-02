

Intro
-------


 AzureIotHub Hub is a managed service, hosted in the cloud, that acts as a central message hub for bi-directional communication between an IoT application and the devices it manages. Azure IoT Hub can be used to build IoT solutions with reliable and secure communications between millions of IoT devices and a cloud-hosted solution backend.

The AzureIotHub Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking


**Cloud App**


 in the toolbar at the top of the window.


 You connect to your AzureIotHub account in the Data Center. This topic discusses the fields and menus that are specific to the


 Connector user interface. GenAzureIotHuberal information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AzureIotHub account and create a DataSet, you must have the following:

 An active

Azure account

. If you don't have one, you can

create a free account

.
* A

Translator

resource.
* A


**standard performance**

Azure Blob Storage account

. You'll create containers to store and organize your files within your storage account. If you don't know how to create an Azure storage account with a storage container, follow these quickstarts:

+ Create a storage account

 . When you create your storage account, select


	**Standard**


	 performance in the


	**Instance details**


	 >


	**Performance**


	 field.
	+ Create a container

 . When you create your container, set

 the

**Public access level**


	 to


	**Container**


	 (anonymous read access for containers and files) in the


	**New Container**


	 window.

Connecting to Your

AzureIotHub Connector

Account
----------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the AzureIotHub Connector page. The components of the other panes in this page,


**Scheduling**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo

AzureIotHub

Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select


**Add Account**


 if you have existing

AzureIotHub

accounts in Domo) to open the

AzureIotHub

OAuth screen where you can enter your

AzureIotHub

username and password. Once you have entered valid

AzureIotHub

credentials, you can use the same account any time you go to create a new

AzureIotHub

DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

AzureIotHub

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of

AzureIotHub.

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

AzureIotHub

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|


 Get Configurations
  |

Get multiple configurations for devices or modules of an IoT Hub.

|
|
 Get Devices
  |

Get the identities of multiple devices from the IoT hub identity registry.

|
|
 Device Registry Statistics
  |

Retrieves statistics about device identities in the IoT hubs identity registry.

|
|
 Get Job Details
  |

Retrieves details of a scheduled job from an IoT hub.

|
|


 Get Modules on Device
  |

Retrieve all the module identities on the device.

|
|
 Get Module Twin
  |

Gets a module twin.

|
|
 Query IoT Hub
  |

Query an IoT hub to retrieve information regarding device twins using a SQL-like language.

|
|
 Query Jobs
  |

Query an IoT hub to retrieve information regarding jobs using the IoT Hub query language.

|
|
 Service Statistics
  |

Retrieves service statistics for this IoT hubs identity registry.

|
|
 Twin


 |

Gets a device twin.

|

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What is the base URL of the Connector?

The base URL of the connector is

https://<fully-qualified-iothubname>.azure-devices.net


 /


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Get Configurations
  |
 /configurations/{id}
  |
|
 Get Devices
  |
 /devices/{deviceId}
  |
|
 Device Registry Statistics
  |
 /statistics/devices
  |
|
 Get Job Details
  |
 /jobs/v2/{jobId}
  |
|
 Get Modules on Device
  |
 /devices/{deviceId}/modules
  |
|
 Get Module Twin
  |
 /twins/{deviceId}/modules/{mid}
  |
|
 Query IoT Hub
  |
 /devices/query
  |
|


 Query Jobs
  |
 /jobs/v2/query
  |
|
 Service Statistics
  |
 /statistics/service
  |
|
 Twin


 |
 /twins/{deviceId}
  |


####
 What kind of credentials do I need to power up this Connector?

To connect to AzureIotHub account you may need the following:

  |  |
| --- | --- |
| **Parameter Name**  | **Where to find it**  |
|
 Shared Access Key Name
  |
 It is generated by Azure & will be used for Web UI login
  |
|
 Shared Access Key
  |
 It is generated by Azure & will be used for Web UI login
  |
|
 Host Name
  |
 It is generated by Azure & will be used for Web UI login
  |


####
 How do I know my AzureIotHub Connector credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account to set up the Connector?


####
 Are there any API limits I should be aware of?


 Resource Manager applies a limit on the number of requests per hour to prevent an application from sending too many requests. If the application exceeds those limits, requests are throttled. The response header includes the number of remaining requests for the scope.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


