

Intro
-------

Procore allows large teams of construction companies, property owners, project managers, contractors, and partners to collaborate on large-scale construction projects and share access to documents, planning systems and data. To learn more about the Procore API, visit their page (

https://www.procore.com/platform/procore-connect.php

).


 You connect to your Procore account in the Data Center. This topic discusses the fields and menus that are specific to the Procore connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Procore account and create a DataSet, you must the email address you use to log into Procore, along with your Procore password.


 Connecting to Your Procore Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Procore Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Procore connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Procore accounts in Domo) to open the Procore OAuth screen where you can enter your Procore email address and password. Once you have entered valid Procore credentials, you can use the same account any time you go to create a new Procore DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

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
 Select the Procore report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 ​​All Activity Details
  |
 Returns activity details of all RFIs from all projects of a company.
  |
|
 ​​All RFI Replies
  |
 Returns replies of all RFIs from all projects of a company.
  |
|
 ​​Budget ​Items
  |
 Returns a list of all Budget Line Items.
  |
|
 ​​Calendar ​Events
  |
 Returns a list of all Calendar Events for a specified project.
  |
|
 ​​Change ​Orders
  |
 Returns a list of all Change Orders for a specified contract in a project.
  |
|
 ​​Change ​Orders ​Requests
  |
 Returns a list of all Change Orders Requests (COR) for a specified contract in a project.
  |
|
 Change Order Request Details
  |
 Returns detailed information about Change Order Request (COR) for a specified contract in a project.
  |
|
 ​​Change Reason ​Templates
  |
 Returns a list of Change Reasons for change orders.
  |
|
 ​​Checklist ​Templates
  |
 Returns a list of all Inspection Checklist Templates for a specified Project.
  |
|
 ​​Checklists
  |
 Returns a list of all Inspection Checklist for a specified Project.
  |
|
 ​​Companies
  |
 Returns a list of Companies visible by the authenticated user.
  |
|
 ​​Company ​Insurances
  |
 Returns a list of all Insurances associated with the specified Company.
  |
|
 ​​Company ​Users
  |
 Returns a list of all Users associated with a Company.
  |
|
 ​​Company ​Vendor ​Insurances
  |
 Returns a list of Insurances from the specified Company Vendor.
  |
|
 ​​Company ​Vendors
  |
 Returns a list of all Vendors associated with a Company.
  |
|
 ​​Contract ​Payments
  |
 Returns a list of Contract Payments.
  |
|
 ​​Cost ​Codes
  |
 Returns a list of all Standard Cost Code Lists at the Company level.
  |
|
 ​​Direct ​Costs
  |
 Returns a list of all Direct Cost Items for a Project.
  |
|
 ​​Drawing ​Areas
  |
 Returns a list of all Drawing Areas in the specified Project.
  |
|
 ​​Drawings
  |
 Returns a list of all Drawings for a specified drawing area.
  |
|
 ​​Environmentals
  |
 Returns a list of Environmental records for a given project.
  |
|
 ​​Equipment
  |
 Returns a list of all Project Equipment.
  |
|
 ​​Harm Sources
  |
 Return a list of all Harm Sources associated with a Company.
  |
|
 ​​Incidents
  |
 Returns a list of Incidents for a given project.
  |
|
 ​​Injuries
  |
 Returns a list of Injuries for a given project.
  |
|
 ​​Inspectors (checklists)
  |
 Returns a list of Possible Inspectors in a specified Project.
  |
|
 ​​Line ​Item ​Types
  |
 Returns a list of all defined Line Item Types.
  |
|
 ​​Locations
  |
 Returns a list of Locations associated with a Project.
  |
|
 Manpower ​Logs
  |
 Returns all approved Manpower Logs for the specified date.
  |
|
 ​​Meetings
  |
 Returns a list of all Meetings for a specified Project.
  |
|
 ​​Meetings ​Categories
  |
 Returns all Meeting Categories for a given Meeting.
  |
|
 ​​Near Misses
  |
 Returns a list of Near Misses for a given project.
  |
|
 ​​Notes ​Logs
  |
 Returns all Notes Logs for the current date.
  |
|
 ​​Photo ​Albums
  |
 Returns a list of all Photo Albums (Image Categories) in a specified project.
  |
|
 ​​Photos
  |
 Returns a list of all Images from a Project's Photo Album (Image Category).
  |
|
 ​​Plan ​Revision ​Logs
  |
 Returns all Plan Revision Logs for the current date.
  |
|
 ​​Potential ​Change ​Orders
  |
 Returns a list of all Potential Change Orders (PCO).
  |
|
 Potential Change Order Details
  |
 Returns detailed information about a Potential Change Order(PCO).
  |
|
 ​​Prime ​Contract (​Attachment)
  |
 Returns the Prime Contract for the specified Project and associated Attachments.
  |
|
 ​​Prime ​Contract (​Change ​Orders)
  |
 Returns the Prime Contract for the specified Project and associated Change Orders.
  |
|
 ​​Prime ​Contract (​Line ​Items)
  |
 Returns the Prime Contract for the specified Project and associated Line Items.
  |
|
 ​​Prime ​Contract (​Order ​Packages)
  |
 Returns the Prime Contract for the specified Project and associated Order Packages.
  |
|
 ​​Prime ​Contract (​Order ​Requests)
  |
 Returns the Prime Contract for the specified Project and associated Order Requests.
  |
|
 ​​Prime ​Contract (​Payment ​Received)
  |
 Returns the Prime Contract for the specified Project and associated Payments Received.
  |
|
 ​​Programs
  |
 Returns a list of Programs associated to the specified Company.
  |
|
 ​​Project ​Dates
  |
 Returns a list of Project Dates.
  |
|
 ​Project ​Details
  |
 Returns details of the specified Project.
  |
|
 ​​Project ​Details (​Budget)
  |
 Returns the budget specific information to the Project Details report.
  |
|
 ​​Project ​Folders
  |
 Returns a list of Folders and Files for a specified Project.
  |
|
 ​​Project ​Insurances
  |
 Returns a list of all Insurances associated with the specified Project.
  |
|
 ​​Project ​Roles
  |
 Returns a list of all defined Project Roles in a specified Project.
  |
|
 ​​Project ​Users
  |
 Returns a list of Users associated with a Project.
  |
|
 ​​Project ​Vendors
  |
 Returns a list of Vendors associated with a specified Project.
  |
|
 ​​Projects
  |
 Returns a list of active Projects.
  |
|
 ​Property Damages
  |
 Returns a list of Property Damage records for a given project.
  |
|
 ​​Punch ​Item ​Types
  |
 Returns a list of all Punch Item Types on a specified Project.
  |
|
 ​​Purchase ​Order ​Contract
  |
 Returns a list of all Purchase Order Contracts.
  |
|
 ​​Quantity ​Logs
  |
 Returns all Quantity Logs for the current date.
  |
|
 ​​Recently ​Updated ​Photos
  |
 Returns a list of the most recently updated photos for a specified Project.
  |
|
 ​​RFIs
  |
 Returns all RFIs in a specified Project.
  |
|
 ​​Standard ​Cost ​Code ​Lists
  |
 Returns a list of all Standard Cost Code Lists at the Company level.
  |
|
 ​​Standard ​Cost ​Codes
  |
 Returns a list of all Standard Cost Codes in a specified Standard Cost Code list.
  |
|
 ​​Submittals
  |
 Returns a list of all Submittals from a specified Project.
  |
|
 ​​Time​Card ​Entries
  |
 Returns a list of all Timecard Entries for the current date.
  |
|
 ​​Time​Card ​Time ​Types
  |
 Returns a list of all Timecard Time Types for a specified Project.
  |
|
 ​​Trades
  |
 Returns a list of all Trades associated with a Company.
  |
|
 ​​Visitor ​Logs
  |
 Returns all Visitor Logs for the current date.
  |
|
 ​​Waste ​Logs
  |
 Returns all Waste Logs for the current date.
  |
|
 ​​Work ​Logs
  |
 Returns all Work Logs for the current date.
  |
|
 ​​Work ​Order ​Contract
  |
 Returns a list of all Work Order Contracts of a specified Project.
  |

|
|
 Company
  |
 Select the company you want to retrieve information for.
  |
|
 Sub Report
  |

Choose the sub list to flatten.

|
|
 Project Filter
  |
 Specify whether you want to retrieve data for all projects, active projects only, or inactive projects only.
  |
|
 Project
  |
 Select the project you want to retrieve information for.
  |
|

Contract

|
 Select the contract you want to retrieve information for.
  |
|

Contract Selection Method

|
 Choose the method to select contracts. This discovery will return a list of contracts. Manual entry will allow you to enter a Contract ID.
  |
|

Contract ID

|
 Enter the Contract ID.
  |
|
 PCO Id Selection Method


 |
 Choose the method to select PCO Ids. Selecting "All" will returns data for all PCO Ids. Selecting "Manual" will return a list of PCO Ids for entered contract Id.
  |
|
 PCO ID
  |
 Select PCO Id to run the report for.
  |
|
 COR ID Selection Method
  |
 Choose the method to select COR Ids. Selecting "All" will returns data for all COR Ids. Selecting "Manual" will return a list of COR Ids for entered contract Id.
  |
|
 COR ID
  |
 Select COR Id to run the report for.
  |
|
 Company Vendor
  |
 Select the vendor you want to retrieve information for.
  |
|
 Drawing Area
  |
 Select the drawing area you want to retrieve information for.
  |
|
 Meetings
  |
 Select the meeting you want to retrieve information for.
  |
|
 Album
  |
 Select the album you want to retrieve information for.
  |
|
 Standard Cost Code
  |
 Select the standard cost code list you want to retrieve information for.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|

Number of photos

|

Enter the numbers of recent photos you want to retrieve.

|
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

