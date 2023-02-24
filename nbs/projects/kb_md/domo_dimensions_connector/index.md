---
title: Domo Dimensions Connector
url: https://domo-support.domo.com/s/article/360042931454
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042931454](https://domo-support.domo.com/s/article/360042931454)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003324
views: 2,359
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Domo Dimensions is a repository of mapping files, including ZIP codes, US state names, country names, area codes, a calendar, and more. Domo Dimensions allows you to pull a single file from a list of provided files that we find to be useful when aggregating common forms of data. e.g. zip codes, calendar, countries, etc. Use the Domo Dimensions connector to power cards, or use it to map existing datasets to power cards.


This topic discusses the configuration options specific to the Domo Dimensions connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | * Showing map cards by area code, ZIP code, state, country, or mapping other datasets against these reports.
* Powering cards using the calendar report.
* Lots more
 |
| **Primary Metrics** | * Zip codes
* Area codes
* Calendar dates
* US states
* Country names
* Lots more
 |
| **Primary Company Roles** | All roles |
| **Average Implementation Time** | <5 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 1 |


Prerequisites
-------------


None. No credentials are required to use this connector.


Connecting to Domo Dimensions
-----------------------------


This section enumerates the options in the **Details** pane in the Domo Dimensions Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Details Pane


This pane contains a single **Files** menu from which you select a file to pull into Domo.




| Menu | Description |
| --- | --- |
| Files | Select the Domo Dimensions file you want to pull into Domo. The following files are available:

|  |
| --- |
| allCountriesGeo.csv |
| area\_codes.csv |
| AUcalendar.csv |
| calendar.csv |
| cityzip.csv |
| countries\_latitude\_longitude.csv |
| country.csv |
| GeoLite2-City-Block-IPv4.csv |
| GeoLite2-City-Block-IPv6.csv |
| Global User Search.csv |
| Global User Timeline.csv |
| history-postal\_code-day-continent-na.csv |
| ISOCountries.csv |
| linkedin\_company\_size\_mapping.csv |
| linkedin\_function\_mapping.csv |
| linkedin\_industry\_mapping.csv |
| linkedin\_seniority\_mapping.csv |
| StandardNormalDistribution.csv |
| us\_states.csv |
| us\_zips\_cities\_states\_countries\_lat\_long.csv |
| zip2fips2.csv |
| zip2fips3.csv |
| zip2MSA.csv |
| zip\_codes.csv |
| zip\_codes\_norm.csv |
| zip\_to\_fips.csv |
| zips\_to\_fips\_latest.csv |
| zips\_to\_fips\_official.csv |

 |


Troubleshooting
---------------


If you run into problems, contact Domo Support. Since these are Domo-maintained DataSets, you'll want to notify us right away if you have an issue loading a DataSet.

