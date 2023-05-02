

Intro
-------

CNN.com

offers feeds of story headlines in XML format to visitors who use RSS aggregators. The Domo CNN connector takes those headlines and creates a new DataSet that can be used to provide current headlines into your Domo instance. For information about the CNN API, visit


 https://developer.cnn.com/docs/read/api

.


 The CNN RSS connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You create a CNN DataSet in the Data Center. This topic discusses the fields and menus that are specific to the CNN connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to pull current news headlines into cards in Domo.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * Executive
* Director
* Manager
* Analyst
 |
|
**Average Implementation Time**
 |
 1-2 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 1


 |


 Best Practices
-----------------

This connector provides predetermined feeds of news headlines by topic. As such it is simple to select the topics of interest. However, note that a new connection must be made for each report.

Prerequisites
----------------


 No credentials are required.


 Creating a CNN DataSet
-------------------------


 This section describes how to create a CNN DataSet in the CNN RSS Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Details Pane


 This pane contains a single menu in which you select a CNN report type.


 The following table describes all of the predefined reports you can create using the Domo CNN RSS connector.


|

*Menu**

|

*Description**

|
| --- | --- |
|

Business

|

Returns information on business news.

|
|

CNN Student News

|

Returns information on student news.

|
|

Crime

|

Returns information on crime news.

|
|

Entertainment

|

Returns information on entertainment news.

|
|

Health

|

Returns information on health news.

|
|

Living

|

Returns information on living news.

|
|

Most Popular

|

Returns information on the most popular news.

|
|

Most Recent

|

Returns information on the most recent news.

|
|

Politics

|

Returns information on politics news.

|
|

Technology

|

Returns information on the latest technology news.

|
|

Travel

|

Returns information on travel news.

|
|

Top Stories

|

Returns information on the latest top stories.

|
|

U.S.

|

Returns information on U.S. news

|
|

Video

|

Returns information on video news.

|
|

World

|

Returns information on world news.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Ensure that the connector is pulling the correct report and is on the needed schedule.


 FAQ
-----


#####
 How frequently will my data update?

The CNN RSS feed will update when CNN publishes a new article to the selected feed. The connector will retrieve the new articles according to the connector scheduling settings.

####
 Are there any API limits that I need to be aware of?

No.

