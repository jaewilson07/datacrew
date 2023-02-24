---
title: AppDB Admin User Interface
url: https://domo-support.domo.com/s/article/9221297758615
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan6GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan6GAC)', '[https://domo-support.domo.com/s/article/9221297758615](https://domo-support.domo.com/s/article/9221297758615)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan6GAC/appstore-overview](https://domo-support.domo.com/s/topic/0TO5w000000Zan6GAC/appstore-overview)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004979
views: 1,788
created_date: 2022-11-01 23:18:00
last updated: 2022-11-01 23:23:00
---



Intro
-----


AppDB stores JSON documents in Domo like a NoSQL database. Users can store data in collections, update documents, update collection schema, add filters at the document level, and manage permissions. It is possible to perform all these tasks via API calls. To learn more about using APIs with AppDB, see [AppDB API](https://developer.domo.com/docs/dev-studio-references/appdb) in our developer docs.


The AppDB Admin interface allows you to access AppDB and perform tasks from Domo web.


Accessing AppDB Admin
---------------------


Follow these steps to access AppDB Admin.


1. From the Domo navigation header, go to **Appstore**.  
The Domo Appstore displays.


2. In the left side rail, select ![appdb_icon.png](appdb_icon.png)**AppDB Admin**.  
The AppDB Admin interface displays. The default landing page is **My Collections** and the default Filter is **Owned by** the current user.


In the **Shared with me** section, you can view all the collections that have been shared with you by other users.


#### Searching and Filters


To find a specific collection, enter a keyword in the **Search** bar.


You can select ![add_filters.jpg](add_filters.jpg) **Add Filters** to apply other Filters and narrow down the list of search results.


Remove a Filter by selecting **X** for that Filter.


![appdb_admin_my_collections.png](appdb_admin_my_collections.png)


Creating a Collection
---------------------


1. From the AppDB Admin landing page, select **Create a Collection**.  
You are prompted to enter a **Collection Name** and optional **Datastore Name**.







**Note:** If you add a Datastore Name when creating a collection, a datastore is created in Domo for that collection. This can be helpful because it creates another possible keywords to search for if you remember the datastore name, but not the name of the collection. The datastore name displays in the **App Name** column of your collection.  
  




**![create_a_collection.png](create_a_collection.png)**


2. Select **Create**.  
The collection Details page displays.


Collection Details
------------------


The collection Details page has three tabs: **Data Explorer**, **Configuration**, and **Permissions**. The **Data Explorer**tab is open by default.


#### Data Explorer


Data Explorer allows you to create, modify, and query documents in the collection. 


**Creating a Document**


1. Select **+ New Document**.  
The **New Document** modal displays.


![data_explorer__new_doc.png](data_explorer__new_doc.png)


2. Specify the content of your new document in a JSON format.







**Note:** If the collection schema has been defined, the modal prepopulates the default value.



![Screen_Shot_2022-10-13_at_1.45.53_PM.png](Screen_Shot_2022-10-13_at_1.45.53_PM.png)


3. Select **Create**.


**Modifying a Document**


1. Select the triple-dot menu beside the document.  
The document options display.


![modifying_doc.png](modifying_doc.png)


2. Select the option that you want.


* Selecting **Edit**allows you to modify the document's content.
* Selecting **Copy** duplicates the document.
* Selecting **Sync** displays the most recent version of the document.
* Selecting **Delete** deletes the document.


**Querying and Filters**


1. To query on a certain item in the data, locate the **Filters**section in **Data Explorer** and select **+ Add New**.  
A blank Filter displays.


2. Select a field to filter on.


3. Select logic.


4. Enter the query term.


5. Select **Apply**.


![applying_a_filter.png](applying_a_filter.png)  
The Filter results display on the right side of the screen.


You can delete a Filter by selecting ![delete_submission.png](delete_submission.png) **Delete** beside the Filter fields.


**Sorting Results with Aggregations**


You can sort the results of your Filter by using **Aggregations**.


1. In **Query Builder** under **Aggregations**, select **+ Add New**.  
The aggregation fields display.


2. Select the aggregation method.


3. Select the Field to sort by.


4. Select the order.


![Screen_Shot_2022-10-17_at_3.13.00_PM.png](Screen_Shot_2022-10-17_at_3.13.00_PM.png)


5. Select **Apply** to sort the results on the right by your aggregation.


You can delete an aggregation by selecting ![delete_submission.png](delete_submission.png)**Delete** beside the aggregation fields.







**Note:** Some aggregations, like **average** and **groupby**, support multiple columns.



#### Configuration


In the **Configuration** tab, you can see all the columns that are currently defined.


**Adding a Column**


1. Select **+ Add Column**.  
A record is added at the bottom of the **Schema Builder**.


![Screen_Shot_2022-10-18_at_9.59.48_AM.png](Screen_Shot_2022-10-18_at_9.59.48_AM.png)


2. Enter a **Column Name**.


3. Select a **Column Type** from the list.


![Screen_Shot_2022-10-18_at_10.04.02_AM.png](Screen_Shot_2022-10-18_at_10.04.02_AM.png)


When you are ready to save your changes to **Configuration**, select **Save**.


**Modifying a Column**


You can modify a column by editing the name or column type, reordering it, or deleting it.


* **To edit the name —** Hover over the name of the column til the pencil appears. Then select it and enter the new column name.  
![Screen_Shot_2022-10-18_at_10.06.37_AM.png](Screen_Shot_2022-10-18_at_10.06.37_AM.png)
* **To edit the column type —** Select the ![Screen_Shot_2022-10-18_at_10.08.11_AM.png](Screen_Shot_2022-10-18_at_10.08.11_AM.png) arrow to show the list and select the new column type.
* **To reorder the columns —**Hover over the **![Screen_Shot_2022-10-18_at_10.10.11_AM.png](Screen_Shot_2022-10-18_at_10.10.11_AM.png) Reorder Handle**until the cursor becomes a hand. Then click and drag the column record to the correct location.
* **To delete a column —**Hover over the column until the ![Screen_Shot_2022-10-18_at_10.11.58_AM.png](Screen_Shot_2022-10-18_at_10.11.58_AM.png)**Delete** option displays. Select ![Screen_Shot_2022-10-18_at_10.11.58_AM.png](Screen_Shot_2022-10-18_at_10.11.58_AM.png)**Delete**.


When you are ready to save your changes to **Configuration**, select **Save**.


#### Permissions


In the **Permissions** tab, you manage your collection's sharing permissions. Use **Document Security Filters** to create specific queries to limit users to see or use only certain data that is stored in the collection. These Filters are like Personalized Data Permissions (PDP) for AppDB.


**Share Collection Access**


At the top of the **Permissions** tab, see the list of users who have access to the collection.


1. To add or modify access, select **![share_collection_access.png](share_collection_access.png)**.  
The **Share Access for Collection** modal displays.


![share_access_modal.png](share_access_modal.png)


2. Enter a person or group in the search bar to find their profile.


3. Next to the person's name, select the access list to choose what level of access that user should have. The options are as follows:


* Read
* Write
* Delete
* Share
* Admin
* Read Content
* Create Content
* Update Content
* Delete Content
* No Access


4. Select **Save**.


**Connecting an App**


You can connect your collection to an app.


1. Select **+ Share With New App**.  
The **Manage Permissions**modal displays.


![share_with_app.png](share_with_app.png)


2. Enter the name of an app in the search bar or scroll to find it.


3. Next to the app's name, select the access list to choose what level of access that app should have. The options are as follows:


* Read
* Write
* Delete
* Share
* Admin
* Read Content
* Create Content
* Update Content
* Delete Content
* No Access


4. Select **Save**.


**Adding a Permission**


1. Select **+ Add Permissions**.  
A blank permission record displays.


2. Enter a **Filter Name**.


3. Select **Apply To** and add groups and people that the Filter should apply to in the **Add groups & people** modal that displays.   
Alternatively, you can select **Apply To**and check the box for **Apply to All**.


4. Select **Apply Changes**.  
The modal closes with the saved changes


![apply_changes.png](apply_changes.png)


5. Under **Query**, check the box to **Limit To Owner** or select **Modify Query** to modify the JSON request.


![Screen_Shot_2022-10-18_at_1.15.51_PM.png](Screen_Shot_2022-10-18_at_1.15.51_PM.png)


6. In the **Apply On** list, select the action to apply the permission to.   
The options are:


* Read
* Update
* Delete


7. Select **Save**.


8. Select ![Screen_Shot_2022-10-18_at_10.11.58_AM.png](Screen_Shot_2022-10-18_at_10.11.58_AM.png) **Delete** to delete a Filter.


#### Exporting a Collection


No matter what tab you are in inside Collection Details, you can see the **Export Collection** option near the top of the screen.


Select **Export Collection** to download the current collection as a JSON file.


![export_collection.png](export_collection.png)


 


 


 


 


 


 

