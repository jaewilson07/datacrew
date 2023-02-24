---
    title: Accellion Connector
    url: https://domo-support.domo.com/s/article/360058904853
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360058904853](https://domo-support.domo.com/s/article/360058904853)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003280
    views: 1,120
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Accellion, Inc. is a private cloud solutions company focused on secure file sharing and collaboration. It offers productivity, enterprise content, file sharing, and synchronization. With Accellion, you can access, edit, and share enterprise content from any device while maintaining compliance and security. Use Domo’s Accellion connector to retrieve the files that matters to you with an elaborated search. To learn more about the Accellion API, visit <https://www.accellion.com/sites/default/files/resources/ds_enterprise-api-overview-guide.pdf>.


You connect to your Accellion account in the Data Center. This topic discusses the fields and menus that are specific to the Accellion connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Accellion account and create a DataSet, you must have the following:


* Your Accellion host name
* Your Accellion access token







**Note:** The Accellion API tokens expire after 60 days. So, you will need to re-authenticate once your API token expires after 60 days.



Connecting to Your Accellion Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Accellion Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Accellion account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Hostname | Enter your Accellion hostname. |
| Access Token | Enter your access token associated with the Accellion account.





**Note:** The Accellion API tokens expire after 60 days. So, you will need to re-authenticate once your API token expires after 60 days.


 |


Once you have entered valid Accellion credentials, you can use the same account any time you go to create a new Accellion DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains the file search methods available to locate your file, along with various other menus which may or may not appear depending on the search method you select.




| Menu | Description |
| --- | --- |
| File Search Method | Select the search method you want to use to search your file. The following file search methods are available:

|  |  |
| --- | --- |
| Discovery Search | Use the Discovery Search method to search the file in the specific folder. |
| Wild Card Search | Use the Wild Card Search method to search the files in all folders and subfolders using the wild card. |

 |
| Select Folders to Search | Select whether you want to search for all folders and sub-folders or some specific folders. |
| Select an Option to Search the File(s) | Specify whether you want to retrieve the file(s) that either contain or doesn’t contain the given file name. |
| File Name | Enter the file name to retrieve the data. Also, you may use % in the file name as a wildcard character.
Example: If the file name is like CC\_WKLY\_LOG\_2020.zip, the file name using the wildcard can be  %\_WKLY\_% to retrieve all the files that can match the provided file name criteria. |
| Number of Days Back | Enter the number of days that you want to retrieve the data for files updated after. |
| Folder IDs | Select the folder IDs in which you would like to search for the file. |
| Folder Name | Select the folder. |
| File Name | Select the file. |
| Select the Delimiting Character | Select the delimiting character used in your file. If your delimiter is not listed, select 'Other'. |
| Custom Delimiter | Enter the character used to delimit your data in the file. |
| Quote Character | Select the desired quote character. (Double quote is the default quote character for CSV standard). |
| Custom Quote Character | Enter the desired Quote character. |
| Escape Character | Select the desired escape character. |
| Custom Escape Character | Enter the desired escape character. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

