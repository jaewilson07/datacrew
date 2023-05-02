

Intro
-------

HuffPost Pollster tracks thousands of public polls to give you the latest data on elections, political opinions, and more. Use Domo's HuffPost Pollster connector to import data from the HuffPost Pollster system into Domo. To learn more about the HuffPost Pollster API, visit their page (

https://elections.huffingtonpost.com/pollster/api/v2

).


 You connect to HuffPost Pollster's API in the Data Center. This topic discusses the fields and menus that are specific to the HuffPost Pollster connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None


 Connecting to HuffPost Pollster
---------------------------------


 This section enumerates the options in the
 **Details**
 pane in the HuffPost Pollster Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

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
 Select the HuffPost Pollster report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Charts
  |
 Returns a list of charts, ordered by creation date (newest first).
  |
|
 Polls
  |
 Returns a list of Polls. A Poll on Pollster is a collection of questions and responses published by a reputable survey house.
  |
|
 Polls-Response-Clean
  |
 Returns one row of response values per PollQuestion+Subpopulation concerning the given Question.
  |
|
 Polls-Response-Raw
  |
 Returns one row per PollQuestion+Subpopulation+Response concerning the given Question.
  |
|
 Pollster-Chart-Poll-Questions
  |
 Returns one row per poll plotted on a Chart.
  |
|
 Pollster-Trendlines
  |
 Returns estimates of what the polls suggest about trends.
  |
|
 Questions
  |
 Returns a list of Questions.
  |
|
 Tags
  |
 Report returns a list of Tags.
  |

|
|
 Chart Slug (Optional)
  |
 Enter a chart slug to retrieve data for that specific chart. If you leave this blank, data is returned for all charts.
  |
|
 Tags (Optional)
  |
 Select all the tags you want to retrieve data for.
  |
|
 Poll Slug (Optional)
  |
 Enter a poll slug to retrieve data for that specific poll. If you leave this blank, data is returned for all poll.
  |
|
 Question Slug (Optional)
  |
 Enter the slug of the question you want to pull data for. Only polls that use that question will be retrieved.


**Tip:**

To get a list of Question Slug values, run the "Questions" report.

|
|
 Chart Slug (Optional)
  |
 Enter the slug of the chart you want to pull data for.


**Tip:**

To get a list of Chart Slug values, run the "Charts" report.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

