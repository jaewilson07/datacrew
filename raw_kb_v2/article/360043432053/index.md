

Intro
-------

The Trade Desk is an online demand-side platform that provides buying tools for digital media buyers. Use Domo's The Trade Desk connector to generate reports about ads, audiences, campaigns, and the like. To learn more about The Trade Desk's API, visit their page (

https://api.thetradedesk.com/v3/doc

).


 You connect to your The Trade Desk account in the Data Center. This topic discusses the fields and menus that are specific to the The Trade Desk connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for pulling data about ads and campaigns filtered by one or more advertisers.
  |
|
**Primary Company Roles**
 |
 Marketing roles
  |
|
**Average Implementation Time**
 |
 Less than an hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------


* It is best to select
 **All Advertisers**
 in the
 **Advertiser Type**
 menu instead of choosing to manually select advertisers. This way, as you add/remove advertisers, the DataSet will dynamically grab those advertisers when it runs in the future. That way you don't have to go back and edit your DataSet after you make changes.

Prerequisites
---------------

To connect to your The Trade Desk account and create a DataSet, you must have the following:

 The username and password for your The Trade Desk account
* Your The Trade Desk partner ID

If you do not know any of these credentials, please reach out to your The Trade Desk account representative.


 Connecting to Your The Trade Desk Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the The Trade Desk Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
-------------------


 This pane contains fields for entering credentials to connect to your The Trade Desk account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your The Trade Desk username.
  |
|
 Password
  |
 Enter your The Trade Desk password.
  |
|
 Environment
  |
 Select whether you are using a production or sandbox environment.
  |
|
 Partner ID
  |
 Enter your The Trade Desk partner ID.
  |


 Once you have entered valid The Trade Desk credentials, you can use the same account any time you go to create a new The Trade Desk DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

Details Pane
--------------

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
 Select the The Trade Desk report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ad Formats supported
  |
 Get the Ad Formats supported by The Trade Desk.
  |
|
 Ad Groups with an Advertiser
  |
 Query for a page of Ad Groups within an Advertiser.
  |
|
 Ad Groups with a campaign
  |
 Retrieves ad groups associated with a selected campaign.
  |
|
 Ad Technologies
  |
 Get the available Ad Technologies.
  |
|
 Advertisers
  |
 Retrieves all advertisers that belong to the specified partner.
  |
|
 App Event Tracking for an Advertiser
  |
 Retrieve a list of AppEventTrackers set up for a particular advertiser, along with some basic activity statistics.
  |
|
 Audiences owned by an Advertiser
  |
 Retrieves the Audiences owned by an Advertiser.
  |
|
 Campaigns belonging to an Advertiser
  |
 Retrieves all Campaigns that belong to the specified Advertiser.
  |
|
 Creatives belonging to an Advertiser
  |
 Retrieves all of an advertiser's creatives.
  |
|
 Data Groups owned by an Advertiser
  |
 Retrieves all the Data Groups owned by an Advertiser
  |
|
 First Party Data by Advertiser
  |
 Get the First Party Data that matches the query.
  |
|
 Geo Segments available to an Advertiser
  |
 Retrieves all the Geo Segments available for use by an Advertiser.
  |
|
 My Reports - Advertisers
  |
 Downloads the selected report for the selected advertiser ids and date range.
  |
|
 My Reports - Advertisers Schedule Creation
  |
 Create report schedule and download the scheduled report for selected advertiser ids and the date range.
  |
|
 My Reports - Partner Execution Report
  |
 Downloads the selected report for the selected date range.
  |
|
 Right Media Offer Types
  |
 Retrieves all the Right Media Offer Types.
  |
|
 Site Lists Summaries belonging to an Advertiser
  |
 Retrieves summaries of the Site Lists that belong to an Advertiser.
  |
|
 Summaries IP Targeting List for an Advertiser
  |
 Get summaries of the IP Targeting Lists that belong to an Advertiser.
  |
|
 Supply Vendors
  |
 Get the Supply Vendors available to this Partner
  |
|
 Third Party Data by Advertiser
  |
 Retrieves the facets of Third Party Data that can be retrieved and/or queried by the Advertiser
  |
|  |  |

|
|
 Advertiser Type
  |
 Select whether you want your report to retrieve data for all advertisers or only those you select.
  |
|
 Select Advertiser
  |
 Select whether to retrieve all or some advertiser.
  |
|
 Advertiser
  |
 Select all of the advertisers you want to retrieve data for.
  |
|
 Campaign
  |
 Select the campaign you want to retrieve data for.
  |
|
 Enter Report Name
  |
 Make sure to enter the correct report name as it is case sensitive.
  |
|
 Scope
  |
 Select the scope for the report, either
 **Advertiser**
 or
 **Partner**
 .
  |
|
 Number of Days Back
  |
 Enter the number of past days you want to pull information for.
  |
|
 Specific Date
  |
 Select the date you want to retrieve information for.
  |
|
 Delimiting character
  |
 Select the delimiting character used in your file. If your delimiter is not listed select 'Other'
  |
|
 Specify your delimiter

|
 Enter the character used to delimit your character separated values (CSV) text.
  |
|
 Quote Character

|
 Select the desired quote character for parsing CSV files. (A double quote is the CSV standard.)
  |
|
 Custom Quote Character

|
 Enter the desired CSV Quote character.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 What kind of credentials do I need to power up this connector?

You need the login username, password, and partner id associated with your The Trade Desk account. If you do not know any of these credentials, please reach out to your Trade Desk account representative.

###
 Can I use the same account multiple times to create datasets?

Yes

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------

If you run into issues, try going into the
 **Accounts**
 page in Domo and making sure the account you linked is still validated. If not, revalidate it.

