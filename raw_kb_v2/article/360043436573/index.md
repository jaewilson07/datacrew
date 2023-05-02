

Intro
-------

The File Upload Connector allows you to easily bring your important spreadsheet files into Domo and begin making decisions faster. Regardless of the file type you choose (CSV, XLS, or XLSX), there are a wide range of configuration options to meet your custom file needs.


 As of our February 2018 release, there are two versions of the File Upload connector available in Domo:

 The newer—and recommended—version of the connector provides an intuitive workflow to make even the most complicated Excel or CSV files usable within Domo. It lets you maintain all of the organization and configuration of your custom Excel or CSV files and still have usable data within Domo. Requiring virtually no input, this version does the heavy lifting for you.
* The legacy version of this connector is also still available. This version requires you to configure a number of advanced settings (most of which are set for you automatically when using the new version of the connector).

You can begin the process of creating a File Upload DataSet in one of several different ways:

 By going into the Data Center and choosing the
 **File**
 option from the toolbar at the top of the screen.
* By clicking the

icon in the upper right corner of the
 **Dashboards**
 tab, selecting
 **Create new Card**
 , selecting
 **Visualization**
 , then clicking
 **Upload**
 .
* By clicking

in the upper right corner of the screen from anywhere in Domo, selecting
 **Card**
 , selecting
 **Visualization**
 , then clicking
 **Upload**
 .

This topic discusses the fields and menus that are specific to the File Upload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Video - File Upload Connector**

Prerequisites
---------------

If you are connecting to an Excel file that is password-protected, you will need to know the password. Otherwise, no credentials are required to use either version of this connector.


 Using the new ("wizard") File Upload connector
------------------------------------------------


 This section enumerates the options in the File Upload wizard. The components of the other pane in this page,
 **Name & Describe Your DataSet**
 , are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 "Upload spreadsheet" screen

In the first page of the File Upload connector wizard, you simply drag and drop an XLS, XLSX, or CSV file from your computer into the box or select the desired file from your computer. Once you've dragged or selected your file, the next pane in the wizard opens automatically.

##
 "Select tables" screen

This screen displays a preview of the selected file and provides options for selecting and formatting the data. Options for configuring the file may appear depending on the file type (Excel or CSV) and properties (such as whether your Excel file is password-protected).

##
 Options for Excel files


####
 Data selection

By default, when the
 **Select Tables**
 screen opens for an Excel spreadsheet, all of the cells in Row 1 of your spreadsheet are considered column headers, indicated by dark blue highlighting, and the rest of the data in the spreadsheet is considered to be your selected "body" data, indicated by light blue highlighting. This means that if you were to create a DataSet from this data, all of the data would be imported into the DataSet, with the Row 1 cells acting as the column headers. This is also reflected in the
 **Column Headers**
 and
 **Selection**
 fields under "Data Grid," in which
 **Column Headers**
 shows the coordinates for the first and last cells in the first row, and
 **Selection**
 shows the coordinates for the first and last cells in the body.


 The following screenshot shows an example of this initial selection. Note that the column header cells in the preview appear unselected (as these are considered separate from the "body" of the spreadsheet). Also note that the
 **Column Headers**
 fields in the bottom left read "A1" to "G1" and the
 **Selection**
 fields read "A2" to "G51" (which are the first and last selected cells in the body).

If a user then selects a different block of data by mousing over it, the
 **Selection**
 fields update to reflect this. Note that the
 **Column Headers**
 fields are
 *not*
 updated. If you want to update the selected column headers, you can do so by either...

 setting the coordinates manually in the
 **Column Headers**
 fields, or
* clicking within either
 **Column Headers**
 field
 *then*
 clicking and dragging over the desired column headers in the preview.

This latter concept is very important. If you click anywhere in the
 **Column Headers**
 fields, any cells you select in the preview are considered to be column headers (and the coordinates in the
 **Column Headers**
 fields will update) whereas if you click in the
 **Selection**
 fields, all cells you select in the preview are considered to be "body" data (and the coordinates in the
 **Selection**
 fields will update). In other words, you can toggle the "active" selection method by clicking in the field that corresponds to that selection method.


 In the following screenshot, the user highlights cell "A2" to cell "E10." By default, the
 **Selection**
 toggle is active, so these cells are considered to be body cells, and the
 **Selection**
 fields update to reflect the change.

But, if the user clicks in either
 **Column Headers**
 cell, then that toggle becomes active. The user then selects the top two rows of data in the preview, and the change is reflected in the
 **Column Headers**
 fields.


**Note:**
 The Large File Upload Connector discards any empty rows appearing before the table in an XLSX file. So, if the XLSX file has 1 blank row prior to the table, decrease the Column Headers and Selection by 1 row.


 Consider the following example:


 To select the range A3:C6, enter Column Headers as A2:C2 and Selection as A3:C5 as there is an empty row before the table.

###
 Format

As mentioned above, by default all Excel spreadsheets brought into Domo are assumed to have column headers instead of row headers or a cross-tab (pivot) layout. If this is not the case for your data, you can select the correct format in the
 **Format**
 menu. For more information about the different kinds of data layouts, see

Understanding Chart Data

.

###
 Sheet selection

If your Excel file consists of more than one sheet, you can select the desired sheet in the menu just above the preview.


####
 Generating headers

If you check the
 **Generate Headers**
 box, a row (or column, if you have selected
 **Row Headers**
 ) of headers is automatically generated with generic names such as "\_Column\_1," "\_Column\_2," etc.


 If your spreadsheet is missing any column or row headers, these will be generated automatically when you click
 **Preview**
 . For example, in the following screenshot, a header was missing in the fourth column, so the header "\_COLUMN\_4" was generated automatically.


####

Keep Leading Zeroes


 Select this checkbox if you want to keep leading zeros in numeric values like '0123'.


**Note**
 : The connector will parse the values with leading zeroes as text.


###
 Options for CSV files


####
 Data selection

All data from a CSV file is imported into a DataSet when you build it, even if you click and drag to highlight a specific portion.

###
 Generating headers

By default, the top row in your CSV sheet is considered to be the header row. You can automatically generate a new header row with generic names such as "\_COLUMN\_1," "\_COLUMN\_2," etc. by checking the
 **Generate headers**
 box.

###
 File encoding

By default, UTF-8 encoding is used for your CSV file. If desired you can select a different encoding type in the
 **File Encoding**
 menu.

###
 Delimiter

By default, a comma is used as the delimiter for your CSV file. If desired you can select a different delimiter in the
 **Delimiter**
 menu.


 Using the legacy File Upload connector
----------------------------------------


 This section enumerates the options in
 **Details**
 and
 **Advanced**
 panes in the File Upload Connector page. The components of the other pane in this page,
 **Name & Describe Your DataSet**
 , are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 Details pane

In this pane you select the file you want to upload and the file type. If you are uploading an Excel file, you may also enter the password and sheet name, if applicable.


 Menu
  |
 Description
  |
| --- | --- |
|
 Select File
  |
 Select the Excel or CSV file from your machine or network you want to upload.
  |
|
 Choose File Type
  |
 Select whether the file you have selected is a CSV, XLS, or XLSX file.
  |
|
 File Password (Optional)
  |
 If the Excel file you are uploading is password-protected, enter the password here.
  |
|
 Sheet Name (Optional)
  |
 If the Excel file you are uploading is found on a specific sheet, enter the sheet name here. Be sure to check the sheet name for accidental spaces. If you do not enter a sheet name, the first sheet of the workbook will be used.
  |


###
 Advanced pane - Excel

In this pane you configure advanced options for the Excel you have uploaded.


 Menu
  |
 Description
  |
| --- | --- |
|
 Layout
  |
 Select the layout of your Excel file. The following options are available:
 * **Column as Header**
 . Indicates that your Excel data uses a column-based layout (i.e. each column has a header).
* **Row as Header**
 . Indicates that your Excel data uses a row-based layout (i.e. each row has a header).
* **Cross Tab**
 . Indicates that your Excel data uses a cross-tab (pivot) layout.
* **Raw**
 . Indicates that your Excel data is raw (unformatted).
* **Advanced**
 . Use this option if you want to configure advanced layout options such as header and data start rows, footer rows to skip, date format, etc.
 |
|
 Mode
  |
 Select how the cell range of your Excel data will be determined. If you select
 **Auto**
 , the range is determined automatically. If you select
 **Manual**
 , you will be asked to enter the column header and data ranges manually.
  |
|
 Column Header Range
  |
 Enter the range for the column headers in your Excel sheet. For example:

A2:F8

|
|
 Row Header Range
  |
 Enter the range for the row headers in your Excel sheet. For example:

A2:A8

|
|
 Data Range
  |
 Enter the range for the data (non-header) cells in your Excel sheet. For example:

A3:F20

|
|
 Header Start Row (Advanced only) (optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (Advanced only) (optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer Rows to Skip (Advanced only) (optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |
|
 Date Format (Advanced only) (optional)
  |
 Select the date format used in the Excel data. If you want dates to be represented as text, select
 **Show Dates as Strings**
 .
  |
|
 Blank Rows (Advanced only) (optional)
  |
 Select the desired outcome if blank rows are encountered in the Excel file. If you select
 **Skip blank rows**
 , the file is processed as normal without the blank rows. If you select
 **Stop at the first blank row**
 , everything is pulled up until the first blank row.
  |
|
 Empty Column Headers (Advanced only) (optional)
  |
 Select the desired outcome if empty column headers are encountered in Excel. If you select
 **Add**
**blank columns**
 , new columns are generated with default names applied. If you select
 **Stop at the first blank column**
 , everything is pulled up until the first column with an empty header.
  |


###
 Advanced pane - CSV

In this pane you configure advanced options for the CSV file you have uploaded.


 Menu
  |
 Description
  |
| --- | --- |
|
 Delimiter
  |
 Select the desired delimiter for parsing your CSV file.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing your CSV file.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing your CSV file.
  |
|
 File Encoding
  |
 Select the desired file encoding for your CSV file.
  |
|
 Add Filename Column?
  |
 Select whether or not a BATCH\_FILE\_NAME\_ column should be added to the final DataSet for your CSV file.
  |
|
 Header Start Row (optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer Rows to Skip (optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |


###
 Other panes

For information about the remaining sections of the connector interface, including how to configure retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Editing your configuration
----------------------------

As with all connector DataSets, you can edit your uploaded Excel or CSV DataSet configuration in the details view for the DataSet.


**To edit your Excel or CSV DataSet configuration,**

. Open the Data Center.
2. Use the search and filter options to locate the DataSet you want to edit.
3. Click on the DataSet to open its details view.
4. Click on the
 **Settings**
 tab.
5. Make changes as desired.

FAQs
------


#####
 What is the file size limit for this connector?

The File Upload connector can handle files up to 250 MB. If you need to import a file larger than 250 MB, consider using the

Excel SFTP

connectors.

####
 Why am I getting an error saying my file is not supported?

The file you are trying to upload contains features not currently supported by the connector. Try using the File Upload Legacy connector instead.

####
 How can I easily update an existing File Upload DataSet?

You can update a File Upload DataSet by doing the following:

. Navigate to the DataSet in the Data Center.
2. Open the
 **Settings**
 tab for the DataSet.
3. Upload the new version of the file using the
 **Upload**
 field.

The DataSet will be replaced with the new version of the file, and any Cards built off of the DataSet will automatically update.

