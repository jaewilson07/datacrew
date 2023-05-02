

Intro
-------

DHL is the global market leader in the logistics industry. DHL commits its expertise in the International express deliveries; global freight forwarding by air, sea, road and rail; warehousing solutions from packaging, to repairs, to storage; mail deliveries worldwide; and other customized logistic services. Use Domo's DHL Writeback connector to get detailed tracking status information for your tracking numbers. To learn more about the DHL API, visit their page

https://www.dhl.com/global-en/home/our-divisions/ecommerce/integration/api.html

.


 You connect to your DHL Writeback account in the Data Center. This topic discusses the fields and menus that are specific to the DHL Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To connect to your DHL Writeback account and get detailed tracking status information for your tracking numbers, you must have the following:

 DHL API key (Consumer Key)

Please find below the steps to get the DHL API key:


 1) Create an


**Active customer account**


 with


**DHL Express**
 .


 2) Select the


**API service type**


 from the API dropdown and then click on the Invoice push API (

https://developer.dhl.com/api-catalog?f%5B0%5D=api\_catalog\_service%3A40

).


 3) In the Authentication, section click on the


**My app screen**


 link and create a new app.


**To view your API credentials :**

 From the My Apps screen, click on the name of your app.


 The Details screen appears.
* If you have access to more than one API, click the name of the relevant API.


**Note:**

The APIs are listed under the “Credentials” section.
* Click the Show link below the asterisks that are hiding the Consumer Key.


 The Consumer Key appears.

Connecting to Your DHL Writeback Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

DHL Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains the credentials required to connect to your

DHL Writeback

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 DHL API Key
  |
 Enter your Consumer Key
  |


 You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains the input fields that get detailed tracking status information for your tracking numbers.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter your Domo dataset ID (GUID) located in the dataset url. Example-

https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/settings
  |
|
 Tracking Number Column Name
  |
 Enter the column name of the tracking numbers.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

