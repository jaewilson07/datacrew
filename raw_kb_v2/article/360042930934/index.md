

Intro
-------

PatentsView  is a prototype patent data visualization and analysis platform intended to increase the value, utility, and transparency of US patent data.  To learn more about the PatentsView API, visit their page (

http://www.patentsview.org/api/doc.html

).


 You connect to your PatentsView account in the Data Center. This topic discusses the fields and menus that are specific to the PatentsView connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None. This connector retrieves public data, so there is no need to enter account credentials.


 Connecting to Your PatentsView Account
----------------------------------------


 This section enumerates the options in the
 **Details**
 panes in the PatentsView Connector page. The components of the other panes in this page,
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
 Select the PatentsView report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Assignees
  |
 Returns a list of all assignees.
  |
|
 CPC
  |
 Returns a list of all CPC (Cooperative Patent Classification) subsections.
  |
|
 Locations
  |
 Returns a list of all patent locations.
  |
|
 NBER
  |
 Returns a list of NBER (National Bureau of Economic Research) categories.
  |
|
 Patents
  |
 Returns a list of patents.
  |
|
 USPC
  |
 Returns a list of USPC (United States Patent Classification) mainclasses.
  |

|
|
 Query Type
  |
 Select your desired query type.
 * **No Filter**
 . Select this option if you do not want to filter data using a query.
* **Query Builder**
 . Select this option if you want help in building your query. A sample of template code will appear in the field below the options; all you need to do is fill in the gaps in the code with your desired filter criteria.
* **Manual Query**
 . Select this option if you want to build your entire filter query yourself.
 |
|
 Query
  |
 If you selected
 **Query Builder**
 as your
 **Query Type**
 , simply fill in the gaps in the code sample with your desired filter criteria.


 If you selected
 **Manual Query**
 as your
 **Query Type**
 , enter your query here.


 An example of a manual query would be as follows:

('inventor\_last\_name' = 'Whitney' AND ('patent\_title' TEXT\_PHRASE 'cotton gin'))

OR

('inventor\_last\_name' = 'Heath' AND 'patent\_title' TEXT\_ALL 'COBOL')

AND

('patent\_number' = '9616799').

In other words, the report will pull data ONLY if the inventors's last name is "Whitney" and the patent name is "cotton\_gin" OR the inventor's last name is "Heath" and the patent title is "Cobol." In both cases, the patent number must also be "9616799."


 Refer to the following links for respective reports for filter selection:
 * "Patents" --

Patents Report Filter List
* "Inventors" --

Inventors Report Filter List
* "Assignees" --

Assignees Report Filter List
* "Locations" --

Locations Report Filter List
* "CPC" --

CPC Report Filter List
* "USPC" --

USPC Report Filter List
* "NBER" --

NBER Report Filter List
 |
|
 Fields
  |
 Select the category of fields you want to pull data from.
  |
|
 Date Filter
  |
 Select the date filter you want to apply to your report.
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

The results from the API will only have one level of hierarchy of subentities under the primary entity.

