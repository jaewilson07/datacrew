

Intro
-------

Use the Domo Word plugin to download Cards or DataSet data from Domo into Microsoft Word. This is an excellent way to share your Domo data with others in your company who may not have access to Domo.


 You can choose which Card components you want to import; for example, for a given chart Card you could import just the chart, the summary number, last update date, etc., or you could import all of these. You can also use the Word plugin to import DataSets or portions of DataSets into Word through the use of "query tables." These are subsets of DataSets or single values you pull into Word based on aggregates, filters, limits, etc. Once you have pulled your Domo data into Word, you can refresh it at any time with the click of a button.


**Notes:**

 The Domo Word plugin works
 *only*
 in Word on Windows machines and is only supported by Office 2000 and later.
* Multi-factor verification is available for the Word Plugin.
* Admin-, Privileged-, and Editor-level users can all use this plugin.


**Video - Domo Word Plugin**


###
 What You Can Do with the Plugin

Using this plugin, you can do all of the following:

 Import

Visualization Cards

or individual components of Visualization Cards (such as chart/table content, summary numbers, owner name, etc.) into Word.
* Use query tables to import DataSet data as selected fields or as a single value.
* Highlight the Domo content in your Word document so viewers can recognize it immediately.
* Refresh the content—if anything has changed in the Card or DataSet, it will be "redownloaded."


###
 Downloading the plugin

You can download the Domo Word plugin in the Admin Settings.


**To download the Domo Word plugin,**

. In Domo, navigate to
 **Admin Settings**
 .
2. Select
 **Tool Downloads**
 .
3. Scroll down to the
 **Domo Word plug-in**
 section.
4. Click
 **Try the Word Plug-In**
 .


####
 Installing the plugin

You can install the plugin either through the wizard that opens after installation or by command line.

####
 Wizard Install


1. After the plugin finishes downloading, follow the steps in the wizard to install it to your computer.

The plugin will now be available when you open Word.

####
 Command Line Install


1. First, ensure that you are an Admin on the Windows machine.
2. Open up the Command Prompt by clicking the
 **Start Menu**
 .
3. Type CMD in the search bar.
4. Right-click
 **Command Prompt**
 then click
 **Run as Administrator**
 .
5. Navigate to the Domo Word Plugin download from your Admin Portal > Tool Downloads
6. In the command line terminal, run a command line using the file pathway that points to the Domo Word Plugin downloaded file similar to this:


`C:\Windows\system32>\Users\user_account_name\Downloads\domowordsetup.msi`
7. This will start of the Domo Word Add-in Setup Wizard.
8. Follow the prompts to install the Domo Word plugin.


###
 Sequence of steps

The process for using the plugin to download Domo content to Word can be summarized as follows:

. **Connect to the server**
 for the Domo instance you want to retrieve Domo content from.
2. **Download the desired Card or DataSet content**


 into Word.
3. Highlight the Domo content so viewers will recognize it as such in your document.
4. **Refresh the data**
 as necessary to keep everything up to date.

Parts of the Domo Tab and Sidebar in Word
-------------------------------------------

After you have installed the Domo Word plugin, a
 **Domo**
 tab appears near the end of the main tab row in Word. This tab appears as follows:

The following table describes the components of this tab:


 Component
  |
 Description
  |
| --- | --- |
|
 Connect to Domo
  |
 Lets you connect to a specified Domo instance. You can be connected to multiple instances at once. If you are already connected to an instance, this button reads
 **Connected**
 . In this case, you can add new connections or delete connections using this option.
  |
|
 Highlight Domo Content
  |
 Lets you toggle highlighting of Domo content in your Word document.
  |
|
 Open Sidebar
  |
 Opens a sidebar on the right side of the screen from which you can choose the Cards or DataSet data you want to import into Word. This is discussed in more detail below.
  |
|
 Refresh
  |
 Refreshes the Domo content in this Word document.
  |
|
 Help
  |
 Lets you see the version number for this version of Domo Word as well as check for newer versions.
  |

The sidebar appears when you click
 **Open Sidebar**
 in the
 **Domo**
 tab.

The following table describes the components of the sidebar:


 Component
  |
 Description
  |
| --- | --- |
|
 Connect to Domo
  |
 Lets you connect to a specified Domo instance. You can be connected to multiple instances at once. If you are already connected to an instance, this button reads
 **Connected**
 . In this case, you can add new connections or delete connections using this option.
  |
|
 Server Menu
  |
 Lets you select the connected Domo server you want to retrieve data from. Only appears if you have connected to more than one server.
  |
|
 Search Field
  |
 Lets you search for Cards or pages in the connected Domo instance.
  |
|
 Add Custom Query Table
  |
 Lets you import subsets of DataSets or single values into Word, based on aggregates, filters, limits, etc. Query tables are discussed in more detail later in this topic.
  |
|
 Pages/Subpages
  |
 Provide access to the Cards and/or subpages located under them. Indicated using the

icon.
  |
|
 Cards
  |
 Let you open Cards in the sidebar, broken down into their individual components (such as visual content, summary number, etc.), which you can drag into your Word document as desired. Indicated using the

icon.
  |
|
 Apply Page Filters
  |
 Determines whether page filters are applied to the pages listed in the sidebar.
  |
|
 Refresh Button


 |
 Allows you to refresh the list of pages appearing in the sidebar.
  |

Connecting to a Domo Server
-----------------------------

You can connect to the server for any Domo instance for which you have access. You can be connected to multiple instances at once.


**To connect to a Domo server,**

. Click the
 **Connect to Domo**
 button on the left side of the Domo tab in Word. (If you are already connected to any servers, the button reads
 **Connected**
 .)

A dialog appears requesting that you add a connection.
2. Click the "+" button in the left pane.
3. Enter the URL for your Domo server in the field, then click
 **Authenticate**
 .

If you are already logged into the specified instance, you are authenticated automatically. Otherwise, a browser window opens prompting you to enter your credentials for the specified instance.
4. (Conditional) Enter your Domo credentials for the specified instance if prompted to do so.


 You must have an "Admin" or "Privileged" security profile to connect.


 If you have entered your credentials correctly, a checkmark appears next to the account name in the
 **Manage Connections**
 pane.
5. Click
 **Close**
 .

Deleting a Server Connection
------------------------------

You can delete a connection to a server in the same dialog in which you add a server connection.


**To delete a server connection,**

. Click the
 **Connected**
 button on the left side of the Domo tab in Word.
2. Select the server you want to disconnect from.
3. Click
 **Delete.**
4. Click
 **Yes**
 to confirm the deletion.

Testing or Reauthorizing Server Connections
---------------------------------------------

If you need to reauthorize a connection for a server or test all of your connections, you can do so in the
 **Manage Connections**
 dialog.


**To test or reauthorize server connections,**

. Click the
 **Connected**
 button on the left side of the Domo tab in Word.
2. Do one of the following:

* To test your connections, click
	 **Test Connections**
	 .
	* To reauthorize a server, select the server you want to reauthorize, then click
	 **Reauthorize**
	 .

Importing Card Content into Word
----------------------------------

After you have connected to a Domo server, you can import Visualization Card content from any page in that instance to which you have access. You do this by selecting the page and Card in the sidebar then choosing the components of the Card you want to import.


**To import Card content into Word,**

. (Conditional) Open the sidebar if it is not open already, by clicking
 **Open Sidebar**
 in the Domo tab at the top of the screen.
2. (Optional) If you have connected to more than one Domo server, select the server you want to retrieve data from in the menu at the top of the sidebar.
3. In the sidebar, locate the page containing the content you want to import into Word, either by scrolling down the list (pages are shown in alphabetical order) or by entering the page name in the
 **Search**
 field.


 Pages in the sidebar are indicated using the

icon.
4. Click a page in the sidebar to show all of its subpages and/or Visualization Cards.


 Visualization Cards in the sidebar are indicated using the

.


 The following screenshot shows an example of a page ("Client Services") that contains two subpages and a number of Cards:
5. Click a Card name in the sidebar to display all of the individual components of that Card.


 In the following screenshot, the user has clicked on a Card called "RT: Customer Satisfaction."
6. Drag the desired components into your Word document.


 You can pull over the Card name, summary number, and visual content as a group by clicking anywhere outside the dotted lines in the large rectangle (the empty space will turn blue when you mouse over it) and dragging into your Word document.

You can also pull any of these individually by clicking within the dotted lines for the component and dragging it. The Card owner, last update date/time, and last modified date/time can
 *only*
 be pulled individually.
7. (Optional) After you have dragged all the desired components into your Word document, you can highlight them as Domo content by clicking
 **Highlight Domo Content**
 in the
 **Domo**
 tab.


**Note:**
 Table Cards are not currently supported in the Word Plugin.

Building a Query Table
------------------------

You can add a "query table"—a subset of a DataSet in which you can optionally configure filters or aggregations—to a Word document. You can add this data as one or more columns, or you can aggregate the data to yield a single value.


**To add DataSet data to a Word document,**

. Click
 **Add Custom Query Table**
 in the sidebar.


 A list of all DataSets in your connected Domo instance appears.
2. Select the DataSet you want to add as a query table, then click
 **Next**
 to proceed to the next screen.


 You can use the various search/filter options to narrow down the DataSets in the list.

A dialog opens in which you can set filters, aggregate, select or deselect columns, and change the order of columns. A preview is provided so you can see changes you have made to the selected data.
3. Enter a name for the query table in the field at the top of the
 **DataSets**
 tab.
4. (Optional) Configure filters as follows:

1. Click the
	 **Filter**
	 tab if it is not open already.
	2. In the first dropdown, select the column you want to filter.
	3. In the second dropdown, select the comparison for the filter.
	4. In the last dropdown, enter the value for the condition.
	5. Click
	 **R**
	**efresh**
	 to show the changes in the query table.

 For example, if you wanted your query table to show only those rows in which your number of daily visitors is less than 20, you would select "Daily Visitors" in the first dropdown, select
	 **is less than**
	 in the second dropdown, and enter

 20

 in the last dropdown.


	 You can add additional filters by clicking
	 **Add a filter**
	 then repeating the previous step.
5. (Optional) To group a column (which combines all like rows in the column into a single row and aggregates the values in that row), do the following:

1. Click the
	 **Group & Aggregate**
	 tab.
	2. In the menu on the left side of the tab, select the column you want to group.
	3. Click
	 **R**
	**efresh**
	 to show the changes in the query table.


	 The following screenshot shows a preview of a DataSet that has not been grouped. Each "AccountName" row has its own unique values. For example, the account called "Parker, Inc." has an "OpportunityAmount" of 9,125.

 If the user then selects "AccountIndustry" as the group by column, all of the like rows under "Account Industry" are combined, and all other columns are aggregated. This is shown in the following screenshot. Note that the "AccountName" column is given an aggregation of COUNT because the items in that column were strings, e.g. there were 555 accounts with an "AccountIndustry" of "Consumer Services." "OpportunityAmount," on the other hand, contained values, which can be summed to yield totals for each account industry.

 Each data type has a default aggregation when grouping. Strings are counted, values are summed, and dates receive an aggregation of MIN (meaning the earliest date is shown). Though there is no way to change the aggregation for a column, if you want to see a particular column aggregated differently, you can do so by adding an aggregation using the menus on the right side of the tab. For example, if the user in the previous example wants to show the average "OpportunityAmount" for each industry, he can do so by choosing "OpportunityAmount" as the column to be aggregated and AVERAGE as the aggregation type. This is shown in the following screenshot, in which a new "OpportunityAmount (AVG)" column has been added.

 You can add additional groupings and aggregations by clicking
	 **Add a Group By**
	 and
	 **Add an aggregation**
	 , respectively.


	 Be aware that you can only add new aggregation columns in this way after specifying a grouping. If you add an aggregation without first doing a grouping, the data in your DataSet is consolidated into a single value, as explained in the next step.
6. (Optional) To aggregate your DataSet data into a single value (which is only possible if you haven't grouped columns as explained in step 5):

1. Click the
	 **Group & Aggregate**
	 tab.
	2. In the first menu on the right side of the tab, select the column you want to aggregate.
	3. In the second menu on the right side of the tab, select the desired aggregation.


	 For best results, choose "COUNT" or "DISTINCT COUNT" for string columns; "SUM," "MIN," "MAX," or "AVERAGE" for data columns; and "MIN" or "MAX" for date columns.
	4. Click
	 **R**
	**efresh**
	 to show the changes in the query table.


	**Note:**
	 When you aggregate to yield a single value in this way, the
	 **Column**
	 and
	 **Order**
	 tabs disappear. This is because there is now only one column in your query table, meaning you cannot add/remove or reorder columns.
7. (Optional) Add or remove columns to/from your query table by doing the following:

1. Click the
	 **Columns**
	 tab.
	2. Check or uncheck the boxes for the columns you want to keep or remove, respectively.


	 You can use
	 **Select All**
	 to check all columns or
	 **Deselect All**
	 to uncheck all columns.
	3. Click
	 **R**
	**efresh**
	 to show the changes in the query table.
8. (Optional) Change the order of rows in your query table by doing the following:

1. Click the
	 **Order**
	 tab.
	2. Select a column to order by in the first dropdown under "Order rows by," then select the order type (
	 **ascending**
	 or
	 **descending**
	 ) in the next dropdown.
	3. If you want to include another column to order by, click
	 **Add an order clause**
	 then repeat the instructions in the previous step.
	4. Click
	 **R**
	**efresh**
	 to show the changes in the query table.
9. (Optional) Limit the rows of data returned by doing the following:

1. Enter the row number in which you want to begin returning data in the first dropdown under "Limit."
	2. Specify the number of rows of data to return in the second dropdown.


	 For example, if you only wanted to return rows 10 through 20, you would enter

 10

 in both dropdowns (the first signifying that the import should begin at row 10, and the second signifying that 10 rows of data should be imported).
	3. Click
	 **R**
	**efresh**
	 to show the changes in the query table.
10. Click
 **Save**
 when you are done making changes to the query table in the
 **DataSets**
 tab.


 Your query table data now appears in the sidebar, broken up into components you can manipulate separately, similar to Cards. These components include the name of the query table; a preview of the query table's column headers if the table contains one or more columns OR the single value if you chose to aggregate the data; and the SQL query being used to generate the table. The following screenshot shows an example of a query table with columns:
11. Pull query table components into your document by dragging them from the sidebar into Word.
12. (Optional) If you need to open the wizard for this query table so you can make changes, you can do so by clicking
 **Edit this Query**
 .
13. (Optional) To delete this query, click
 **Delete this Query**
 .

Refreshing Domo Content
-------------------------

After you add Domo content (either Card components or query tables) to a Word document, you can refresh as necessary to update the data.


**To refresh your Domo content,**

. Click
 **Refresh**
 in the
 **Domo**
 tab.
2. Click
 **Yes**
 to confirm.

Troubleshooting
-----------------

Several customers have reported an issue in which Microsoft disables the plugin after a crash; hence the plugin is still installed but is in a disabled state, so the
 **Domo**
 tab doesn't appear. Reinstalling the plugin leaves it in the disabled state. Below are instructions to re-enable the plugin.


**To re-enable the Word Plugin**
**,**

. Open Word.
2. Select
 **File > Options**
 .
3. Select
 **Add-ins**
 .
4. In the
 **Manage**
 dropdown, select
 **COM Add-ins**
 , then click
 **Go**
 .
5. Check the box next to
 **DomoWord**
 then click
 **OK**
 .

If the box is already checked and the
 **Domo**
 tab still doesn't appear, make sure you don't have multiple versions of the plugin installed. You can remove extra instances by doing the following:

. In the Windows Control Panel, go to
 **Add/Remove Programs**
 .
2. Remove all instances of "DomoWord."
3. Reinstall the plugin.


