

Intro
-------


 Google Analytics 4 Beta connector generates detailed website traffic stats to help measure sales and conversions. Use this Connector to efficiently generate reports about campaign, device, location, social network, and traffic metrics to make sure the customer behavior you're seeing now translates to sales and revenue down the line.


 The Google Analytics Data API (GA4) allows programmatic access to Google Analytics 4 (GA4) report data.


 Google Analytics 4 Beta connector generates detailed website traffic stats to help measure sales and conversions. Use this Connector to efficiently generate reports about campaign, device, location, social network, and traffic metrics to make sure the customer behavior you're seeing now translates to sales and revenue down the line.


 Improve sales and conversions by connecting your Google Analytics data and combining it with other key data sources.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Understanding visitor traffic patterns on your website
* Understanding visitor behavior patterns on your website
* Understanding the relationship between geography and user behavior on your website
* Understanding the difference between user behavior on mobile devices vs. desktop browsers
* Understanding how social media drives traffic to your website
* Understanding how users interact with products on your website
 |
|
**Primary Metrics**
 | * Page Views
* Unique Visitor Counts
* Return Visitor Counts
* Product Sales Numbers
* Geographic Patterns
* Referring Domains
* Conversion metrics
* Bounce Rate
* Exit Pages
 |
|
**Primary Company Roles**
 | * Data analysts
* Digital marketers
* Editorial teams
* Marketing leads
 |
|
**Average Implementation Time**
 |
 If choosing the basic reporting functions you can plan on about an hour depending on how many reports you are pulling. However, if choosing the custom route, the time may be up to 2 hours. Also, depending on how much data you are pulling, it may take several hours for the data to be available in Domo.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------


* When starting out, consider deploying the

Google Analytics Dashboard

. The Base Metrics report has many of the fundamental metrics that are key to a Google Analytics Dashboard.

Prerequisites
---------------

To connect to the Google Analytics API and create a DataSet, you must have a Google email address and password.

  |  |
| --- | --- |
| **Parameter Name**  | **Where to find it**  |
|
 Username
  |
 The email address/username used to log in at


 google.com
  |
|
 Password
  |
 The password is associated with the above username/email.
  |


###
 Credentials Pane

Th Google Analytics 4 connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google email address and password. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Analytics Advanced DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
 Data Selection Pane

This pane contains a number of subpanes in which you can select a report, set a date range, choose your segments, and more.


 Report
  |
 Description
  |
| --- | --- |
|
 Custom Report
  |
 Build your own report by selecting dimensions and metrics.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 When will Domo Google Analytics 4 connector plan to release as an official version?

An official version will be released after Google releases the GA version for all the endpoints that we are using (currently, APIs in use are beta version).

###
 What version of the Google Analytics API does this connector use?

This connector uses the beta version of the Google Analytics API (

https://developers.google.com/analytics/devguides/reporting/data/v1

).

###
 Why does it seem that my data is not accurate?

Google's data processing latency is 24-48 hours. If your query is for yesterday's data, some data may not be displayed. Google may not have finished processing the most current data, so incomplete data may appear.


 Google 360 accounts have a much faster processing time. Enhanced data freshness normally takes 15-20 minutes depending on some factors. Enhanced data freshness is not applied to data that results from integration with other products (Example: AdWords or any of the DoubleClick products). Visit

restrictions on enhanced data freshness

to view some other restrictions.


 The slowest possible data latency for 360 accounts is 24 hours.


 The fastest possible data latency for 360 accounts is 15-20 minutes.


 The chart on

this page

breaks down all the possible data latency periods based on the account and based on the query. Different queries have different data latency periods.

###
 Where can I find help in building queries?

Utilize Google's

Query Explorer

to help test and build your queries. The Query Explorer may also give more insight on why the query isn't working.

###
 I keep getting the error "Selected dimensions and metrics cannot be queried together."

Refer to the

Dimensions and Metrics Explorer

to understand what dimensions/metrics can actually be queried together because not all combinations are valid.

###
 What are my custom metrics and dimensions?

Custom metrics and dimensions are defined at the web property level. We can only display your custom metrics/dimensions if you have one web property selected. Only views within the web property can use its custom metric/dimension. You can have as many views selected as you want as long as they belong to the same web property. The custom metrics and dimensions (if there are any) will be displayed under the "Custom Variables or Columns" section under the custom report.

###
 How do segments work?

A segment is a subset of your Analytics data. For example, of your entire set of users one segment might be users from a particular country or city. Within Domo, when you select multiple segments, we query a report for each segment you have selected. You can use custom segments. Learn more about segments

here

.

###
 Why am I limited to 10 metrics and 9 dimensions?

This is a limitation given by the Google Analytics API. There is no way to add more than 10 metrics and 9 dimensions to a report.


 Troubleshooting
-----------------


* Check user permission settings if you are having trouble gaining access to data.
* Check to make sure you are using the correct set of credentials.
* When validating data between the API data and the front end reporting tool, always check to see if the data was sampled or not.


