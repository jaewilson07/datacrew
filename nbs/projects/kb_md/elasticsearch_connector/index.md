---
    title: ElasticSearch Connector
    url: https://domo-support.domo.com/s/article/1500002835162
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500002835162](https://domo-support.domo.com/s/article/1500002835162)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003242
    views: 2,170
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


Elasticsearch is the distributed search and analytics engine at the heart of the Elastic Stack. With this connector visualize your ElasticSearch data in Domo for additional insights. Use Domo's Elasticsearch connector to return search hits that match the query defined in the request. Get real-time dashboards of your data, available from any device. To learn more about the Elasticsearch API, visit their page ([https://www.elastic.co/guide/en/elas...est-apis.htmlL](https://www.elastic.co/guide/en/elasticsearch/reference/current/rest-apis.htmlL "https://www.elastic.co/guide/en/elasticsearch/reference/current/rest-apis.htmlL")).


You connect to your Elasticsearch account in the Data Center. This topic discusses the fields and menus that are specific to the Elasticsearch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Elasticsearch account and create a DataSet, you must have the following:


* Your Elasticsearch host name
* The username and password associated with your Elasticsearch account


Connecting to Your Elasticsearch Account
----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Elasticsearch Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Elasticsearch account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Host | Enter your Elasticsearch hostname. |
| Username | Enter the username associated with your Elasticsearch account. |
| Password | Enter the password associated with your Elasticsearch account. |


Once you have entered valid Elasticsearch credentials, you can use the same account any time you go to create a new Elasticsearch DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Elasticsearch report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Aggregations | Returns aggregations that match the query defined in the request. |
| Search | Returns search hits that match the query defined in the request. |
| Search With Pagination | Returns search hits that match the query defined in the request. Use this report to retrieve more than 10000 results. |
| Search With Pagination Using PIT | Returns aggregations that match the query defined in the request. Use this report to retrieve more than 10000 results.  |

 |
| Field | Enter the field name to sort the data on. By default '\_id' will be used if not provided. Provide a custom field in the 'Query' text box, if it is a custom field name.





**Note:**If 'QUERY' doesn't contain the sort array support, the sort array will get added with the FIELD value.



 |
| Query | Query in the Lucene query string syntax. |
| Index | Comma-separated list or wildcard expression of index names used to limit the request. |
| Use Advanced Sublist To Flatten options | Select 'Yes' if you want to use the advanced Sublist To Flatten option. If you select 'Yes,' the primitive arrays will be expanded in a single cell. |
| Sublists To Flatten | Enter the comma separated lists that you would like to flatten in your data. |
| Delimiter For Primitive Arrays | Select the delimiting character to separate the primitive array values in a cell |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
