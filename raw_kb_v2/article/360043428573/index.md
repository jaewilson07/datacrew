

Intro
-------

In Domo, your business data is represented by
 *Cards*
 . Cards are found in screens or
 *Pages*
 , where they appear as boxes containing the most important information for the Card; you can access additional information and options for a Card by clicking it to open its Details view.


 In Domo, there are various types of Cards, including

 Visualization cards
* Doc Cards
* Notebook Cards
* Poll Cards
* Sumo Cards
* Custom Apps

For more information about Pages, see

Understanding Pages

.


 For information about personalizing the layout of Cards in Pages, see

Managing Cards and Pages

.

*Video - What is a Domo Card?**

Parts of a Card
-----------------

All Cards in Domo share common components. The following screenshot of a Visualization Card calls out a number of these components. Note that this screenshot shows a Card from a standard Page. Cards from Domo Stories Pages do not show all of these components.

You can learn more about the components in the following table:


 Name
  |
 Description
  |
| --- | --- |
|
 Card name
  |
 The name of the Card. The process for naming a Card depends on the Card type. For example, for a Visualization Card, you specify the name of the Card in Analyzer. For a document Card, the original filename is used unless you indicate a custom name. For a notebook Card, you specify a name when you create the Card.


 For more information about changing the name of a Visualization Card, see

Editing the Name or Description of a Visualization Card

.
  |
|
 Card content
  |
 The actual data represented in this Card.
  |
|
 Card options

|
 Displays a menu of options for this Card. This icon appears when you mouse over the Card; click to show the available options. For more information, see

Card Options menu

.
  |
|
 Owner (standard Pages only)
  |
 The picture that represents the owner of the Card in Domo, set this picture by

Assigning or Changing a Card Owner

.
  |
|
 Issues icon (standard Pages only)
  |
 An icon that indicates the number of issues reported for this Card. Click the icon to open the
 **Issues Reported**
 tab in the Details view for the Card. For more information, see

Reporting Issues with Cards

.
  |
|
 Views icon (standard Pages only)
  |
 An icon that indicates the number of times the Details view for this Card has ever been viewed. This view count includes any time the Card has been rendered on a Page or in a scheduled report. Click the icon to open the Details view for the Card.
  |
|
 Comments icon (standard Pages only)
  |
 An icon that indicates the number of unread comments for this Card. Click the icon to show the comments in Buzz in the Details view for the Card.
  |
|
 Connector icon (standard Pages only)
  |
 An icon indicating the type of connector used to power a Visualization Card. For example, in the preceding screenshot the Card is powered by MySQL. A

icon indicates that this Card is not a Visualization Card.
  |
|
 Company certification badge (not shown above)

|
 An icon indicating that this Card is company-certified. This is the highest level of certification your company can bestow. For more information about certifying Cards, see

Certifying Cards and DataSets

.
  |
|
 Company certification pending badge (not shown above)

|
 An icon indicating that this Card has been submitted for company-wide approval but has not yet been approved. For more information about certifying Cards, see

Certifying Cards and DataSets

.
  |
|
 Departmental certification badge (not shown above)

|
 An icon indicating that this Card has been certified by a specific department in your company. For more information about certifying Cards, see

Certifying Cards and DataSets

.
  |
|
 Departmental certification pending badge (not shown above)

|
 An icon indicating that this Card has been submitted for departmental approval but has not yet been approved. For more information about certifying Cards, see

Certifying Cards and DataSets

.
  |
|
 Details icon (Domo Stories Cards only)

|
 An icon that lets you open the Details view for this Card in a Domo Stories dashboard.
  |

Understanding Visualization Cards
-----------------------------------

In Domo, charts, tables, and maps are used to represent specific business metrics, such as sales by quarter, new customers by state, etc. The following example utilizes a basic line chart to show sales data for the first half of January:

In a Visualization Card, you can see the chart along with its name, the
 *date grain*
 or unit of time used to represent data (if the chart uses time data), and current value. In the following Card, the metric being measured is the profit per customer segment in 2012; the date grain is Quarter; and the current value is 1000:

In this Card, the current value of "1k" is used as the
 *Summary Number*
 . This is the single value that best represents the data in this chart. A Summary Number does not need to be the current value of the chart. It can be the maximum represented value, the average of all values, and so on. For more information, see

Configuring Your Chart Summary Number

.


 This Card also includes another feature unique to Visualization Cards: the Alerts icon

, which shows the number of triggered Alerts for this Card. For more information, see

Configuring Notifications and Alerts

.


 You can click a Visualization Card to open its Details view, which provides additional options not found in the Card Page. For more information, see

Card Details View Layout

.


 If a Visualization Card has descriptive text, you can see that text by hovering over the name of the Card. For information about adding descriptive text to a Visualization Card, see

Editing the Name or Description of a Visualization Card

.


 If PDP (Personalized Data Permissions) has been enabled for the Card, a

label appears at the bottom, next to the connector icon. For more information about PDP, see

Personalized Data Permissions (PDP)

.


 For a PDF showing all of the parts of a Visualization Card, go here:

Analyzer Card Basics

Understanding Doc Cards
-------------------------

A
 *Doc Card*
 is a type of Card containing a document, image, or video that has been uploaded to Domo.


 You can download any file in a Doc Card to your own machine. You can also use Doc Cards to collaborate and share uploaded files with others. You can see a small version of the document in the Card Page or a full-sized version in the Details view for the Card.


 The following screenshot shows an example Doc Card:

You can add Doc Cards containing the following types of files:

 PDF
* DOCX
* DOC
* XLSX
* XLS
* PPTX
* PPT
* TXT
* PNG
* JPG
* BMP
* MP4

For other permitted file types not in this list, a download button appears instead of an embedded view.


 The maximum file size for uploaded files is 100 MB.


 When you upload a new version of a Doc Card, that version replaces the current version. All old versions of the file are stored as thumbnails in a panel in the Details view. You can see any old version of a document by clicking its thumbnail. You can also delete any version.


 You can configure an option that allows you to receive Notifications when a Doc Card you have added as a Favorite gets a new version. You do this in the Notifications Center. For more information, see

Receiving and Viewing Notifications

.


 For information about uploading a Doc Card to Domo, see

Downloading a Document from Domo

.


 You can click a Doc Card to open its Details view, which provides a full-sized preview of the file along with additional options not found in the Card Page. For more information, see

Document Card Details view

.


**Note:**

In the interest of preventing users from uploading malicious files into Domo accounts, Domo allows a specific set of file types to be uploaded. If you attempt to upload a file not within this list, an error message appears. For more information, including the full list of supported file types, see

Permitted File Types for Attachments

.

Understanding Notebook Cards
------------------------------

Notebook Cards are Cards containing text you enter. You can type or paste text in a Notebook Card. You can format text using bold, italics, and numbered and bulleted lists by selecting options in the toolbar.


 The following screenshot shows an example notebook Card:


**Note:**
 When you paste text, certain formatting may be preserved, including bold, italics, lists, tables, font size, and headings. The formatting that is preserved varies, depending on the source. Typically, formatting associated with basic HTML tags are preserved, although styles may differ. Pasted images are stripped out.

Text in a Notebook Card may be edited by any user with sufficient access rights after the Card is created. For more information about access rights, see

Managing Roles

.

*Note:**
 Notebook Cards do
 *not*
 support collaborative editing by multiple users simultaneously. To collaborate, you must take turns editing the Notebook Card.

For information about adding or editing a Notebook Card, see

Adding a Notebook Card

.


 You can click a Notebook Card to open its Details view, which provides additional options not found in the Card Page. For more information, see

Notebook Card Details view

.


 Understanding Poll Cards
--------------------------

A "poll" in Domo consists of a question and two or more answer choices. When a user responds to a poll by selecting answer choices and then clicking a button to vote, the results of the poll up to that point replace the question and answer choices in the Card. From then on, any time another user responds to the survey, the results update accordingly. You can edit the poll information in the

Details view

for the Poll Card.


 The content you see in a Poll Card depends on whether or not you have taken the poll. If you have not taken the poll, the poll question appears in the Card, as shown here:

If you have taken the poll, you see the results of the voting up to this point, as shown here:

In the preceding screenshot, there is not enough room to show all of the results, so only the top results appear. There is also a link that takes you to the Details view, where you can see all of the results.


 For information about creating polls, see

Adding a Poll Card to Domo

.


 Understanding Sumo Cards
--------------------------

Sumo Cards display tabular data as either standard column-based tables or more powerful pivot tables like those available in Microsoft Excel. These tables are called Sumo tables. When you create a Sumo table, a Card for that table is added to Domo.


 The type of table you see in a Sumo Card in the Card view depends on which table view was selected when the Sumo Card was last saved. In the following example, the user saved a Sumo Card when the column view was selected:

In the next example, the user saved the same Sumo Card when the pivot view was selected.

The amount of information that appears in a Sumo Card depends on the size you have selected for the Card. For example, if you select the medium size for a pivot Card, a condensed version of the pivot table appears that shows the column and row names and the Summary Number; if you select the full size for the same Card, the entire pivot table appears. In the full-size view, if there is still more information than will fit in the table, vertical and/or horizontal scroll bars are provided. For more information about sizing Cards, see

Changing the Size of Cards in a Page

.


 You can see a full-sized Sumo Card and open it for editing in the

Details view

.


 Domo offers many other types of Tables as a chart type within Analyzer. For more information about adding Visualization tables, see

Table Charts

.


 If PDP (Personalized Data Permissions) has been enabled for the Card, a

label appears at the bottom, next to the connector icon. For more information about PDP, see

Personalized Data Permissions (PDP)

.


 For information about building Sumo Cards, see

Sumo Editor Layout

.


 Understanding Custom Apps
---------------------------

A Custom App is a Card that uses multiple charts and images to present data measurements.

You can create Custom Apps using
 *App Dev Studio*
 , which is best suited for developers with web-based programming experience. To visit Domo's appstore and browse available custom apps, see

https://www.domo.com/apps

. For documentation about building Custom Apps using App Dev Studio, see our

Developer Portal

.


 Custom Apps can also be created by Client Services. For creation requests, reach out to your Domo Customer Success Manager or Technical Consultant.


**Video - Appstore Overview**

​

You can click a Custom App Card to display the Details view, which provides additional options not found in the Card Page. For more information, see

Card Details View Layout

.

Understanding Image Cards
----------------------------

Image Cards are now DEPRECATED. You can upload images to Domo using

Doc Cards

.

Card Options menu
--------------------

In a Page, mouse over a Card, then click

to display menu items for that Card. Options appear in the menu, depending on the Card type.


 Name
  |
 Description
  |
| --- | --- |
|
 Edit in Analyzer
  |
 Opens the Analyzer for this Card directly.
  |
|
 Share
  |
 Allows you to share access rights for this Card with users. For more information about sharing, see

Controlling Access to Cards and Pages

.
  |
|
 Edit Drill Path
  |
 Allows you to edit the drill path for this KPI Card. For more information, see

Editing an existing drill path

.
  |
|
 Domo Everywhere
  |
 Allows you to share this Card outside of Domo, either publicly or privately. For more information, see

Sharing Cards Outside of Domo

.
  |
|
 Schedule as Report
  |
 Lets you create a Scheduled Report for the Cards in this Page. For more information, see

Scheduling Reports

.
  |
|
 Edit Scheduled Reports
  |
 Opens the manager interface for Scheduled Reports. For more information, see

Managing your Scheduled Reports

.
  |
|
 Send Now
  |
 Allows you to send this Card via email to a Domo user. For more information, see

Sending a Scheduled Report immediately

.
  |
|
 Send / Export
  |
 Opens the
 **Export**
 dialog, which provides options for sending and exporting the data for the Card.
 **Send / Export**
 is available for KPI and Sumo Cards. For a KPI Card, you can email or print the Card, export the Card to Microsoft PowerPoint, or export the data as a
 `.csv`
 or Microsoft Excel spreadsheet file. For a Sumo Card, you can only export the data as a
 `.csv`
 or Microsoft Excel spreadsheet file.
  |
|
 Add To Favorites / Remove From Favorites
  |
 Adds this Card to your Favorites Page for quick access. If you have enabled Daily Alerts, you receive status reports for all KPI Cards set as Favorites. If the Card is already a Favorite, this option reads
 **Remove From Favorites**
 . Choosing this option removes the Favorite status from this Card. For more information about enabling Daily Alerts, see

Customizing Notification and Alert Settings

.
  |
|
 Notify Me on Issues/Do Not Notify Me on Issues
  |
 Adds this Card to your "Following" queue, meaning you are notified when anyone reports an issue on this Card. If the Card is already in your "Following" queue, this option reads
 **Do Not Notify Me on Issues**
 . Choosing this option removes the Card from your "Following" queue.
  |
|
 Alert Me
  |
 Displays the Card in the Details view and opens the
 **Alerts**
 tab in which you can create a custom Alert for the KPI Card. When an Alert is set for a KPI Card, you are notified via email and/or text whenever that KPI Card's value changes in the manner you specify (for example, you could set an Alert to appear when the value drops beneath a certain threshold). For more information about creating Alerts, see

Creating a Custom Alert for a Visualization Card

.
  |
|
 Remove
  |
 Allows you to remove a Card from a Page.


 The
 **Remove**
 option is
 *not*
 available in Details views.

*Note:**
 This option removes the Card only from this Page.

For more information about removing a Card from a Page, see

Removing Cards from a Page

.
  |
|
 Move / Copy
  |
 Allows you to move or copy this Card to a different Page. Cards copied in this way are still linked, so changes made to one copy are made to all other copies. For more information, see

Moving or Copying Cards to Other Pages

.
  |
|
 Save As (formerly called Duplicate)
  |
 Allows you to create a new instance of this Card. Duplicated Cards are completely separate from the originals; changes made to one are
 *not*
 made to the other. For more information, see

Duplicating Cards

.
  |
|
 Connect / Update Data
  |
 Opens the
 **Connect to Data**
 dialog for this KPI Card, in which you can upload a DataSet to power up the KPI Card. If you need a template spreadsheet, you can download one in this tab as well. If the KPI Card already has a DataSet connected, selecting this option allows you to refresh the data or change the DataSet. For more information about connecting and updating DataSets, see

Connecting to Data with Connectors

.
  |
|
 Report an Issue
  |
 Allows you to write a description of an issue in this Card and send it to the Card owner and any followers via email/text. The report message is also posted to Buzz. When a Card has reported issues, a warning icon appears on the Card. You can click the warning icon to view the
 **Issues Reported**
 tab of the Details view. For more information, see

Reporting Issues with Cards

.
  |
|
 Delete
  |
 Removes a Card from Domo. You must either have an "Admin" security role, have a custom role with the "Manage Cards and Pages" privilege enabled, or be the Card owner to delete a Card. For more information, see

Deleting Cards from Domo

.
  |
|
 Size options
  |
 Allow you to change the size of this Card. Options include small, medium, large, and full (for Domo App Cards and Sumo Cards). To change the size of all Cards on the Page, select the appropriate icon from the

menu in the top right corner of the Page. For more information, see

Changing the Size of Cards in a Page

.
  |

Card Collections
------------------

You can organize Cards on a Page into distinct categories called "Collections." You can name Collections, reorder Cards within a Collection, reorder Collections themselves within a Page, or remove Cards from the Collection. You can also minimize Collections so that only the names show, or delete them. For more information about Card Collections, see

Creating and Managing Card Collections

.

