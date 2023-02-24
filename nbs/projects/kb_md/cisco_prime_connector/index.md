---
title: Cisco Prime Connector
url: https://domo-support.domo.com/s/article/360043433173
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433173](https://domo-support.domo.com/s/article/360043433173)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003591
views: 1,083
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Cisco Prime is a network management software suite that simplifies the management of wireless and wired networks.   To learn more about the Cisco Prime API, visit their page (<https://developer.cisco.com/site/prime-infrastructure/documents/api-reference/rest-api-v3-0/>).


You connect to your Cisco Prime account in the Data Center. This topic discusses the fields and menus that are specific to the Cisco Prime connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Cisco Prime account and create a DataSet, you must have the following:


* The username and password for your Cisco Prime account
* The hostname or IP address of the Cisco Prime instance


Connecting to Your Cisco Prime Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Cisco Prime Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Cisco Prime account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Host | Enter the hostname or IP address for the Cisco Prime instance. |
| Username | Enter the username for your Cisco Prime account. |
| Password | Enter the password for your Cisco Prime account. |


Once you have entered valid Cisco Prime credentials, you can use the same account any time you go to create a new Cisco Prime DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Cisco Prime report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Access Points | Returns data about wireless access points, both unified and autonomous. Provides device attributes such as type, version, association controller, number of associated clients, etc. |
| Access Point Details | Returns details about wireless access points. Provides basic attributes, inventory, CDP, client and other information. |
| Alarms | Returns a list of alarms—representations of a fault or change of state that occurred in the managed system.  |
| API Calls per Client | Returns the IP addresses of all clients using either all services or the specified service over the last 24 hours. |
| API Health Records | Returns API performance and diagnostic information. |
| API Response Time Summary | Returns summarized information about response times for each service. |
| Client Counts | Returns the number of clients counted during the last polling cycle. |
| Client Details | Returns the detail view of a given client. It provides attributes of client device, security information, connected device, traffic and session information. All information is collected in the current or last session. |
| Client Historical Statistics | Returns client statistics collected in the last 24 hours with a 15- minute (default) interval.  |
| Clients | Returns client data with information about the end points such as MAC address, IP address, username, and status. |
| Client Sessions | Returns details about client sessions. It provides device- and session-related attributes including security, connected device, session time, traffic, etc. |
| Client Statistics | Returns client statistics data collected during the last polling cycle.  |
| Client Traffic | Returns a client's traffic information collected during the last polling cycle. |
| CLI Templates | Returns CLI configuration templates. |
| CLI Template Configuration Folders | Returns a list of CLI template configuration folders. |
| Device Availabilty | Returns device availability data for a given IP address. |
| Device Availability Summary | Returns a device availability summary. |
| Device Health Information | Returns health information for a given device. |
| Device Reachability Status | Returns the reachability status for a given device. |
| Devices | Returns device view data with information about the managed network elements. |
| Device Types | Returns the list of device types you can specify for a CLI template. |
| Disk Information | Returns capacity and usage information for the volumes present on the application's server. |
| Events | Returns a "normalized" record of an occurrence reported by the network (or any system capable of notifying of such an occurrence). |
| Generate Report from Template | Lets you pull a Cisco Prime report from a saved template. |
| Group Sites | Returns list of locations, including the count of alarms of each severity for each group. Also includes counts of devices, APIs and clients associated with the location, and location information regarding the location. |
| Historical Client Counts | Returns client counts collected in the last 24 hours with a 5-minute (default) interval.  |
| Historical Client Traffic | Returns client traffic information collected in the last 24 hours with a 15-minute (default) interval. |
| Interface Utilization Summary | Returns the interface utilization summary. |
| Number of Users | Returns the number of users for an application. |
| Report Templates | Returns saved report templates. |
| Request Count Thread | Returns the number of requests, grouped by day and HTTP status, for all services or a given service if specified, over the last seven days. |
| Response Time Trend | Returns the data for each request over the last 24 hours, showing the response time and the time the request was received, either for all services or for the specified service. |
| Service Name List | Returns the list of services for which there are ApiHealthRecords. |
| System Logs | Returns syslog data. Syslogs are the standard method for logging messages such as system events in an IP network. |
| System Health Statistics | Returns system health statistics. |
| System Information Statistics | Returns system information statistics. |
| Traffic Analysis | Returns the traffic analysis for a given application. |
| Uptime Information | Returns uptime information as well as information about the application and the server it runs on. |
| User Defined Groups | Returns the list of user-defined groups for both Network Device Groups and Port Groups, including the count of alarms of each severity for each group. |
| WLC Utilizations | Returns the latest CPU and memory utilization collected from a WLAN controller. |

 |
| IP Address | Enter the IP address of the device you want to retrieve information for. |
| Report Template | Select the saved report template you want to generate a DataSet from. |
| Type | Select the type of statistics you want to retrieve, either simple or detailed. |
| Date Type | Select whether you want to retrieve data for a single date or a date range. |
| Date | Select the date you want to pull information for. |
| Date Offset | Enter the number of days back you want to pull data for each time this report is run. |
| Date From | Select the first date in your date range. |
| Date From Offset | Enter the number of days back from the first date in your date range you want to pull data for each time this report is run. |
| Date To | Select the last date in your date range. |
| Date To Offset | Enter the number of days back from the last date in your date range you want to pull data for each time this report is run. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector")

