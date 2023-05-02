

Intro
-------

The Domo Webforms connector is a unique connector in Domo, as you can add KPI cards powered by webforms directly to a page without having to open the Data Center or Appstore. If you want, you can also add webform DataSets from the Data Center or Appstore and then build cards afterward, just as you can with all of Domo's other connectors.

*Note:**
 When you add a Webform DataSet, you are assigned as the owner. For information about changing the owner of a DataSet, see

Changing the Owner of a DataSet

.

You create a webform DataSet by manually entering your data into a form provided by Domo and uploading the form. If you are uploading the DataSet via the page view rather than through the Data Center or Appstore, you can then determine the chart's visual characteristics as discussed in

Analyzer Overview

.

*Note:**
 The data you enter in the webform
 *must*
 be column-based; otherwise, you may experience problems (such as selecting columns or editing your data). For more information, see

Understanding Chart Data

.

For information about updating data in a webform, see

Editing data in a webform

.


**Video - Webforms Overview**

Webforms Editor
-----------------

The following screenshot calls out the most important components of the webforms editor:

You can use the following table to find out more about these components:


 Component
  |
 Description
  |
| --- | --- |
|
 Title field
  |
 Lets you enter a name for this DataSet. You can edit this name later by opening the webform in the Data Center and choosing to edit the name and description OR choosing to edit the webform itself.
  |
|
 Search and replace
  |
 Provides options for searching for and replacing text. When you enter a term in the
 **Search**
 field, all cells in the webform containing that search term highlight. After entering a search term, you can then click

to open a dialog with options for replacing the search term. In the
 **Replace**
 field, you enter the term to replace your specified search term. For example, if you wanted to replace the name "Christina" with "Kristina," you would first enter

Christina

as the search term. You would then click

to open the
 **Replace**
 dialog and enter

Kristina

as the replacement term.


 The
 **Replace**
 dialog contains two additional options you may find useful. The first of these,
 **Match case**
 , allows you to ensure that case is factored into your search. For example, if you wanted to change all instances of "green" to "red" but didn't want to affect instances of the surname "Green," you could enter

green

as your search term and

red

as your replacement term and check the
 **Match case**
 box. Then all instances of "green" would be changed and all instances of "Green" would stay the same.


 The second option in the
 **Replace**
 dialog,
 **Match entire cells only**
 , allows you to ensure that the replace only works if the entire cell contents is a match. For example, if you wanted to change all instances of "Value" to "Amount" but didn't want to affect cells containing "Value Fries," you would enter

Value

as your search term and

Amount

as your replacement term and check the
 **Match entire cells only**
 box. Then all instances of "Value" without "Fries" would change to "Amount" and all instances of "Value Fries" would remain the same.
  |
|
 New column button
  |
 Lets you add a new column to the webform. Initially only one column is available for you to edit, but you can add as many new columns as you want in this way.
  |
|
 Undo/redo
  |
 Lets you undo your previous action or redo an action you just undid.
  |
|
 Save button
  |
 Lets you save this webform as a DataSet. When you save the webform for the first time, the Analyzer opens so you can build a card from the DataSet. If you later open the webform for editing in the Data Center, clicking
 **Save & Continue**
 opens the details view for the DataSet.
  |
|
 Data type picker
  |
 Lets you change the data type for this column—either
 **Number**
 (represented as

),
 **Date**
 (represented as

, or
 **Text**
 (represented as

). Domo attempts to determine the data type automatically when you add values or import data, but you can turn off this automatic auto detection by unchecking
 **Auto Detect**
 .


 If a red line appears after the data type, this indicates that there are values in the column that do not match the selected data type. For example, if you selected
 **Number**
 as the data type for a column and there were cells in the column containing text, a red line would appear to indicate the non-matching values. You can click the red line to filter to show only the non-matching values. From there, you can easily navigate through the cells and make changes as necessary.


 For more information about data types, see

Types of data in a DataSet

.
  |
|
 Unique values count
  |
 Returns the number of unique values in this column.
  |
|
 Available columns
  |
 Shows the number of editable columns in the webform. Non-editable columns appear in gray. You can add new columns by clicking the plus button next to the
 **Search**
 field.
  |
|
 Import button
  |
 Lets you select an existing DataSet from this Domo instance to import into a webform. After you save a webform, this option is no longer available.
  |
|
 Expand button
  |
 Lets you put the webform editor into fullscreen mode. You can bring the editor back to the default view by clicking

.
  |


###
 Edit an Existing Webform

Follow these steps to edit an existing webform.


**To edit an existing webform,**

. Navigate to the Data Center by clicking

*> Data Center**
 .
2. Search for the Webform DataSet you want to edit.
3. Select the DataSet to enter the details view.
4. Click on

and select
 **Edit Webform**
 .


###
 Uploading a Webform

Follow these steps to upload a webform DataSet to Domo.


**To upload a webform to Domo,**

. Do one of the following:

* If you intend to use this DataSet to build a card immediately...

	1. In the page where you want the new KPI card to appear, click
		 **Add Card**
		 .
		2. Click
		 **Design**
		 , then click
		 **Domo Online Form**
		 .


		 A spreadsheet-like form appears with many columns in which you can enter data.
	* If you just want to upload a DataSet right now, do any of the following to open the Webforms Connector interface:

	+ Click

	**> Data Center**
		 , select
		 **New > File**
		 , search for "Domo Webform," then click on the tile.
		+ Click

	**> Appstore**
		 , select
		 **Connectors**
		 , search for "Domo Webform," then click on the tile.
		+ Select

	**> Data > File**
		 , sear


		 ch for "Domo Webform," then click on the tile.


		 A spreadsheet-like form appears with many columns in which you can enter data.
2. Enter a title for the DataSet in the
 **Enter DataSet Title**
 field.
3. Enter your data into the columns as desired.


 You can do this by entering the data manually or importing an existing DataSet by clicking


 the


 button


 and then using the filter options to locate the desired DataSet. Here are some things to keep in mind when using these options:

* When you import a DataSet into a webform, it replaces any content that has already been entered, whether that content has been entered manually or imported. Therefore, you cannot manually enter content and then import a DataSet into the same webform without erasing the original content. You also cannot import more than one DataSet into the same webform.
	* You CAN import a DataSet and then add new content to the webform manually.
4. Click
 **Save & Continue**
 when you have finished entering data into the form.
5. Specify the details of your chart as desired.


 For more information about the elements in this screen, see

KPI Card Building Part 2: The Analyzer

.
6. Click
 **Save & Finish**
 .


**Tips:**


* The first row is used for column headings. You can edit header labels just as you can any other cell in the webform.
* You can resize columns by dragging the column divider.
* You can right-click the form for options to insert and remove rows and columns.
* You can cut, copy, paste, select a cell, or drag and select multiple cells.


 Depending on your operating system, you can use shortcut keys for these actions.
* You can search for specified terms in the webform as well as replace searched-for terms. For more information, see the table above.
* You can change the data type for a given column. For more information, see the table above.
* You can copy from a spreadsheet or plain text file. (You cannot specify delimiters.)
* If you leave a webform without saving, any content you have added is still available when you come back into the webform editor. You can either continue adding data to the online form or you can clear data in the online form by clicking
 **Clear saved data**
 .

If you uploaded this DataSet from a page, you are now taken into the Analyzer to build your card. For more information, see

Analyzer Overview

. Otherwise you are simply taken into the details view for the new DataSet. For more information, see

Data Center Layout

.

