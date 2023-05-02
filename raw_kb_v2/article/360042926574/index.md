

Intro
-------


 Conductor Searchlight is used to manage your web presence, allowing you to engage customers throughout their buyers' journey.  To learn more about the Conductor Searchlight API, visit their website (

http://developers.conductor.com

).

The Conductor Searchlight connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You connect to your Conductor Searchlight account in the Data Center. This topic discusses the fields and menus that are specific to the Conductor Searchlight connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is good for retrieving search engine optimization (SEO) metrics.
  |
|
**Primary Metrics**
 | * Keyword rankings
* Competitor rankings
* Search volume
* Tracked searches
 |
|
**Primary Company Roles**
 | * Digital marketing
* SEO analyst
 |
|
**Average Implementation Time**
 |
 5 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------

These reports can power cards individually, but sometimes it is helpful to combine the reports using Magic ETL so you can look at metrics like your keyword ranks compared to your competitor ranks, or to evaluate the search volume of your top ranked keywords. For more information about Magic ETL, see

Magic Transforms


 .


 Prerequisites
----------------


 To connect to your Conductor Searchlight account and create a DataSet, you must have the following:


* The API key for your Conductor Searchlight account
* The Shared Secret for your Conductor Searchlight account


 For questions, please contact your Conductor Searchlight account representative.


 Connecting to Your Conductor Searchlight Account
---------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Conductor Searchlight Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Conductor Searchlight account. The following table describes what is needed for each field:


|

*Field**

|

*Description**

|
| --- | --- |
|

API Key

|

Enter the API key for your Conductor Searchlight account.

|
|

Shared Secret

|

Enter the Shared Secret for your Conductor Searchlight account.

|
|

API Version

|

Select the Conductor Searchlight API version specific to the API Key and Shared Secret you've entered.

|


 Once you have entered valid Conductor Searchlight credentials, you can use the same account any time you go to create a new Conductor Searchlight DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane contains a primary
 **Report**
 menu, along with various menus that may or may not appear depending on the selected report.


|

*Menu**

|

*Description**

|
| --- | --- |
|
 Report
  |

Select the Conductor Searchlight report you want to run. The following reports are available:

  |  |
| --- | --- |
|

Accounts

|

Returns a list of all accounts available to the authenticated user.

|
|

Categories List

|

Returns category names and IDs for all selected accounts.

|
|
 Global Keyword Ranks
  |
 Returns global keyword rankings by domain for all selected accounts
  |
|

Locations

|

Returns a list of all locations with descriptive information.

|
|

Search Volume

|

Returns the average volume and the volume for the last twelve months for all Tracked Search IDs.

|
|

Tracked Searches

|

Returns information about tracked searches by domain for all selected accounts.

|


 |
|

Account List

|

Select all of the accounts you want to retrieve information for. Selecting accounts is optional. If you do not select any accounts, your report pulls information for all accounts.

|
|

Account

|

Select the account you want to retrieve information for.

|
|

Rank Source

|

Select all of the rank sources you want to retrieve information for.

|
|

Web Property

|

Select all of the web properties you want to retrieve information for.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How frequently will my data update?

As often as needed.

####
 Are there any API limits that I need to be aware of?

No.

####
 Can I use the same Conductor Searchlight account for multiple datasets?

Yes.

