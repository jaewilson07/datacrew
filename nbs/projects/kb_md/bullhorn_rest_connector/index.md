---
    title: Bullhorn REST Connector
    url: https://domo-support.domo.com/s/article/360043432513
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432513](https://domo-support.domo.com/s/article/360043432513)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003652
    views: 1,143
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Bullhorn provides customer relationship management and operations software for the staffing industry. To learn more about the Bullhorn REST API, visit their page ([http://developer.bullhorn.com/documentation](http://developer.bullhorn.com/documentation "http://developer.bullhorn.com/documentation")).  


You connect to your Bullhorn REST account in the Data Center. This topic discusses the fields and menus that are specific to the Bullhorn REST connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Bullhorn REST account and create a DataSet, you must have the following:


* A Bullhorn client ID
* A Bullhorn client secret


To obtain credentials, reach out to your Bullhorn representative.


Connecting to Your Bullhorn REST Account
----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Bullhorn REST Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Bullhorn REST account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your Bullhorn client ID. |
| Client Secret | Enter your Bullhorn client secret. |
| Data Center | Select the Bullhorn Data Center. Visit [Bullhorn Data-center-specific API URLs](http://bullhorn.github.io/Data-Center-URLs/) for more. |
| Username | Enter your Bullhorn username. **Note:** This is an optional field required to refresh expired tokens. |
| Password | Enter your Bullhorn password. **Note:** This is an optional field required to refresh expired tokens. |


Once you have entered valid Bullhorn REST credentials, you can use the same account any time you go to create a new Bullhorn REST DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Ent | Select the Bullhorn REST report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Corporate Notes | Returns all notes in the specified Client Corporation. |
| Department Entities | Returns the entities for the current user's departments, for the following entity types: Candidate,ClientContact, ClientCorporation, JobOrder, Placement, and Note. |
| My Entities | Returns the entities that belong to the current user for the following entity types: Candidate, ClientContact,ClientCorporation, JobOrder, Placement, and Note |
| Meta | Returns the list of available entities and their respective base URLs. |
| Meta Entity | Returns entity and property metadata for the specified entity type. |
| Query Entity | Performs a SQL-style query. |
| Search Metadata | Returns a search field names and, optionally, the field type and lookup names. |
| Search Entity | Performs a Lucene search. |

 |
| Enter the Starting Word of the Corporation Name | Enter the first word in the corporation you want to retrieve data for. |
| Client Corporation Name | Select the client corporation you want to retrieve data for. |
| Entity Type | Select the entity you want to retrieve information for. |
| Where Clause to Query | Enter the SQL-like WHERE clause query you want to execute. For example:
`id is not null` |
| Lucene Search Clause | Enter the Lucene search query you want to execute. For example:
`isDeleted:false`
You can use specific or relative dates in your query.
**Specific Dates** 
For specific dates you should use a yyyymmdd format. For example, createdDate:[20160401 TO 20160402] would query where the createdDate is between Apr 1, 2016 and Apr 2, 2016. For date and time use a format such as 2016042110000000. That would be Apr 21, 2016 10:00AM. For open-ended ranges you can use the \*. For example, updatedAt:[20160401 TO \*] would account for anything greater than Apr 1, 2016.
**Relative dates**
The connector supports relative dates. For example, dateAdded:[today-7 TO today] would query where the dateAdded field is between seven days ago and today.  For a list of searchable fields, run the "Search Metadata" report.
For more information on Lucene queries, [see here](https://lucene.apache.org/core/3_6_2/queryparsersyntax.html). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").   

