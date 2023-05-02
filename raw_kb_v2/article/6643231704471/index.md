

Intro
-------

LINE MUSIC Analytics is a service that analyzes user viewing trends on the music streaming service LINE MUSIC. It can analyze user trends such as the number of times music is played on LINE MUSIC, play time, viewing categories, etc., and can be used by artists for further music production and promotion.


 You connect to your LINE MUSIC Analytics account in the Data Center. This topic discusses the fields and menus that are specific to the Domo Connector for LINE MUSIC Analytics user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your LINE MUSIC Analytics account and create a DataSet, you must have the following:

 The Credential ID for your LINE MUSIC Analytics Account.
* The Credential secret for your LINE MUSIC Analytics Account.

To find your Credential ID and secret, see

クレデンシャル作成方法

.


 Connecting to Your LINE MUSIC Analytics Account
-------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Domo Connector for LINE MUSIC Analytics page. The components of the other panes in this page, Scheduling and Name & Describe Your DataSet, are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your LINE MUSIC Analytics account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 CREDENTIAL ID
  |
 Enter your LINE MUSIC Analytics Credential ID.
  |
|
 SECRET
  |
 Enter your LINE MUSIC Analytics Credential Secret.
  |

For information about obtaining these credentials, see


**Prerequisites**


 above.


 Once you have entered valid LINE MUSIC Analytics credentials, you can use the same account any time you go to create a new LINE MUSIC Analytics DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

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
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
| **再生場所別再生回数**  |
 Retrieve the number of playback time for each music playback media category and location.
  |
| **課金ステータス別再生回数**  |
 Retrieve the number of playback time for each user's billing status, such as free user, paying user, etc.
  |
| **地域（都道府県）別再生回数**  |
 Retrieve the number of playback time for each user's prefecture.
  |
| **性別/年齢別再生回数**  |
 Retrieve the number of playback time for each user's gender and age.
  |
| **性別/年齢別/時間別再生回数**  |
 Retrieve the number of playback time for each user's gender, age and time of day.
  |
| **性別/年齢別/地域別再生回数**  |
 Retrieve the number of playback time for each user's gender, age and region.
  |
| **性別/年齢別/課金ステータス別再生回数**  |
 Retrieve the number of playback time for each user's gender, age and billing status.
  |

|
|
 Date
  |
 Select the


**Date selection**


 whether a single day or a date range of the date to retrieve the report.


|  |  |
| --- | --- |
| **Single date**  |
 Select the specific or relative single date.
  |
| **Date range**  |
 Select the specific or relative date range.
  |
| **Time period**  |
 Select the time period from


**Time period**


 dropdown for your report.
  |


 |
|
 Date - Date
  |
 Select the


**Date Type**


 from the followings whether the report data is for a specific date or for a relative number of days back from today:


|  |  |
| --- | --- |
| **Relative**  |
 Enter the number of days back that you would like to get data for in the


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
| **Specific**  |
 Select the specific date using the date selector in the


**Date**


 field
  |


 |
|
 Date - Start Date
  |
 Select the


**Date Type**


 from the followings:


|  |  |
| --- | --- |
| **Relative**  |
 Enter the number of days back that you would like to get data from (start day). Combine with


**End Date**


 to create a range of represented days.

For example, if you entered


`10`


 for


**Start Date**


 and


`5`


 for


**End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
| **Specific**  |
 Select the first date in your date range using the date selector.
  |

|
|
 Date - End Date
  |
 Select the


**Date Type**


 from the followings:


|  |  |
| --- | --- |
| **Relative**  |
 Enter the number of days back that you would like to get data to (end day). Combine with


**Start Date**


 to create a range of represented days.


 For example, if you entered


`10`


 for


**Start Date**


 and


`5`


 for


**End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
| **Specific**  |
 Select the last date in your date range using the date selector.
  |

|
|
 Date - Time period
  |
 Choose the time period for which you would like to receive data.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

