

Intro
-------

AppDB stores JSON documents in Domo like a NoSQL database. Users can store data in collections, update documents, update collection schema, add filters at the document level, and manage permissions. It is possible to perform all these tasks via API calls. To learn more about using APIs with AppDB, see

AppDB API

in our developer docs.


 The AppDB Admin interface allows you to access AppDB and perform tasks from Domo web.


 Accessing AppDB Admin
-----------------------

Follow these steps to access AppDB Admin.


 1. From the Domo navigation header, go to
 **Appstore**
 .


 The Domo Appstore displays.


 2. In the left side rail, select

*AppDB Admin**
 .


 The AppDB Admin interface displays. The default landing page is
 **My Collections**
 and the default Filter is
 **Owned by**
 the current user.


 In the
 **Shared with me**
 section, you can view all the collections that have been shared with you by other users.

###
 Searching and Filters

To find a specific collection, enter a keyword in the
 **Search**
 bar.


 You can select

*Add Filters**
 to apply other Filters and narrow down the list of search results.


 Remove a Filter by selecting
 **X**
 for that Filter.

Creating a Collection
-----------------------

1. From the AppDB Admin landing page, select
 **Create a Collection**
 .


 You are prompted to enter a
 **Collection Name**
 and optional
 **Datastore Name**
 .

*Note:**
 If you add a Datastore Name when creating a collection, a datastore is created in Domo for that collection. This can be helpful because it creates another possible keywords to search for if you remember the datastore name, but not the name of the collection. The datastore name displays in the
 **App Name**
 column of your collection.


 2. Select
 **Create**
 .


 The collection Details page displays.


 Collection Details
--------------------

The collection Details page has three tabs:
 **Data Explorer**
 ,
 **Configuration**
 , and
 **Permissions**
 . The
 **Data Explorer**
 tab is open by default.

###

Data Explorer

Data Explorer allows you to create, modify, and query documents in the collection.

*Creating a Document**

1. Select
 **+ New Document**
 .


 The
 **New Document**
 modal displays.

2. Specify the content of your new document in a JSON format.

*Note:**
 If the collection schema has been defined, the modal prepopulates the default value.


 3. Select
 **Create**
 .

*Modifying a Document**

1. Select the triple-dot menu beside the document.


 The document options display.

2. Select the option that you want.

 Selecting
 **Edit**
 allows you to modify the document's content.
* Selecting
 **Copy**
 duplicates the document.
* Selecting
 **Sync**
 displays the most recent version of the document.
* Selecting
 **Delete**
 deletes the document.


**Querying and Filters**

1. To query on a certain item in the data, locate the
 **Filters**
 section in
 **Data Explorer**
 and select
 **+ Add New**
 .


 A blank Filter displays.


 2. Select a field to filter on.


 3. Select logic.


 4. Enter the query term.


 5. Select
 **Apply**
 .

The Filter results display on the right side of the screen.


 You can delete a Filter by selecting

*Delete**
 beside the Filter fields.

*Sorting Results with Aggregations**

You can sort the results of your Filter by using
 **Aggregations**
 .


 1. In
 **Query Builder**
 under
 **Aggregations**
 , select
 **+ Add New**
 .


 The aggregation fields display.


 2. Select the aggregation method.


 3. Select the Field to sort by.


 4. Select the order.

5. Select
 **Apply**
 to sort the results on the right by your aggregation.


 You can delete an aggregation by selecting

*Delete**
 beside the aggregation fields.

*Note:**
 Some aggregations, like
 **average**
 and
 **groupby**
 , support multiple columns.


####

Configuration

In the
 **Configuration**
 tab, you can see all the columns that are currently defined.


**Adding a Column**


 1. Select
 **+ Add Column**
 .


 A record is added at the bottom of the
 **Schema Builder**
 .

2. Enter a
 **Column Name**
 .


 3. Select a
 **Column Type**
 from the list.

When you are ready to save your changes to
 **Configuration**
 , select
 **Save**
 .


**Modifying a Column**


 You can modify a column by editing the name or column type, reordering it, or deleting it.

 **To edit the name —**
 Hover over the name of the column til the pencil appears. Then select it and enter the new column name.
* **To edit the column type —**
 Select the

arrow to show the list and select the new column type.
* **To reorder the columns —**
 Hover over the
 **Reorder Handle**

until the cursor becomes a hand. Then click and drag the column record to the correct location.
* **To delete a column —**
 Hover over the column until the

*Delete**
 option displays. Select

*Delete**

.

When you are ready to save your changes to
 **Configuration**
 , select
 **Save**
 .

###
 Permissions

In the
 **Permissions**
 tab, you manage your collection's sharing permissions. Use
 **Document Security Filters**
 to create specific queries to limit users to see or use only certain data that is stored in the collection. These Filters are like Personalized Data Permissions (PDP) for AppDB.

*Share Collection Access**

At the top of the
 **Permissions**
 tab, see the list of users who have access to the collection.


 1. To add or modify access, select

.


 The
 **Share Access for Collection**
 modal displays.

2. Enter a person or group in the search bar to find their profile.


 3. Next to the person's name, select the access list to choose what level of access that user should have. The options are as follows:

 Read
* Write
* Delete
* Share
* Admin
* Read Content
* Create Content
* Update Content
* Delete Content
* No Access

4. Select
 **Save**
 .


**Connecting an App**


 You can connect your collection to an app.


 1. Select
 **+ Share With New App**
 .


 The
 **Manage Permissions**
 modal displays.

2. Enter the name of an app in the search bar or scroll to find it.


 3. Next to the app's name, select the access list to choose what level of access that app should have. The options are as follows:

 Read
* Write
* Delete
* Share
* Admin
* Read Content
* Create Content
* Update Content
* Delete Content
* No Access

4. Select
 **Save**
 .

*Adding a Permission**

1. Select
 **+ Add Permissions**
 .


 A blank permission record displays.


 2. Enter a
 **Filter Name**
 .


 3. Select
 **Apply To**
 and add groups and people that the Filter should apply to in the
 **Add groups & people**
 modal that displays.


 Alternatively, you can select
 **Apply To**
 and check the box for
 **Apply to All**
 .


 4. Select
 **Apply Changes**
 .


 The modal closes with the saved changes

5. Under
 **Query**
 , check the box to
 **Limit To Owner**
 or select
 **Modify Query**
 to modify the JSON request.

6. In the
 **Apply On**
 list, select the action to apply the permission to.


 The options are:

 Read
* Update
* Delete

7. Select
 **Save**
 .


 8. Select

*Delete**
 to delete a Filter.

###
 Exporting a Collection

No matter what tab you are in inside Collection Details, you can see the
 **Export Collection**
 option near the top of the screen.


 Select
 **Export Collection**
 to download the current collection as a JSON file.


