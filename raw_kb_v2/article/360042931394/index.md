

Intro
-------

Zillowis a home and real estate marketplace that helps users find and share information about homes, real estate, and mortgages.  To learn more about the Zillow API, visit their page (

https://www.zillow.com/howto/api/APIOverview.htm

).


 You connect to your Zillow account in the Data Center. This topic discusses the fields and menus that are specific to the Zillow connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zillow account and create a DataSet, you must have a Zillow Webservice ID. You can obtain a Webservice ID by registering for an account at

https://www.zillow.com/webservice/Registration.htm

Connecting to Your Zillow Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zillow Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zillow account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Zillow Webservice ID
  |
 Enter your Zillow Webservice ID. For more information about obtaining an ID, see "Prerequisites," above.
  |


 Once you have entered valid Zillow credentials, you can use the same account any time you go to create a new Zillow DataSet. You can manage connector accounts in the
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
 Select the Zillow report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Analytics
  |
 Returns analytics data for the authenticated user.
  |
|
 Comps
  |
 Returns a list of comparable recent sales for a specified property.
  |
|
 Deep Comps
  |
 Returns a list of comparable recent sales for a specified property.
  |
|
 Deep Search Results
  |
 Returns property information for a specified address.
  |
|
 Demographics
  |
 Returns a set of market, affordability, real estate, and demographic data for a specified area.
  |
|
 Monthly Payments
  |
 Returns the estimated monthly payment that includes principal and interest based on today's mortgage rate.
  |
|
 Rate Summary
  |
 Returns the current rates per loan type.
  |
|
 Region Children
  |
 Returns a list of subregions for a specified region or state.
  |
|
 Search Results
  |
 Returns property information for a specified address.
  |
|
 Updated Property Details
  |
 Returns all of the home facts that have been updated by the home's owner or agent for a specified property.
  |
|
 Zestimate
  |
 Finds the zestimate for a specified Zillow property ID.
  |

|
|
 Address
  |
 Enter the address of the property you want to retrieve information for.
  |
|
 City-State/ZIP
  |
 Enter a city and state combination (e.g.

Seattle WA

for Seattle, Washington) and/or ZIP code for the area you want to retrieve information for.
  |
|
 City (Optional)
  |
 Enter the city you want to retrieve information for.
  |
|
 State (Optional for Demographics and Region Children reports)
  |
 Enter the postal abbreviation of the state you want to retrieve information for (e.g.

ID

for Idaho).
  |
|
 Country
  |
 Enter the name of the country you want to retrieve information for.
  |
|
 Price
  |
 Enter the price of the property for which monthly payment data will be calculated.
  |
|
 ZipCode
  |
 Enter the ZIP code of the region you want to retrieve information for.
  |
|
 Zillow Property ID
  |
 Enter the Zillow Property ID for the property you want to retrieve information for. Separate multiple IDs with a comma.
  |
|
 Region ID (Optional)
  |
 Enter the region ID of the region you want to retrieve information for.
  |
|
 Neighborhood (Optional)
  |
 Enter the name of the neighborhood you want to retrieve information for.
  |
|
 Rent Estimate
  |
 Select the rent estimate you want to retrieve data for.
  |
|
 Child Type
  |
 Select the type of subregion you want to retrieve data for.
  |
|
 Down
  |
 Enter the percentage of the total property price that will be placed as a down payment. If you leave this blank, a 20% down payment is assumed. If the down payment is less than 20%, a monthly private mortgage insurance amount is specified for each returned loan type.
  |
|
 Dollars Down
  |
 Enter the dollar amount that will be placed as a down payment. This amount is used for the down payment if the
 **Down**
 option is omitted. If the down payment is less than 20% of the purchase price, a monthly private mortgage insurance amount is specified for each returned loan type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

