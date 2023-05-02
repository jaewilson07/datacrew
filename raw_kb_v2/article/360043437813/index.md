

You can export an individual Visualization Card to a

.csv

file, a Microsoft Excel spreadsheet file, or a Microsoft PowerPoint presentation. You can also export all of the Visualization Cards in a dashboard to PowerPoint, with one card per slide. If you export all the cards on a dashboard to PowerPoint, any non-visualization cards may not be exported, such as Notebook, Document, or Sumo Cards.


 If you have filtered card data in either the dashboard or card Details view, those Filters remain in place when the cards are exported. For more information about using Page Filters, see

Adding Filters to Your Chart

.


 The exception to this is Filters that have been set for the card in the
 **Edit**
 view. These Filters are considered implicit elements of the card. Even if you modify these Filters using Analyzer, they are retained in the exported version of the data.


 Likewise, if the data in a card is filtered due to PDP policies, those Filters are applied in the exported version.


 You can also export all the cards on a dashboard as a slideshow in Domo and then download it as a Microsoft PowerPoint presentation. This is essentially the same as using the
 **Export as PowerPoint option**
 discussed in this topic but requires extra steps. However, it also provides additional options not available when downloading directly to PowerPoint. For more information, see

Exporting Publications

.


 You can export a drill down layer of a card as well. For more information on how to export a drill down, see

Exporting Data from a Drill Path

.

*Notes:**


* When you export a Visualization Card to a Microsoft PowerPoint presentation, it appears as is, in its card state. When you export a card to Excel or CSV, only the data from the card is pulled; graphical elements of the card only appear when exporting to Excel.
* Files cannot exceed 4MB in size for export purposes.
* When exporting to Excel, only data that is displayed in the card will be exported, up to 1M cells of data while exporting to CSV will output all rows. For Megatables, Pivot tables, and HTML tables, this is 50k rows by default and up to 100k rows by manually increasing the row limit inside of Analyzer.
* HTML tables are not limited to 1M cells.
* For Pivot tables, the limit is applied on the DataSet rows rather than the pivoted data rows.
* When exporting a Table Card with aggregations grouping rows together, the data will remain aggregated. To see the raw data, you must remove the aggregation in your table first, then export.
* Be aware that when you export Heat Map Tables to Excel or CSV, the exported data may appear differently than expected, as it renders to match the table view of the data,
 *not*
 the card view. For more information about Heat Map Tables, see

Card Details View Layout - Table view


 .
* Only Pivot Tables and Mega Tables support exporting color rules.
* You can use a spreadsheet or text editor application to open a

.CSV

file to see the exported data.
* When you export a card, an event called "Exported DataSet" appears in the Activity Log in the Admin Settings. This may lead to the assumption that the user who exported the card has access to the DataSet, but this is not necessarily the case.
* If your data contains a string data type column that contains only numeric values, such as zip codes, it will be exported with a single quote added to the beginning of every value in the column to prevent Excel from enabling their auto macro functionality. (e.g. '84084)
* Both CSV and XLSX exports append a single quote on string columns displaying negative numbers. This is for security purposes, to prevent auto-macro functionality. If you remove the quotes, the cell values immediately become active macros.


**Video - Filtering and Exporting a Card**

Follow these steps to export a dashboard and all its cards to PowerPoint:

. (Conditional) If you want to filter data, use Page Filters to filter data on the dashboard.
2. In the

menu in the top right corner of the Page, select
 **Export as PowerPoint**
 .

The dashboard and cards are downloaded to PowerPoint, with one card per slide.


 You can export a single Visualization Card from either the dashboard or the Details view.


 Follow these steps to export a single Visualization Card:

. (Conditional) If you want to filter data, use Page or Card Filters to filter data in the Page or Card Details view.
2. Do either of the following:

* (Conditional) If you are in the Card Page, mouse over the Card that you want to export, click

 >
	 **Send / Export**
	 .


	 The
	 **Export**
	 dialog opens.
	* (Conditional) If you are in the Details view, click

 >
	 **Send / Export**
	 .


	 The
	 **Export**
	 dialog opens.
3. Select the option you want.


 Depending on the type, options include
 **Email**
 ,
 **Print**
 ,
 **Excel**
 ,
 **CSV**
 , or
 **PowerPoint**
 .

*Important:**
 Sumo and Notebook Cards cannot currently be exported.

