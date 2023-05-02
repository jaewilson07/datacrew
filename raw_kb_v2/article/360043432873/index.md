

Intro
-------

Open Exchange Rates provides real-time exchange rates and currency conversion data. Use Domo’s Open Exchange Rates Advanced connector to retrieve the latest exchange rates, historical data for a given day or date range, or a list of world currencies. To learn more about the Open Exchange Rates API, visit their website (

https://docs.openexchangerates.org/

).


 There is also a simplified version of this connector that allows you to see exchange rates for a base world currency. To learn more about this connector, see

Open Exchange Rates Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector returns exchange rate information and lists of world currencies.
  |
|
**Primary Metrics**
 | * World currencies
* Historical exchange rates
* Latest exchange rates
 |
|
**Primary Company Roles**
 | * Sales
* Finance
 |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (in a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

The Open Exchange Rates Advanced connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to Open Exchange Rates in the

Data Center

. This topic discusses the fields and menus that are specific to the Open Exchange Rates Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

The "Currencies" report only returns countries and their associated currency symbols. To pull the conversation rate, you'll need to use the "Latest" or "Time Series Queries" report then join it back to the "Currencies" report using the
 **Currency Symbol**
 field.


 Prerequisites
---------------

None.


 Connecting to Open Exchange Rates
-----------------------------------

This section enumerates the options in the
 **Details**
 pane in the Open Exchange Rates Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select an Open Exchange Rates Advanced report. The following reports are available:


|  |  |
| --- | --- |
|
 Currencies
  |
 Returns a list of world currencies.
  |
|
 Historical Data
  |
 Returns exchange rates for a specific date.
  |
|
 Latest
  |
 Returns a list of the latest exchange rates.
  |
|
 Time Series Queries
  |
 Returns exchange rates for a range of dates.
  |

|
|
 Base Currency
  |
 Enter the three-letter abbreviation for the desired base currency. If you do not enter a base currency, USD will be used by default.
  |
|
 Specific Currencies
  |
 Enter a comma-separated list of three-letter currency abbreviations to request the exchange rates for those currencies. For example:

EGP,CNY,GEL

to return the exchange rates for Egyptian pounds, Chinese yuan, and Georgian lari.
  |
|
 Date
  |
 Enter a date in

yyyy-mm-dd

format to retrieve exchange rates for that date. For example:

2014-08-28

|
|
 Start Days
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with End Days to create a range of represented days. For example, if you entered

10

for Start Days and

5

for End Days, the report would contain data for 10 days ago up until 5 days ago. Enter

0

for today.
  |
|
 End Days
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with Start Days to create a range of represented days. For example, if you entered

10

for Start Days and

5

for End Days, the report would contain data for 10 days ago up until 5 days ago. Enter

0

for today.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Be aware of the API limits for your specific account. Free accounts only allow for 1000 API requests per month.
* Error Code Reference:

https://docs.openexchangerates.org/docs/errors


