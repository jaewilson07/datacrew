---
    title: Adobe Sign Connector
    url: https://domo-support.domo.com/s/article/360043434793
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434793](https://domo-support.domo.com/s/article/360043434793)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003437
    views: 2,118
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Adobe Sign is a cloud-based e-signature service that allows the user to send, sign, track, and manage signature processes using a browser or mobile device. It is part of the Adobe Document Cloud suite of services. Use the Domo Adobe Sign connector to retrieve data that matters to you. For more information about the Adobe Sign API, see [https://www.adobe.io/apis/documentcl...r/api\_usage.md](https://www.adobe.io/apis/documentcloud/sign/docs.html#!adobedocs/adobe-sign/master/api_usage.md "https://www.adobe.io/apis/documentcloud/sign/docs.html#!adobedocs/adobe-sign/master/api_usage.md").


This topic discusses the fields and menus that are specific to the Google Ads OAuth connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Adobe Sign data using this connector, you must have your Adobe Sign credentials (email address and password).


Connecting to Your Adobe Sign Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Adobe Sign Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Adobe Sign connector uses OAuth to connect to Adobe Sign. Click **Connect** (or select **Add Account** if you have existing Adobe Sign accounts in Domo) to open the Adobe Sign OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a Adobe Sign DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).







**Note:** If you are already logged into Adobe Sign when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Adobe Sign account.




### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Adobe Sign report type to run. The following reports are available:

|  |  |
| --- | --- |
| Agreements | Retrieves agreements for the user. |
| Groups | Retrieve detailed information about the groups. |
| Library Documents | Retrieves library documents for a user |
| Mega Signs | Get all the Mega Sign parent agreements of a user. |
| Users | Gets all the users in an account. |
| Widgets | Retrieves widgets for a user. |
| Workflows | Retrieves workflows for a user. |

 |
| Filter | Select the report filter. |
| Skip Failed Agreements | When this option is checked, if Adobe Sign fails to return details for an Agreement, it will be excluded from the dataset and Domo will continue processing instead of failing the entire dataset run. This may result in missing data. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Adobe Sign API does this connector use?


This connector uses v5 of the Adobe Sign API (<https://api.na1.echosign.com/api/rest/v5>).


#### Which endpoint(s) does each report call in this connector?




| Report Name | Filters | Endpoint URL(s) |
| --- | --- | --- |
| Agreements | Agreements Detail | /agreements/{agreementId} |
| Combined Document Pages Info | /agreements/{agreementId}/combinedDocument/pagesInfo |
| Combined Document URL | /agreements/{agreementId}/combinedDocument/url |
| Document URL Images | /agreements/{agreementId}/documents/imageUrls |
| Documents | /agreements/{agreementId}/documents |
| List Agreements | /agreements |
| Groups | Group Detail | /groups/{groupId} |
| List Groups | /groups |
| Users | /groups/{groupId}/users |
| Library Documents | Library Documents Detail | /libraryDocuments/{libraryDocumentId} |
| List Library Documents | /libraryDocuments |
| Mega Signs | Agreements | /megaSigns/{megaSignId}/agreements |
| List MegaSigns | /megaSigns |
| MegaSigns Detail | /megaSigns/{megaSignId} |
| Users | List Users | /users |
| Users Detail | /users/{userId} |
| Widgets | Agreements | /widgets/{widgetId}/agreements |
| Documents | /widgets/{widgetId}/documents |
| List Widgets | /widgets |
| Widget Detail | /widgets/{widgetId} |
| Workflows | List Workflows | /workflows |
| Workflows Detail | /workflows/{workflowId} |



#### What kind of credentials do I need to power up this connector?


You need the email address and password associated with your Adobe Sign account.





#### How do I know my login credentials are secure?


The login process uses the OAuth process, so your Adobe Sign credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your Adobe Sign account at any time.





#### How often can the data be updated?


As often as needed.





#### Are there any API limits that I need to be aware of?


No



Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
