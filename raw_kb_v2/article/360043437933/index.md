

Intro
-------

Use the Domo Excel plugin to download DataSets from Domo into Excel. You can then edit the data in Excel just as you could with any Excel spreadsheet. You can also add data to a DataSet through the use of "query tables." These are subsets of DataSets or single values you pull into Excel based on aggregates, filters, limits, etc. After editing data from a DataSet in Excel, you can upload the edited data into the same DataSet you downloaded it from, create a new Domo DataSet from this data, or upload the data to another existing DataSet.


**Notes:**

 The Domo Excel plugin works
 *only*
 in Excel on Windows machines and is only supported by Office 2000 and later.
* Multi-factor verification is
 *not*
 available for the Excel Plugin.
* Admin- and  Privileged-level users can use this plugin.


**Video - Domo Excel Plugin**


###
 What you can do with the plugin

Using this plugin, you can do all of the following:

 Connect to the server for the desired Domo instance.
* Download any DataSet from your connected instance as an Excel file.
* Edit the data in your downloaded DataSet.
* Add filtered or aggregated data to your DataSet through the use of "query tables."
* Refresh the DataSet—if anything has changed in this DataSet, it will be "redownloaded."


###
 Downloading the plugin

You can download the Domo Excel plugin in the Admin Settings.


**To download the Domo Excel plugin,**

. In Domo, navigate to
 **More > Admin**
 .
2. Select the
 **More > Tool Downloads**
 sub-tab.
3. Scroll down to the
 **Domo Excel plug-in**
 section.
4. Click
 **Try the Excel Plug-In**
 .


####
 Installing the plugin

You can install the plugin either through the wizard that opens after installation or by command line.

####
 Wizard Install


1. After the plugin finishes downloading, follow the steps in the wizard to install it to your computer.

The plugin will now be available when you open Excel.

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
5. Navigate to the Domo Excel Plugin download from your Admin Portal > Tool Downloads
6. In the command line terminal, run a command line using the file pathway that points to the Domo Excel Plugin downloaded file similar to this:


`C:\Windows\system32>\Users\user_account_name\Downloads\domoexcelsetup.msi`
7. This will start of the Domo Excel Add-in Setup Wizard.
8. Follow the prompts to install the Domo Excel plugin.


###
 Sequence of steps

The process for using the plugin to download and upload DataSets can be summarized as follows:

. **Connect to the server**
 for the Domo instance you want to retrieve DataSets from.
2. **Download the desired DataSet**


 into Excel.
3. Edit the DataSet in Excel as desired.
4. **Upload the DataSet**
 back into Domo.
5. **Refresh the data**
 as necessary to keep everything up to date.

Parts of the Domo tab in Excel
--------------------------------

After you have installed the Domo Excel plugin, a
 **Domo**
 tab appears near the end of the main tab row in Excel. This tab appears as follows:

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
 Download
  |
 Lets you download a DataSet from your connected Domo instance. If you are connected to multiple instances, you can choose which instance to download from.


**Important:**
 Your downloaded DataSet will replace whatever content is appearing in the current sheet in Domo. For this reason, it is strongly recommended that you open a blank sheet before downloading a DataSet.


 |
|
 Upload
  |
 Lets you upload your edited DataSet back to Domo. You can choose from either of these upload options:
 * You can upload the DataSet back to the same DataSet you pulled it from.
* You can upload the DataSet into a new DataSet.

*Note:**
 If the original DataSet was created and uploaded from the Excel Plugin, both of these options are available. If the originally downloaded DataSet is not an Excel DataSet, only the second option is available.

|
|
 Refresh
  |
 Refreshes this DataSet. If any changes have been made to the DataSet on the Domo side, those changes will be made in the Excel version of the DataSet. In essence, you are doing a "re-download" of the DataSet data.
  |
|
 Linked/Not Linked
  |
 Indicates whether this DataSet is linked to the same DataSet on the Domo side. You can unlink the DataSet by clicking
 **Linked**
 and choosing the
 **Unlink**
 option. Or, you can link an unlinked DataSet back to its Domo DataSet by clicking
 **Not Linked**
 and choosing the
 **Link**
 option.
  |
|
 Query Table
  |
 Lets you add a "query table" to this Excel sheet—a subset of data from a DataSet in which you can optionally add filters or aggregations.
  |
|
 Help
  |
 Lets you see the version number for this version of Domo Excel as well as check for newer versions.
  |

Connecting to a Domo server
-----------------------------

You can connect to the server for any Domo instance for which you have access. You can be connected to multiple instances at once.


**To connect to a Domo server,**

. Click the
 **Connect to Domo**
 button on the left side of the Domo tab in Excel. (If you are already connected to any servers, the button reads
 **Connected**
 .)

A dialog appears requesting that you add a connection.
2. Click
 **Add**
 .
3. Enter the URL for your Domo server in the field, then click
 **Next**
 .
4. Enter your Domo credentials in the fields, then click
 **Next**
 .

You must have a default security role of "Admin" or "Privileged" security profile to connect. Alternatively, you can connect if you have a custom security role with the "View DomoApps," "Edit DataSets," "Export from Domo," and "Manage All Access Tokens" grants enabled. For more information about default security roles, see

Managing Custom Roles

.


 If you have entered your credentials correctly, a "Success" dialog appears.
5. Click
 **Finish**
 .

Deleting a server connection
------------------------------

You can delete a connection to a server in the same dialog in which you add a server connection.


**To delete a server connection,**

. Click the
 **Connected**
 button on the left side of the Domo tab in Excel.
2. Select the server you want to disconnect from.
3. Click
 **Delete.**
4. Click
 **Yes**
 to confirm the deletion.

Downloading a DataSet from Domo to Excel
------------------------------------------

After you have connected to a Domo server, you can download a DataSet from that instance into Excel. You do this by clicking
 **Download**
 then following the steps in the wizard.


**Important:**
 Y


 our downloaded DataSet will replace whatever content is appearing in the current sheet in Domo. It is strongly recommended that you open a blank sheet before downloading a DataSet so you do not accidentally overwrite important data.


**To download a Domo DataSet into Excel,**

. Click
 **Download**
 in the Domo toolbar.
2. (Conditional) If you are connected to more than one Domo server, you are asked to select the server you want to retrieve data from. Select the desired server, then click
 **Next**
 .
3. Use the various filter options to locate the DataSet you want to download. You can filter by type (connector), owner, or DataSet name.
4. Select the desired DataSet, then click
 **Next**
 .


 A warning appears stating that any data in the current sheet will be replaced if you continue.
5. Click
 **Next**
 .
6. When the download has finished, click
 **Finish**
 .

Building a Query Table
------------------------

You can add a "query table"—a subset of a DataSet in which you can optionally configure filters or aggregations—to a DataSet in Excel. You can specify the location in the downloaded DataSet in which the query table data should appear. When you add a query table, it is stored in your Excel so you can reuse it or edit it later.


**To add a query table to a DataSet in Excel,**

. Click
 **Query Table**
 in the Domo toolbar.


 A pane appears listing all query tables you have added. If you have not added any query tables, this pane appears blank.
2. Click
 **Add**
 .


 A list of all DataSets in your connected Domo instance appears.
3. Select the DataSet you want to add as a query table, then click
 **Next**
 to proceed to the next screen.


 You can use the various search/filter options to narrow down the DataSets in the list.
4. (Conditional) Select the radio button for the desired option:

* Select
	 **Select a subset of columns from this DataSet**
	 if you want to pull specified columns into your DataSet in Excel. If you want to pull all columns (not a subset of columns), choose this option and then simply leave all boxes checked.
	* Choose
	 **Create an aggregate from the DataSet**
	 if you want to aggregate a specified value column.
5. (Conditional) If you chose to select a subset of columns in step 4, uncheck the boxes for all columns you do not want in your query table. If you chose to create an aggregate, select the value column to aggregate in the first dropdown, then select the desired aggregation type in the second dropdown.
6. (Optional) Add additional aggregates if desired by clicking
 **Add an aggregation**
 then repeating the aggregation steps in the previous step.
7. (Optional) Once you have selected your options in this pane, click
 **Refresh**
 to show how the subset of data will appear.
8. Click
 **Next**
 to proceed to the next screen.
9. (Optional) Configure filters as follows:

1. In the first dropdown, select the column you want to filter.
	2. In the second dropdown, select the condition for the filter.
	3. In the last dropdown, enter the value for the condition.

 For example, if you wanted your query table to show only those rows in which your number of daily visitors is less than 20, you would select "Daily Visitors" in the first dropdown, select
	 **is less than**
	 in the second dropdown, and enter

 20

 in the last dropdown.
10. (Optional) Add additional filters if desired by clicking
 **Add a filter**
 then repeating the previous step.
11. (Optional) Once you have selected your options in this pane, click
 **Refresh**
 to show how the subset of data will appear.
12. Click
 **Next**
 to proceed to the next screen.
13. (Optional) To change the order of rows in your query table, select the column to order by in the first dropdown under "Order rows by," then select the order type (
 **ascending**
 or
 **descending**
 ) in the next dropdown.
14. (Optional) To limit the rows of data returned, enter the row number in which you want to begin returning data in the first dropdown under "Limit," then specify the number of rows of data to return in the next dropdown.

For example, if you only wanted to return rows 10 through 20, you would enter

10

in both dropdowns (the first signifying that the import should begin at row 10, and the second signifying that 10 rows of data should be imported).
15. (Optional) Once you have selected your options in this pane, click
 **Refresh**
 to show how the subset of data will appear.
16. Click
 **Next**
 to proceed to the next screen.
17. Provide a name for your query in the top field.


 When you go back into the
 **Query Table**
 wizard after importing your table, the table will be referred to by the name you enter.
18. In the two fields under "Insert into your spreadsheet at location," enter the column and row where you want the query table to appear.


 Be aware that if any data already exists within the area you specify, that data will be replaced with the data in your query table.
19. (Conditional) If you do not want headers to be included in your query table, uncheck the first checked box; otherwise leave it checked.
20. (Conditional) If you do not want the first cell in your query table to be highlighted (to indicate that it is a query table), uncheck the first box; otherwise leave it checked.
21. Click
 **Next**
 to download your query table into Excel.

Uploading a DataSet from Excel to Domo
----------------------------------------

After you have made your desired changes to a Domo DataSet in Excel, you can upload it back to Domo. You have two options for doing this:

 You can upload the DataSet back to the same DataSet you pulled it from.
* You can upload the DataSet into a new DataSet.

If the original DataSet was created and uploaded from the Excel Plugin, both of these options are available. If the originally downloaded DataSet is not an Excel DataSet, only the second option is available.

##
 Uploading a DataSet back to its original DataSet

When you upload a DataSet to Domo using this method, the updated content replaces the content in the original DataSet.


**To upload a DataSet back to its original DataSet,**

. Click
 **Upload**
 in the Domo toolbar.
2. Select
 **Upload data to currently linked DataSet "[your DataSet]"**
 then click
 **Next**
 .


 A warning appears stating that the data in the DataSet in DOmo will be replaced if you continue.
3. Click
 **Next**
 .
4. Click
 **Finish**
 after the upload completes.


###
 Creating a new DataSet

When you use this option, a new DataSet is created in Domo using the content in the currently open sheet. You specify the DataSet name and the Domo instance (if you are connected to more than one Domo server). You can also set a few other optional settings, such as whether headers appear in the first row.


**To create a new DataSet using the data in the currently open sheet,**

. Click
 **Upload**
 in the Domo toolbar.
2. Select
 **Create a new DataSet in Domo**
 then click
 **Next**
 .
3. In the
 **Data Handling**
 dialog, set options as follows:

1. Enter the name for the new DataSet in the
	 **DataSet Name**
	 field.
	2. (Conditional) If you are connected to more than one Domo server, select the instance where you want the new DataSet in the
	 **Domo Instance**
	 menu.
	3. (Optional) Check the
	 **First row contains headers**
	 box if you want the first row in your DataSet to be the header row.
	4. (Optional) Specify a range of data to be pulled into your DataSet by entering the numbers of first and last rows to be ignored. For example, if you wanted the new DataSet to contain all data from the second row to the last (i.e. skipping the first row), you would enter

 1

 in the
	 **Ignore First Rows**
	 box.
4. Click
 **Next**
 when you have specified all options.
5. Click
 **Next**
 .
6. When the upload has finished, click
 **Finish**
 .

Refreshing data in a sheet
----------------------------

If your currently open Excel sheet contains data downloaded from a DataSet and any data changes in that DataSet in Domo, a dialog appears asking if you would like to refresh the data in the sheet. If you choose yes, the data from the DataSet in Domo replaces the data in the currently open sheet. You can open this dialog manually by choosing the
 **Refresh**
 option. If the original DataSet has been unlinked, this option is not available.


**To refresh the data in a sheet,**

. Click
 **Refresh**
 in the Domo tab to open the Domo Datasource Download Wizard. (If the data changes in the linked DataSet in Domo, a dialog appears asking if you want to refresh the data; click
 **Yes**
 to proceed to the wizard.)
2. Click
 **Next**
 .
3. After the download has completed, click
 **Finish**
 .

Unlinking or relinking a DataSet
----------------------------------

When you download a DataSet from Domo, by default the downloaded data stays linked to the original DataSet. As a preventative measure, you may want to unlink the downloaded data from the DataSet in Domo until you are ready to upload. That way, changes to one version of the data will not immediately affect the other.


**To unlink the downloaded data from the original DataSet,**

. Click the
 **Linked**
 button in the Domo toolbar.
2. Click
 **Unlink from "[DataSet Name]."**

*To relink the downloaded data to its original DataSet,**

. Click the
 **Not Linked**
 button in the Domo toolbar.
2. Click
 **Link to "[DataSet Name]."**

Troubleshooting
-----------------

Several customers have reported an issue in which Microsoft disables the plugin after a crash; hence the plugin is still installed but is in a disabled state, so the
 **Domo**
 tab doesn't appear. Reinstalling the plugin leaves it in the disabled state. Below are instructions to re-enable the plugin.


**To re-enable the Excel Plugin**
**,**

. Open Excel.
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
 **DomoExcel**
 then click
 **OK**
 .

If the box is already checked and the
 **Domo**
 tab still doesn't appear, make sure you don't have multiple versions of the plugin installed. You can remove extra instances by doing the following:

. In the Windows Control Panel, go to
 **Add/Remove Programs**
 .
2. Remove all instances of "Domo Excel."
3. Reinstall the plugin.


######
 If you are experiencing the error message "There was a problem authenticating with '

company.como.com

'" when attempting to connect to your Domo instance, try the following items:


1. If it isn't already, set your default internet browser to Chrome so that when the authentication window opens, it does so in Chrome.
2. Sign out of Domo before attempting to authenticate in the Excel Plugin.
3. Uninstall and reinstall the Plugin as an Administrator on your own machine.


