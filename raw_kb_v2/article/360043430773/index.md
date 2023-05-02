

Intro
-------

AD EBiS is one of the largest advertising analytics platforms in Japan.


 You connect to your AD EBiS account in the Data Center. This topic discusses the fields and menus that are specific to the AD EBiS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AD EBiS account and create a DataSet, you must have the following:

 Your AD EBiS login ID
* Your AD EBiS login argument
* Your AD EBiS API key

All of these credentials should be provided upon account creation.


 Connecting to Your AD EBiS Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AD EBiS Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AD EBiS account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Login ID
  |
 Enter your AD EBiS login ID.
  |
|
 Login Argument
  |
 Enter your AD EBiS login argument.
  |
|
 API Key
  |
 Enter your AD EBiS API key.
  |


 Once you have entered valid AD EBiS credentials, you can use the same account any time you go to create a new AD EBiS DataSet. You can manage connector accounts in the
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
 Select the AD EBiS report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 AD EBiS - Ad Conversion Attributes
  |
 Returns data about ad conversion attributes.
  |
|
 AD EBiS - Ad Effect Conversions
  |
 Returns data about ad effect conversions.
  |
|
 AD EBiS - Ad Effects
  |
 Returns data about ad effects.
  |
|
 AD EBiS - Indirect Ad Effects
  |
 Returns data about indirect ad effects.
  |
|
 AD EBiS Link - Ad Media Creatives
  |
 Returns ad media creative information.
  |
|
 AD EBiS Link - Ad Media Keywords
  |
 Returns a list of ad media keywords.
  |
|
 Ad Group Management - Ad Group 1s
  |
 Returns the ads in Group 1.
  |
|
 Ad Group Management - Ad Group 2s
  |
 Returns the ads in Ad Group 2.
  |
|
 Ad Management - Ads
  |
 Returns a list of ads.
  |
|
 Impression Management - Impression Cost
  |
 Returns a list of impression costs.
  |
|
 LPO EBiS - AB Test Effect Conversions
  |
 Returns conversion data for AB tests.
  |
|
 LPO EBiS - AB Test Effects
  |
 Returns effects data for AB tests.
  |
|
 LPO EBiS - AB Tests
  |
 Returns data about AB test advertising.
  |
|
 LPO EBiS - Area Targeting Effect Conversions
  |
 Returns conversion data about area targeting.
  |
|
 LPO EBiS - Area Targeting Effects
  |
 Returns effects data about area targeting.
  |
|
 LPO EBiS - Area Targetings
  |
 Returns a list of area targeting ads.
  |
|
 Media Management - Media
  |
 Returns a list of media types.
  |
|
 SEO EBiS - Ad Conversion Attributes
  |
 Returns a list of ad conversion attributes.
  |
|
 SEO EBiS - Conversion Attributes
  |
 Returns a list of conversion attributes.
  |
|
 SEO EBiS - Effect Conversions
  |
 Returns data about effect conversions.
  |
|
 SEO EBiS - Effects
  |
 Returns data about effects.
  |
|
 System Management - System Config
  |
 Returns system config data.
  |
|
 System Management - Tags
  |
 Returns a list of tags.
  |

|
|
 Ad IDs
  |
 Enter the IDs for ads you want to retrieve data for, separated by commas.
  |
|
 Conversion IDs
  |
 Enter the IDs for conversions you want to retrieve data for, separated by commas.
  |
|
 Ad Group 1 IDs
  |
 Enter the IDs for Group 1 ads you want to retrieve data for, separated by commas.
  |
|
 Ad Group 2 IDs
  |
 Enter the IDs for Group 2 ads you want to retrieve data for, separated by commas.
  |
|
 Ad Media IDs
  |
 Enter the IDs for media you want to retrieve data for, separated by commas.
  |
|
 Keyword
  |
 Enter a keyword to filter results by.
  |
|
 Include Natural Conversion
  |
 Check this box if you want your data to include natural conversion.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
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
|
 Note
  |
 Enter any note content you want to filter by.
  |
|
 Ad Status
  |
 Enter the ad status you want to filter by.
  |
|
 Text Data
  |
 Enter the text data you want to filter by.
  |
|
 Start Created
  |
 Enter the "start created" date for the ads you want to retrieve.
  |
|
 Start Modified
  |
 Enter the "start modified" date for the ads you want to retrieve,
  |
|
 End Created
  |
 Enter the "end created" date for the ads you want to retrieve.
  |
|
 End Modified
  |
 Enter the "end modified" date for the ads you want to retrieve.
  |
|
 Engine Names
  |
 Enter a comma-separated list of search engine names to pull data for.
  |
|
 Search Word
  |
 Enter a search word for filter results by.
  |
|
 Reject Word
  |
 Enter a reject word to filter results by.
  |
|
 Other 1-5
  |
 Enter an "Other" value to filter results by.
  |
|
 Amount Min
  |
 Enter the minimum amount to filter results by.
  |
|
 Amount Max
  |
 Enter the maximum amount to filter results by.
  |
|
 Member Name
  |
 Enter a member name to filter results by.
  |
|
 Page IDs
  |
 Enter a comma-separated list of page IDs to retrieve data for.
  |
|
 Page Title
  |
 Enter the title of the page to retrieve data for.
  |
|
 Conversion Page Only
  |
 Check the box if you want to return conversion page data only.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 Can I use the same AD EbiS account for multiple datasets?

Yes.

####
 Are there any API limits that I need to be aware of?

No.

####
 How often can the data be updated?

As often as needed.

