

Intro
-------

BambooHR consolidates all of your employee information from all of your locations into a single view. You can then access, control, sort, analyze, and take action on the data instantly-from your office, the road or home. The connector enables all those reports to be easily imported into Domo.  For more information about the BambooHR API, visit their website. (

http://www.bamboohr.com/api/documentation/

)


 You connect to your BambooHR account in the Data Center. This topic discusses the fields and menus that are specific to the BambooHR connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for returning head count, payroll, and recurring reporting.
  |
|
**Primary Metrics**
 | * Employee demographics
* Salary information
* Custom reports
 |
|
**Primary Company Roles**
 | * VP
* HR director
 |
|
**Average Implementation Time**
 |
 20 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Do not bring in Personally Identifiable Information (PII) into Domo. Limit those columns and the number of columns by using the Report Fields selector.


 Prerequisites
---------------

To connect to your BambooHR account and create a DataSet, you must have the following:

 Your company domain name or the URL of your company BambooHR instance. This is the same URL you use to log in to the BambooHR web interface. For example:

https://companydomainname.bamboohr.com
* Your BambooHR API key. To generate an API key for a given user, do the following:

1. Log in to BambooHR and click your name in the upper right hand corner of any page to access the user context menu.
	2. Click
	 **API name**
	 in the upper right hand corner of any page to access the user context menu.
	3. Click
	 **API Keys**
	 to open a page in which you can generate an API key.


	 For more information about API keys, see

 http://www.bamboohr.com/api/documentation/login.php

 .

Connecting to Your BambooHR Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the BambooHR Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your BambooHR account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Company Domain
  |
 Enter your company domain name or the URL of your company BambooHR instance (such as


 companydomainname.bamboohr.com


 ).
  |
|
 API Key
  |
 Enter your BambooHR API key.
  |


 Once you have entered valid BambooHR credentials, you can use the same account any time you go to create a new BambooHR DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu and two other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the BambooHR report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Employee Data
  |
 Returns data about employees, such as name, address, email, birthday, gender, ethnicity, department, supervisor, etc.
  |
|
 User Data
  |
 Returns data about users of this account, including first and last name, email, status, etc.
  |
|
 Company Report
  |
 Returns a specified company report.
  |

|
|
 Custom Fields
  |
 Select all fields you want to appear in your report.
  |
|
 Company Report ID
  |
 Enter the ID for the company report you want to retrieve. You can find a company report ID by hovering over the report name on your BambooHR
 **Reports**
 page.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Verify the Company Domain Name and API are correct.
* Validate the results by running the report in BambooHR.
* If running a custom report, verify the Report ID is correct.


