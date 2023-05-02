

Intro
-------

Yelp publishes crowd-sourced reviews about local businesses, as well as the online reservation service Yelp Reservations and online food-delivery service Eat24.  To learn more about the Yelp API, visit their page (

https://www.yelp.com/developers

).


 You connect to your Yelp account in the Data Center. This topic discusses the fields and menus that are specific to the Yelp connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Yelp account and create a DataSet, you must have a Yelp API key.


 You can find your API key by going to

https://www.yelp.com/developers/v3/manage\_app

.


 Connecting to Your Yelp Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Yelp Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Yelp account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter the API key for your Yelp account.
  |


 Once you have entered valid Yelp credentials, you can use the same account any time you go to create a new Yelp DataSet. You can manage connector accounts in the
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
 Select the Yelp report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Business Information
  |
 Get data for a specific business, including name, address, phone number, photos, Yelp rating, price levels and hours of operation.
  |
|
 Reviews
  |
 Retrieve up to 3 review excerpts for selected businesses.
  |
|
 Search
  |
 Search for businesses by keyword, category, location, price level, etc. This will return up to 1000 businesses.
  |
|
 Search by Phone
  |
 Search for businesses by phone number.
  |

|
|
 Ignore Errors?
  |
 If you select
 **True**
 , errors will be ignored, and data will continue to be collected.
  |
|
 Business ID
  |
 Enter the ID or a comma-separated list of IDs for the businesses you want to retrieve data for. You can find business IDs by using the "Search" report to pull data for desired businesses.
  |
|
 Search Term
  |
 Enter the terms or business names you want to retrieve data for.
  |
|
 Location
  |
 Enter the name of the geographic area you want to retrieve data for. This can be an address, neighborhood, city, state, or zip code. This is required if
 **Latitude**
 and
 **Longitude**
 are not specified.
  |
|
 Latitude
  |
 Enter the latitude of the geographic area you want to retrieve data for. Required (along with
 **Longitude**
 ) if
 **Location**
 is not specified.
  |
|
 Longitude
  |
 Enter the longitude of the geographic area you want to retrieve data for. Required (along with
 **Latitude**
 ) if
 **Location**
 is not specified.
  |
|
 Radius (in Meters)
  |
 Enter the radius of the area you want to retrieve data for. This value is in meters from your
 **Latitude**
 and
 **Longitude**
 coordinates. The maximum value is 40,000 meters (25 miles).
  |
|
 Categories
  |
 Select the categories of businesses you want to retrieve data for. You can select multiple categories.
  |
|
 Sort By
  |
 Select how you want your returned data to be sorted.
  |
|
 Locale
  |
 Select the locale you want to retrieve data for.
  |
|
 Price
  |
 Select the price range you want to retrieve data for.
  |
|
 Attributes
  |
 Select additional filters for your search results.
  |
|
 Phone Number
  |
 Enter the phone number of the business you want to retrieve data for. You can also retrieve data for multiple phone numbers by separating them with commas. Phone numbers must start with + and include the country code.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

Yelp allows 5,000 calls per day. Daily limits are reset every midnight, UTC time.

