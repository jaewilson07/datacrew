

Intro
-------

This user guide provides instructions for performing common tasks within the Excel, Outlook, PowerPoint, and Word desktop apps using the Domo add-ins. When the guide refers to Microsoft 365 apps in general, it is referring to these four apps. This guide presents general tasks that apply to all apps unless otherwise noted.


 All tasks in this guide require the user to have previously installed the Domo add-in for the app they are working in. We highly recommend that you download the add-ins from Microsoft AppSource. You can download

Domo for Office

(Excel, PowerPoint, and Word) and

Domo for Outlook

. For more detailed instructions about installing the add-ins, see the

Domo Add-ins for Microsoft 365 Installation Guide

.


 Updates to the Domo add-ins should automatically apply to your installation. If you do not see these updates, you may need to clear your Microsoft 365 add-in's cache. For instructions on how to do this, see

Microsoft’s documentation

.


 In addition to the tasks described in this guide, the Domo add-ins provide access to Buzz from within the Microsoft 365 apps. You can select the
 **Buzz**
 tab in the Domo toolbar to view existing conversations and start new ones.


 PDP
-----

When you create content in Domo against DataSets with PDP configured, your Personalized Data Permissions, or PDP, are automatically applied.


 When you export Domo content or take screenshots to include in documents outside of Domo, recipients receive the data as seen by you with your PDP and access levels. The Domo add-ins for Microsoft 365 apps work similarly until the recipient triggers an automatic or manual refresh, at which point the content from Domo is refreshed with the recipient’s individual PDP and access levels.


 Given this information, you should not use add-ins with the expectation that they are a way to create and share content using PDP.

*Note:**
 If the recipient of your content does not have the Domo add-in, they cannot refresh the content, so the data remains static and as seen by you.


####
 Known Limitations

*Outlook**

 Auto-refresh functionality is not available because an email is a static document.

*PowerPoint**

 Due to a limitation of the current release of PowerPoint, the auto-refresh options are not currently available. You must manually refresh each imported card or DataSet from the Document tab of the Domo toolbar.

General Tasks
---------------

All tasks in this section require the same steps in each of the four Microsoft 365 apps for which there are Domo add-ins (Excel, Outlook, PowerPoint, and Word) unless otherwise noted.


 You can navigate through the guide using the linked subheadings below.

 Access the Domo side rail in Excel, PowerPoint, and Word
* Access the Domo side rail in Outlook
* Connect to a Domo instance
* Delete a Domo instance
* Disconnect from/reconnect to a Domo instance
* Switch instances
* Search Domo content
* Import Domo content to your document
* Apply Filters
* Update Filters
* Search for Dashboards and content
* Search for and import DataSets
* Alter document settings
* Alter Domo content settings individually
* Refresh all Domo content in your document
* Refresh all Domo content individually
* Add data to Domo
* Update DataSets in Excel
* Add data to Domo from an email attachment in Outlook


###


 Access the Domo Side Rail in Excel, PowerPoint, and Word


1. Open the Microsoft 365 app you want to work in.
2. Select the
 **Domo**
 tab in the ribbon at the top of your app to display the Domo toolbar.


 The Domo toolbar displays.
3. In the Domo toolbar, select

*Search**
 .


 The Domo add-in displays in a side rail to the right of your document. After you have connected to an instance of Domo in the side rail, that instance opens when you access the side rail.


###


 Access the Domo Side Rail in Outlook


1. Open Outlook.
2. Select
 **Domo**
 in the toolbar to display the menu.
3. Select

*Search**
 .


 The Domo add-in displays in a side rail to the right of your document. After you have connected to an instance of Domo in the side rail, that instance opens when you access the side rail.


###


 Connect to a Domo Instance


1. Select the
 **Domo**
 logo from the toolbar at the top of your Microsoft 365 app.
2. Select
 **+ Add Instance**
 .


 The Domo add-in displays in a side rail at the right of the app.
3. In the side rail, enter your organization's domain in the
 **Your Company**
 field.
4. Select
 **Authenticate**
 or
 **+**
 to sign into your instance.


 A web page opens where you can sign in with your Domo credentials.
5. Enter your email and password and select
 **Sign In**
 .


 If your Domo credentials are validated, you are redirected to a web page confirming that you have been granted access. Close the page and return to your Microsoft 365 app to begin using the Domo add-in.


###


 Delete a Domo Instance


1. Select the
 **Domo**
 logo from the toolbar at the top of your Microsoft 365 app.
2. Select
 **+ Add Instance**
 .


 The Domo add-in displays in a side rail at the right of the app.
3. In the side rail, under
 **Instances History**
 , locate the instance you want to delete and select

*Delete**
 to the right of the instance name.


 A dialog displays to confirm the deletion of the instance.


* If you select
 **Yes**
 , the instance is removed from the add-in.
* If you select
 **No**
 , you return to the previous screen.


###


 Disconnect from/Reconnect to a Domo Instance


1. Select the
 **Domo**
 logo from the toolbar at the top of your Microsoft 365 app.
2. Select
 **+ Add Instance**
 .


 The Domo add-in displays in a side rail at the right of the app.
3. In the side rail, under
 **Instances History**
 , find the instance you want to disconnect from and select the

link icon.


 A dialog displays to confirm that you want to unlink that instance.


* If you select
 **Yes**
 , you return to the previous screen

,

and the link icon is replaced by the

open link icon for that instance.
* If you select
 **No**
 , you return to the previous screen.


1. From the
 **Instances**
 screen of the add-in, you can add another instance by entering the domain name in the
 **Your Company**
 field and selecting
 **+**
 . Additionally, you can reconnect any disconnected instances by selecting the

open link icon for that instance.


###


 Switch Instances

In order to switch to an instance, you must be connected to that instance. To switch to an instance that you are not connected to, follow the instructions earlier in this guide for

Connecting to a Domo Instance

.

. Select the
 **Domo**
 logo from the toolbar at the top of your Microsoft 365 app.
2. Select
 **+ Add Instance**
 .


 The Domo add-in displays in a side rail at the right of the app.
3. Under
 **Instances History**
 , you can view the list of connected instances.
4. Select the logo for the connected instance that you want to switch to.


###


 Search Domo Content


1. Complete this step depending on the app you are working in.
	* For Excel, PowerPoint, and Word:
	1. Select
	 **Search**
	 in the Domo toolbar at the top of your document.


	 The
	 **Search**
	 screen of the add-in displays in a side rail to the right of your document.
	* For Outlook:
	1. Select the
	 **Domo**
	 logo in the toolbar at the top of the app.


	 The menu displays.
	2. In the menu, select
	 **Search**
	 .


	 The
	 **Search**
	 screen of the add-in displays in a side rail at the right of the app.
2. Enter keywords in the
 **Search**
 field at the top of the side rail.
3. You can filter the search results between
 **All Domo**
 ,
 **Card**
 ,
 **Apps**
 , and
 **More**
 .
 **More**
 opens a menu with more filtering options.


 You can change the format you view results in by toggling between

*List**
 and
 **Tile**
 at the top of the search results.


###


 Import Domo Content to Your Document (Excel, PowerPoint, Word)


1. Search for the content you want to import into your document by following the instructions for

Searching Domo Content

.
2. In the search results, select the content.
3. Drag the content into place in your document.


 The content import modal displays.


**Note:**
 Importing is currently supported for Notebook Cards, all card types you can edit in Analyzer, and Domo Bricks. Other card types open in a web browser when selected and cannot be imported.
4. Choose the
 **Insert Type**
 and make any changes to
 **Settings**
 .


 Under
 **Settings**
 , you can choose to
 **Include Summary Numbers**
 with your card. If your card includes a Summary Number, it displays with your imported card.

You can also choose to
 **Include Card Title**
 . Including the card title displays the name of the card in your document.

If you want to apply any of the additional settings available in this modal to your content, see the instructions for

Applying Filters

later in this guide.


**Note:**
 You can also search for and import cards from the
 **Dashboards**
 tile in the Domo toolbar of your document. If you import a card this way, a modal displays with a list of all the Page Filters available for the content under
 **Settings**
 . You can select a Page Filter to apply to the card you are importing. If you enable the switch for
 **Remember my selection for other cards imported from this page**
 , you can continue to import cards from that dashboard without needing to configure the Page Filters each time.
5. Select
 **Import Card**
 .
6. Verify that the configured card imported correctly to your document.


**Note:**
 See

Altering Document Settings

for more information about modifying imported content.


###


 Apply Filters

In the card import modal shown in the instructions for

Importing Domo Content to Your Document

, there are additional Filters you can configure when importing content. Follow these instructions to apply them.

. In the right navigation menu of the card import modal, select

*Filters**
 .


 You are redirected to the
 **Setup Filters**
 screen of the modal.
2. In
 **Setup Filters**
 , drag the columns you want to filter on from the
 **Available Columns**
 section to the
 **Filters**
 section.
3. For each column in the
 **Filters**
 section, select the column and choose any applicable values for the Filter, such as Filter type and condition. Select
 **Apply**
 to apply each Filter.
4. When you have created all your Filters, select
 **Finish**
 to return to the main screen of the card import modal.

The applied Filters display in the right navigation menu of the modal.
5. Select
 **Save**
 to save your Filters and close the modal.

*Note:**
 Document Filters allow you to apply Filters to all columns with the same name in your document. To use them, highlight the column you want to filter, select the
 **Document**
 tab in the Domo toolbar, and then select
 **Filter Views**
 .


###


 Update Filters

After you import content and apply Filters, you can update your Filters by following these steps:

. Select
 **Document**
 from the Domo toolbar at the top of your Microsoft 365 app.


 The
 **Document**
 screen of the Domo add-in displays in a side rail to the right of your document.
2. In the list of Domo Content, find the content for which you want to update the Filters.
3. Select

*Settings**
 for that content.


 The card import modal displays.
4. Select

*Filters**
 .


 You are redirected to the
 **Setup Filters**
 screen of the modal.
5. Edit, add, or remove any Filters for the content. See

Applying Filters

for more information.
6. When you have made all the updates to your Filters, select
 **Finish**
 to return to the main screen of the card import modal.
7. Select
 **Save**
 to save your Filters and close the modal.


###


 Search for Dashboards and Content


1. Complete this step depending on the app you are working in.
	* For Excel, PowerPoint, and Word:
	1. Select
	 **Dashboards**
	 in the Domo toolbar at the top of your document.


	 The
	 **Dashboard**
	 screen of the Domo add-in displays in a side rail to the right of your document.
	* For Outlook:
	1. Select the
	 **Domo**
	 logo in the toolbar at the top of the app.


	 The menu displays.
	2. In the menu, select
	 **Dashboards**
	 .


	 The
	 **Dashboards**
	 screen of the add-in displays in a side rail at the right of the app.
2. Enter keywords into the
 **Filter by name**
 field at the top of the
 **Dashboard**
 screen or scroll through the list items to find the dashboard you are looking for.


**Note:**
 Some dashboards are nested under other search results. To view these nested dashboards, select the

down arrow.
3. When you find the dashboard you are looking for, select it to view its contents.


###


 Search for and Import DataSets


1. Complete this step depending on the app you are working in.
	* For Excel, PowerPoint, and Word:
	1. Select
	 **Data**
	 in the Domo toolbar at the top of your document.


	 The
	 **Data**
	 screen of the Domo add-in displays in a side rail to the right of your document.
	* For Outlook:
	1. Select the
	 **Domo**
	 logo in the toolbar at the top of the app.


	 The menu displays.
	2. In the menu, select
	 **Data**
	 .


	 The
	 **Data**
	 screen of the add-in displays in a side rail at the right of the app.
2. Enter keywords into the
 **Search**
 bar at the top of the
 **Data**
 screen of the add-in or scroll through the list to find the DataSet you are looking for.
3. Select

*Filters**
 to access Filters to further narrow your search results.


**Note:**
 Filters allows you to filter by various criteria, such as who owns the DataSet, what type of data it is, any tags it may have, and when it was last run.

After you select a Filter, you are prompted to select criteria for that Filter.

With all search criteria applied, you can view the results in list and tile formats by toggling between

*List**
 and
 **Tile**
 at the top of the search results.


 Results can also be sorted by
 **Name**
 ,
 **Created Date**
 ,
 **Number of Cards**
 ,
 **Number of Rows**
 ,
 **Last run**
 , and
 **Status**
 .
4. Select the DataSet that you want to import into your document.


 The
 **Import Data**
 button displays.
5. Select
 **Import Data**
 .


 A preview modal displays where you can alter settings, apply Filters, and view important information about the data.
6. Select

*Filters**
 to apply any filters.


 A
 **Setup Filters and Select Columns**
 modal displays. There are three sections in the modal:
 **Available Columns**
 ,
 **Select Columns**
 ,
 **and Filters**
 . You can drag items between the sections.
7. When you have applied all the necessary Filters, select
 **Finish**
 .


 The Setup Filters and Select Columns modal closes.
8. When you have finished configuring all settings in the preview modal, select
 **Import DataSet**
 .
9. Verify that the DataSet has been imported and displays correctly in your document.


###


 Alter Document Settings (Excel, PowerPoint, Word)


**Note:**
 Any changes to imported content from within the Microsoft app are not reflected in the original asset in Domo. You can change the settings or Filters for the original asset in the
 **Document**
 tab of the add-in. Any changes made to the source of the content using the add-in display in the Microsoft app after refreshing.


1. Select
 **Document**
 in the Domo toolbar at the top of your document.


 The
 **Document**
 screen of the add-in displays in a side rail to the right of the document.
2. Under
 **Settings**
 in the add-in, adjust the settings as needed.


###


 Alter Domo Content Settings Individually (Excel, PowerPoint, Word)


1. Open the
 **Document**
 screen of the Domo add-in. For detailed instructions on how to do this, see

Altering Document Settings

.
2. In the
 **Domo Content**
 section of the Document side rail, find the content that you want to alter the settings for and select

*Settings**
 .


 A modal displays with a content preview and sections for settings, Filters, and other information about content.
3. Select
 **Save**
 or
 **Remove Card**
 .


* If you select
 **Save**
 , any changes you made are saved, and you return to the Document screen of the side rail.
* If you select
 **Remove Card**
 , a dialog displays asking you to confirm that you want to remove the content from your document. If you select
 **Yes**
 , that content is removed from your document.


###


 Refresh All Domo Content in Your Document (Excel, PowerPoint, Word)


1. Select
 **Refresh All**
 in the Domo toolbar at the top of your document.


 All the Domo content in your document refreshes, and the
 **Document**
 screen of the Domo add-in displays in a side rail to the right of your document.
2. Adjust the
 **Settings**
 in the add-in as needed.


**Note:**
 You can make sure the format of your documentation doesn’t change when you refresh your content by selecting

*Lock Content**
 .


###


 Refresh All Domo Content Individually (Excel, PowerPoint, Word)


1. Open the
 **Document**
 screen of the Domo add-in. For detailed instructions on how to do this, see

Altering Document Settings

.
2. In the
 **Domo Content**
 section of the Document screen of the add-in, find the content that you want to refresh.
3. Select

*Refresh**
 for each item.


###


 Add Data to Domo (Excel, Outlook, and Word)


1. Select
 **Data**
 in the Domo toolbar at the top of the app.


 The
 **Data**
 screen of the Domo side rail opens at the right of the document.
2. In the side rail, select
 **Add Data to Domo**
 .


 The
 **Add Data to Domo**
 modal displays.
3. Check the boxes to select each of the tables that you want to upload to Domo.
4. (Optional) Next to your selected content, hover over

*Preview**
 to preview it.
5. Select
 **Next**
 to configure the DataSets.
6. Select the radio button to
 **Create New Dataset**
 or
 **Update Existing Dataset**
 .


 A preview of the selected data displays in the
 **Preview**
 area so you can view and validate the data before importing it to Domo.


 You can configure your
 **Column Data type**
 in the
 **Preview**
 by selecting the column and choosing the data type from the list.

* If you choose
	 **Create New Dataset**
	 , you are prompted to add a
	 **Name**
	 and any
	 **Tags**
	 .
	1. Select
	 **Next**
	 to add these items for each sheet.
	2. Complete any remaining fields.
	3. (Optional) Select
	 **Open in Domo**
	 to open each selected sheet in Domo.
	* If you choose
	 **Update Existing Dataset**
	 , you are prompted to select any DataSets in Domo that you want to update from the menu.
	1. Select the radio button for how you want to update the DataSet:
	 **Replace**
	 or
	 **Append**
	 .
	2. Add any
	 **Tags**
	 .
	3. Complete any remaining fields.
	4. Select
	 **Next**
	 to configure each of the selected sheets.
7. Select
 **Finish**
 .


**Note:**
 To upload only part of an existing DataSet to Domo, highlight your desired data, right-click it, and select
 **Domo**
 >
 **Add selected data to Domo**
 .

##


 Update DataSets in Excel


1. Select
 **Data**
 in the Domo toolbar at the top of the spreadsheet.


 The
 **Data**
 screen of the Domo add-in displays in a side rail to the right of the spreadsheet.
2. Enter keywords in the
 **Search**
 bar to locate the DataSet you want to update.
3. Select the DataSet.
4. Select
 **Update Data**
 .


 The
 **Update DataSet**
 modal displays, prompting you to select the sheets that you want to upload.
5. Select the checkboxes for the sheets you want to upload.
6. Select
 **Next**
 to configure the selected sheets.
7. Select the DataSet you want to update in Domo.
8. Select the radio button for how you want to update the DataSet:
 **Replace**
 or
 **Append**
 .
9. Apply any necessary
 **Tags**
 .
10. After you have configured all selected sheets, select
 **Finish**
11. (Optional) Select
 **Open in Domo**
 to open the updated DataSet in Domo in a new window.
12. Select
 **Close**
 to close the modal.


###


 Add Data to Domo from an Email Attachment in Outlook


1. Open the email that you want to import DataSets from.
2. Select the
 **Domo**
 logo from the toolbar at the top of the app.


 The Domo menu displays.
3. In the Domo menu, select
 **Data**
 .


 The
 **Data**
 screen of the Domo add-in displays at the right of the app.
4. In the
 **Data**
 side rail, select
 **Add Data to Domo**
 .


 The
 **Add Data to Domo**
 modal displays.
5. Select the radio button


 for where your data is coming from:
 **From an Attachment**
 or
 **From Email Body**
 .
6. Select
 **Next**
 .
7. Select the checkboxes for the data you want to add.
8. Select
 **Next**
 .
9. Select the radio button


 to
 **Create New Dataset**
 or
 **Update Existing Dataset**
 .
	* If you choose
	 **Create New Dataset**
	 , you are prompted to add a
	 **Name**
	 and any
	 **Tags**
	 .
	1. Select
	 **Next**
	 to add these items for each of the selected sheets.
	2. Complete any remaining fields.
	3. (Optional) Select
	 **Open in Domo**
	 to open each selected sheet in Domo.
	* If you choose
	 **Update Existing Dataset**
	 , you are prompted to select any DataSets in Domo that you want to update from the menu.
	1. Select the radio button for how you want to update the DataSet:
	 **Replace**
	 or
	 **Append**
	 .
	2. Add any
	 **Tags**
	 .
	3. Complete any remaining fields.
	4. Select
	 **Next**
	 to configure each of the selected sheets.
10. Select
 **Finish**
 .
11. (Optional) Select
 **Open in Domo**
 to open the DataSet in Domo in a new window.
12. Select
 **Close**
 to close the modal.


