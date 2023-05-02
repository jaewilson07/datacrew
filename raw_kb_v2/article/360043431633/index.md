

Intro
-------

Moz is a SaaS company that sells inbound marketing and marketing analytics software subscriptions. You can use Domo’s Moz connector to retrieve data for a variety of metrics, such as URL, link, and anchor text metrics. To learn more about the Mozscape API, go to

https://moz.com/help/guides/moz-api/mozscape

.


**Note:**
 The user interface for building this connector is not yet available in our Connectors listing in the Data Center, meaning you will not be able to configure the connector on your own. However, we at Domo are more than happy to configure the connector for you so you can begin using it to pull your data into Domo. Please don't hesitate to reach out to your CSM or Domo Support. For contact information, see


 Getting Help


 .


 You connect to your Moz account in the Data Center. This topic discusses the fields and menus that are specific to the Moz connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector lets you optimize your most important web pages for searches.
  |
|
**Primary Metrics**
 | * Status
* Page errors
* Number of links
* Page to domain
 |
|
**Primary Company Roles**
 |
 Digital marketing
  |
|
**Average Implementation Time**
 |
 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------


* It is highly recommended that you set up the "Top Page Metrics" and "URL Links" reports for the most important web pages for your organization.
* This connector only pulls one row of data at a time, so you should make sure there's a daily append of the data.

Prerequisites
---------------

To connect to your Moz account and create a DataSet, you must have the following:

 The Access ID for your Moz account
* The Secret Key for your Moz account

You can generate a Moz Access ID and Secret Key by following the instructions in this page:

https://moz.com/products/api/keys

Connecting to Your Moz Account
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Moz Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Moz account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access ID
  |
 Enter your Moz access ID.
  |
|
 Secret Key
  |
 Enter your Moz secret key.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Moz credentials, you can use the same account any time you go to create a new Moz DataSet. You can manage connector accounts in the
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
 Select the Moz report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 URL Metrics
  |
 Returns Metrics for the specified URL.
  |
|
 URL Link Metrics: page\_to\_domain
  |
 Returns source pages linking to any page on the specified target's

root domain (for example,


 \*.

moz.com

/\*


 ).
  |
|
 URL Link Metrics:

page\_to\_page
  |
 Returns source pages linking to the specified target page.
  |
|
 URL Link Metrics:

page\_to\_subdomain
  |
 Returns source pages linking to any page on the specified target's

root subdomain (for example,

apidash.moz.com

/\*


 ).
  |
|
 Anchor Text Metrics:

phrase\_to\_domain
  |
 Returns phrases found in links to the root domain of the target URL.
  |
|
 Anchor Text Metrics:

phrase\_to\_page
  |
 Returns phrases found in links to the target URL.
  |
|
 Anchor Text Metrics:

phrase\_to\_page
  |
 Returns phrases found in links to the target URL.
  |
|
 Anchor Text:

phrase\_to\_subdomain
  |
 Returns phrases found in links to the subdomain of the target URL.
  |
|
 Anchor Text Metrics:

term\_to\_domain
  |
 Returns terms found in links to the root domain of the target URL.
  |
|
 Anchor Text:

term\_to\_page
  |
 Returns terms found in links to the target URL.
  |
|
 Anchor Text:

term\_to\_subdomain
  |
 Returns terms found in links to the subdomain of the target URL.
  |
|
 Top Page Metrics
  |
 Returns metrics for URLs on a specified subdomain.
  |

|
|
 Web Page URL
  |
 Enter the URL of the web page you want to retrieve metrics for. For example:


 www.google.com


 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Check to make sure you include the correct URL in the
 **Web Page URL**
 field.

