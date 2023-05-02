

Intro
-------


 Spotify is a digital music distribution service that offers tens of millions of songs.


 Domo's Spotify connector allows you to use Spotify's Bulk API to import performance data provided by Spotify For Artists into your Domo instance. This performance data includes users, tracks, and streams tied to licensors.

You connect to your Spotify account in the Data Center. This topic discusses the fields and menus that are specific to the Spotify Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Spotify account and create a DataSet, you must have the following:

 Client ID
* Client Secret

The Spotify Connector uses Spotify’s Bulk API. To use the API, you must have a direct distribution relationship with Spotify. Also, you need to request to use the API to Spotify.


 For details, see

Help - Getting access to Spotify's Bulk API – Spotify for Artists

. After your request is approved, you can get the Client ID and the Client Secret.


 Connecting to your Spotify Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Spotify Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Spotify account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Client ID published by Spotify.
  |
|
 Client Secret
  |
 Enter your Client Secret published by Spotify
  |


 For information about obtaining these credentials, see
 **Prerequisites**
 above.


 After you have entered valid Spotify credentials, you can use the same account any time you go to create a new Spotify DataSet. You can manage connector accounts in the Accounts tab in the Data Center. For more information about this tab, see

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
 Select the reports you want to run. The following reports are available:


|
 Streams
  |
 This report contains individual stream objects with track and user information for a given licensor, date, and country. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |
|
 Users
  |
 This report contains individual users objects with personal and device-related information for a given licensor and date.
  |
|
 Track
  |
 This report contains individual track objects with more detailed track-level information for a given licensor and date.
  |
|
 Sub30SecStreams
  |
 This report contains individual stream objects (only including streams lasting less than 30s) for a given licensor, date and country. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |
|
 Aggregated Stream – Summary
  |
 This report contains individual track-based aggregated stream objects with metadata and demographic data for a given licensor and date. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |
|
 Aggregated Stream – Count
  |
 This report contains individual track-based aggregated stream objects with play count for each country, gender and age for a given licensor and date. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |
|
 Aggregated Stream – Skips
  |
 This report contains individual track-based aggregated stream objects with skip count for each country for a given licensor and date. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |
|
 Aggregated Stream – Saves
  |
 This report contains individual track-based aggregated stream objects with save count for each country and user’s plan for a given licensor and date. Only actual streams are included; plays from local tracks (stored on the user's computer) are not counted.
  |

|
|
 Licensore
  |
 Enter the Licensor name.

Check your welcome email to locate the licensor name that Spotify has on file.
  |
|
 Date
  |
 In the
 **Date**
 selection, select whether to use a single day or a date range when filtering the results by item update date.


|
 Single date
  |
 Select the specific or relative single date.
  |
|
 Date range
  |
 Select the specific or relative date range.
  |
|
 Time period
  |
 Select the time period from Time period dropdown for your report.
  |

|
|
|
 Date – Date
  |
 Select in
 **Date Type**
 from the followings whether the report data is for a specific date or for a relative number of days back from today:


|  |  |
| --- | --- |
|
 Relative
  |
 Enter the number of days back that you would like to get data for in the
 **Days Back**
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Specific
  |
 Select the specific date using the date selector in the
 **Date**
 field.
  |

|
|
 Date – Start Date
  |
 Select in
 **Date Type**
 from the followings:


|  |  |
| --- | --- |
|
 Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with End Date to create a range of represented days.

For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Specific
  |
 Select the first date in your date range using the date selector.
  |

|
|
 Date – End Date
  |
 Select in
 **Date Type**
 from the followings:


|  |  |
| --- | --- |
|
 Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with Start Date to create a range of represented days.

For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Specific
  |
 Select the last date in your date range using the date selector.
  |

|
|
 Date – Time period
  |
 Choose the time period for which you would like to receive data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 What is needed to use the connector?

The Spotify Connector uses Spotify’s Bulk API. To use the API, you must have a direct distribution relationship with Spotify. Also, you need to request to use the API to Spotify. For details, see

Help - Getting access to Spotify's Bulk API – Spotify for Artists

.

###
 Are there any API limits that I need to be aware of?

Currently there are no limits.

