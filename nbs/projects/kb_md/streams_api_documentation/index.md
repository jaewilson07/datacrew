---
    title: Streams API Documentation
    url: https://domo-support.domo.com/s/article/360048847833
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360048847833](https://domo-support.domo.com/s/article/360048847833)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003154
    views: 1,158
    created_date: 2022-10-24 21:10:00
    last updated: 2022-10-24 22:40:00
    ---



Streams are representations of data as it is "streamed" from a data source to Domo, thereby creating a DataSet. The Streams API can be used to perform actions on Streams. It does this by performing multi-part streaming executions through `containerManager/connectors`.


For more information visit the Domo Developer website: [https://developer.domo.com/docs/streams-api-reference/streams](https://developer.domo.com/docs/streams-api-reference/streams "https://docs.google.com/spreadsheets/d/11lBxk2BchZG1r5atMELpULs6HHBgB6sLXKKm5eHFqJY/edit#gid=0")


Endpoints
---------


All of the following API endpoints are available:




| Method | Endpoint | Usage | Notes  |
| --- | --- | --- | --- |
| POST | /api/data/v1/streams | Creates a stream |  |
| GET  | /api/data/v1/streams/{id}  | Gets a stream  |  |
| PUT  | /api/data/v1/streams/{id}  | Updates a stream  | In the body, provide the field you want to update. You can only update the following:* `dataSource`
* account
* streamConfiguration
* schemaDefinition
 |
| DELETE  | /api/data/v1/streams/{id}  | Deletes a stream  |  |
| POST  | /api/data/v1/streams/{id}/executions  | Create  |   
  |
| GET  | /api/data/v1/streams/{id}/executions/{id}  | Retrieve  |  |
| GET  | /api/data/v1/streams/{id}/executions  | List  |  |
| PUT  | /api/data/v1/streams/{id}/executions/{id}  | Update |  |
| DELETE  | /api/data/v1/streams/{id}/executions/{id}  | Delete  |  |
| PUT  | /api/data/v1/streams/{id}/data/{dataId}/parts/{partId}  | Start multipart  |  |
| PUT  | /api/data/v1/streams/{id}/data/{dataId}/parts/{partId}   | Upload multipart  | If the transport type of the stream is CONNECTOR, a container is launched for the given connector. The stream configuration must contain the parameters defined in the Transport description and version.
If the transport type is any other type, use the given endpoints to complete the execution. Whether this execution appends or replaces data is determined by the stream. You can override this behavior by passing this information into the body:

|  |
| --- |
| 
```
{"updateMethod":"REPLACE"}
```
 |

  |
| PUT  | /api/data/v1/streams/{id}/data/{dataId}/{action}  | Finalize multipart  |  |
| GET  | /api/data/v1/streams/search?q={query}  | Searches for streams  | This query can take the following parameters. (Only one can be used at a time.)* `account.configurations.value` - finds all streams with accounts containing the given value
* `[dataSource.id](http://dataSource.id)` - finds the stream for the given data source
* `[dataSource.name](http://dataSource.name)` - finds all streams with this data source name (uses wildcards)
* `[dataSource.owner.id](http://dataSource.owner.id)` - finds all streams with data sources owned by the given user
* `transport.type` - finds all streams that use the given transport type
 |


JSON Examples
-------------


The following JSON shows the creation of a stream without a schedule. This example assumes that an account has already been created in a separate process and the user is simply joining that account.




|  |
| --- |
| 
```
{
  "transport": {
    "type": "SFTP"
  },
  "dataSource": {
    "name": "My New DataSet",
    "description": "This will bring about world peace"
  },
  "account": {
    "id": 19
  }
}
```
 |


The following JSON shows the retrieval of a stream with all relevant subsections:




|  |
| --- |
| 
```
{
  "id": 1,
  "valid": true,
  "transport": {
    "type": "CONNECTOR",
    "version":"9.1",
    "description": "com.domo.connector.facebook",
    "configurations": [ {"name1": "value1"} ]
  },
  "configuration": {
    "name2": {"value": "value2", "type": "String"}, // type provides ability of Config Wizard UI to more intelligently render and verify
    "name1": {"value": "value1", "type": "Integer"}
  },
  "schedule": {
    "expression": "R/2015-03-01T13:00:00Z/P1Y2M10DT2H30M",
    "cron": "0 29 2 * * ? *",
    "start": "2015-03-31T16:56:57",
    "end": "2015-03-31T16:56:57"
  },
  "account": {
    "id": 5,
    "userId": 1125436,
    "name": "[chad.maughan@domo.com](mailto:chad.maughan@domo.com)",
    "displayName": "[chad.maughan@domo.com](mailto:chad.maughan@domo.com)",
    "type": "DATA",
    "valid": true,
    "dataProviderType": "facebook",
    "credentialsType": "oauth",
    "createdAt": "2015-03-31T16:56:57",
    "createdBy": 1125436,
    "modifiedAt": "2015-03-31T16:56:57",
    "modifiedBy": 1125436,
    "configurations": [ {"name1": "value1"} ]
  },
  "dataProvider": {
    "id": 1,
    "key": "facebook",
    "name": "Facebook"
  },
  "dataSource": {
    "id": "00216ef1-f845-449c-99c8-13a29f723979",
    "name": "Opportunities",
    "description": "Corporate Sales Pipeline",
    "dataProviderType": "facebook",
    // statistics (row count, size, etc - data warehouse junk)
  },
  "playbookRegistryId": null,
  "executions": [],
  "changes": [],
  "createdAt": "2015-03-31T16:56:57",
  "createdBy": 1125436,
  "modifiedAt": "2015-03-31T16:56:57",
  "modifiedBy": 1125436,
}
```
 |


 




|  |
| --- |
|  |

