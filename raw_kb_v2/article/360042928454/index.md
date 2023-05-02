

Intro
-------

Square, Inc. is a financial services, merchant services aggregator, and mobile payments company. To learn more about the Square API, go to

https://docs.connect.squareup.com/

.


 This connector is useful when you have Domo DataSets from different Square accounts that require separate authentication.


 You configure the connection to your Square DataSets in the Data Center. This topic discusses the fields and menus that are specific to the Square DataSet Union connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to existing Square DataSets in Domo and create a new DataSet, you must have a Domo access token as generated under
 **Admin > Security**
 . This requires Admin privileges in Domo. For more information, see

Managing Access Tokens

.


 Combining Square DataSets
---------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Square DataSet Union Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 In this pane, you enter your Domo access token so you can connect to your existing Square DataSets.


|

Field

|

Description

|
| --- | --- |
|
 Access Token
  |
 Enter your Domo access token, which you generate in
 **Admin > Security**
 . This requires Admin privileges in Domo. For more information, see

Managing Access Tokens

.
  |


 Once you have entered a valid access token, you can use the same account any time you go to create a new Square DataSet Union DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains menus in which you select the report type and configuration of the Square DataSets you want to join. Once you have selected the report type and configuration, you can either choose to join all matching Square DataSets in your Domo instance or select the specific ones to join.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Square report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Orders
  |
 UNIONs all or selected "Orders" reports with the selected configuration. Configurations include "Discounts," "Line Items," "Refunds," "Returns," "Order Entries," and "None."
  |
|
 Payments
  |
 UNIONs all or selected "Payments" reports with the selected configuration. Configurations include "Processing Fee" and "None."
  |
|
 Settlement Entries
  |
 UNIONs all or selected "Settlement Entries" reports with the selected configuration. Configurations include "Failed" and "Sent."
  |
|
 Settlements
  |
 UNIONs all or selected "Settlements" reports with the selected configuration. Configurations include "Failed" and "Sent."
  |

|
|
 Configuration
  |
 Select the desired configuration for your report.
  |
|
 DataSets to Join
  |
 Select whether you want to join ALL matching DataSets or choose specific DataSets from a list (
 **Discover**
 ).
  |
|
 DataSets
  |
 Select the DataSets you want to join. If there are no matches for the selected report/configuration combination in your Domo instance, nothing appears here.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 What kind of credentials do I need to use this connector?

You must have a Domo access token as generated under
 **Admin > Security**
 . This requires Admin privileges in Domo. For more information, see

Managing Access Tokens

.

####
 When should I use this connector?

This connector is useful when you have Domo DataSets from different Square accounts that require separate authentication.

