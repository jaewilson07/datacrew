

Intro
-------

The NetBase Insight API enables you to search the ConsumerBase index, which contains billions of insight-rich sound bites (sentences), based on the focus of your analysis. Retrieve data to use as input for visualizations in your websites and applications. The Insight API returns metric values, sentiment classifications, emotions, behaviors, and attributes for objects, named entities, and more. You can use the Insight API to integrate social media data and metrics in your web sites and applications. To learn more about the Netbase API, visit their page (

http://learn.netbase.com/i/706080-ne...ming-interface

).


 You connect to your Netbase account in the Data Center. This topic discusses the fields and menus that are specific to the Netbase connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Viewing the ranking of insight categories
* Getting an overview of how your brands are being received
 |
|
**Primary Metrics**
 | * Sound bites containing a specified insight type
* Total buzz
* Net sentiment
* Passion intensity
 |
|
**Primary Company Roles**
 | * Social media strategists
* Public relations people
 |
|
**Average Implementation Time**
 |
 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4 (user should have some knowledge of Netbase)
  |

Best Practices
----------------

Be aware that time zones using this connector are determined by UTC.


 Prerequisites
---------------

To connect to your Netbase account and create a DataSet, you must a Netbase username and password.


 Connecting to Your Netbase Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Netbase Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Netbase account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Netbase account.
  |
|
 Password
  |
 Enter the password for your Netbase account.
  |


 Once you have entered valid Netbase credentials, you can use the same account any time you go to create a new Netbase DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with a number of other menus for filtering the report data.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Netbase report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Metric Value
  |
 Returns one or more metric values for a time period or time series. You can retrieve metrics such as total buzz, net sentiment, or passion intensity, for a topic.
  |
|
 Insight Count
  |
 Returns the number of sound bites (mentions) containing a specified insight type, such as an emotion or a behavior.
  |
|
 Cross Tabulation
  |
 Returns a specified metric value for one or more topics distributed across one or more themes.
  |
|
 Retrieve Documents
  |

Returns a list of documents matching the Insight API call, including:

 Metadata for a document, including its insights and sentiment classification.
* The text for each matching sound bite in a document, including the two sentences that occur before and after the matching sentences.

*Note:**
 Some content providers, such as Twitter, prohibit the download of sound bite text and author details.

 The total document count
 |
|
 Themes
  |
 Returns a list of themes filtered by scope
  |
|
 Topics
  |
 Returns a list of topics filtered by scope and content type.
  |

|
|
 Topic Scope
  |
 Select the category of topics you want to be able to pull data for.
  |
|
 Theme Scope
  |
 Select the category of themes you want to be able to pull data for.
  |
|
 Topics
  |
 Select the topic you want to pull data for.
  |
|
 Theme Filters
  |
 Select the themes you want to pull data for (up to 50).
  |
|
 Time Period
  |
 Enter the time period for the data you want to return. This should be in the format

{time period},{time offset},{time rounding}

.


 The following table lists different examples of how to set this parameter:


|  |  |
| --- | --- |
|
 No entry
  |
 One week of data ending a minute ago
  |
|
 5d
  |
 Five days of data ending a minute ago
  |
|
 6d,1d
  |
 Six days of data ending last midnight UTC
  |
|
 10d,1h,1h
  |
 Ten days of data ending at least an hour ago, on the hour
  |
|
 2016-05-22
  |
 Data between May 22 and now
  |
|
 2016-05-22 06:00, 2016-05-30 07:00
  |
 Data between 6AM UTC May 22 and 7AM UTC May 30
  |

|
|
 Size Needed
  |
 Specifies the number of Documents or Insights to be returned. Maximum value for Documents: 2000. Maximum value for Insight Count: 1000 Note only numeric values are valid.
  |
|
 Peer Count
  |
 The peerCount specifies the number of sentences to return before and after a matching sentence. Default is 2.
  |
|
 Sort
  |

The sort parameter specifies the sort order for the top sound bites that the Insight API returns in the call. The Insight API sorts to the precision of Deci seconds.


 To sort in ascending order: sort=sort\_option.


 To sort in descending order: sort\_option where sort\_option is one of the following:

 **confidenceScore**

sorts results by a metric that indicates a sound bite's spaminess. It is primarily for internal NetBase use. A lower score indicates that a sound bite is less spammy than a sound bite with a higher score.
* **timestamp**

sorts results by the date/time data was published to the Internet.
* **alertTimestamp**

sorts results by the date/time data was indexed into the ConsumerBase system.

To sort results in descending order, preface the parameter with a hyphen (-). To sort in ascending order, do not include the hyphen.

|
|
 Time Units
  |
 Select the time unit that the data in the report should be broken down by. For example, if you select
 **Month**
 , twelve rows of data appear, one for each month in the year.
  |
|
 Metric Series
  |
 Select the metric series you want to filter by. You can select as many metric IDs as you want.
  |
|
 Authors
  |
 The authors parameter specifies an author whose documents to include in the analysis. This value will be overwritten if an 'authors' value is provided in the text area. Specifying this parameter excludes documents published by all other authors.

syntax:

author\_name*

:

domain\_name*


 Do not include '@', '

https://'

; or 'www.'
  |
|
 Domains
  |
 The domains parameter specifies a domain from which data should be included in the analysis. This value will be overwritten if a 'domains' value is provided in the text area. Specifying this parameter excludes documents from all other domains.

Note:The Insight API supports specifying subdomains and folders, such as

http://facebook.com/TheSmokingTire/

.
  |
|
 Keywords
  |
 The keywords parameters specifies keywords for filtering results. These parameters match both of the following:
 * Sentences containing the keyword, along with their preceding and succeeding sentences.
* All sentences in documents whose title contains the specified keyword.
 |
|
 Sentiments
  |
 The sentiments parameter retrieves only data that NetBase has classified with a specified sentiment type. This value will be overwritten if a

'

sentiments

'

value is provided in the text area.
  |
|
 Sources
  |
 The sources parameter enables you to filter results by source type. If specified, the Insight API only returns data from the specified source type. This value will be overwritten if a

'

sources

'

value is provided in the text area.
  |
|
 Additional Optional Parameters
  |
 Select the optional parameters you want to filter by. You can select as many optional parameters as you want.


 For in-depth documentation on optional parameters, see

https://api.netbase.com/explorer/api/netbase

.
  |
|
 Theme Array
  |
 Select up to 50 theme arrays. A theme array is a theme you can use to further drill down into your data set. You must define themes in a NetBase application before you can use them in Domo.
  |
|
 Size Needed
  |
 Specifies the number of documents or insights to be returned. The maximum number of documents that may be returned is 2000, and the maximum number of insights is 1000. Only numeric values are valid.
  |
|
 Peer Count
  |
 Specifies the number of sentences to return before and after a matching sentence. The default is 2.
  |
|
 Categories
  |
 Select the categories you want to filter by. You can select as many categories as you want.
  |
|
 Measure
  |
 Select the measure parameter for the report.
 * **Mentions**
 returns the number of matching sentences for the
 **Categories**
 value. For example, if you selected
 **Sentiment**
 for the category, your report would return the number of sentences for each sentiment classification found by the query.
* **Posts**
 returns the number of matching documents for the
 **Categories**
 value. For example, if you selected
 **Geolocation**
 for the category, your report would return the number of matching documents for each geolocation found by the query.
* **Followers**
 returns the number of followers when when the selected
 **Categories**
 value is
 **Authors**
 . You cannot use
 **Followers**
 with any other category value. A follower count is the number of users following an author at the moment they publish a document.
 |
|
 Content Type
  |
 Select to filter topics by content type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

If the connection fails, check the error message. It may contain information concerning an illegal configuration that NetBase does not allow. For example, when running the Insight Count report,


 if you s

elect
 **Followers**
 for your
 **Measure**
 , selecting any category but
 **Authors**
 will return an error.


