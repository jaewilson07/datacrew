

Intro
-------

Calculating Average Time in Seconds
-------------------------------------

Use the following code to determine the average time it takes for something. This will return the average time in seconds, but you can divide the output to get days, hours or minutes.


`-- Days --`


`AVG(DATE(`end_date`)-DATE(`start_date`)) * 86400`


`+`


`-- Hours --`


`AVG(HOUR(`end_date`)-HOUR(`start_date`)) * 3600`


`+`


`-- Minutes --`


`AVG(MINUTE(`end_date`)-MINUTE(`start_date`)) * 60`


`+`


`-- Seconds --`


`AVG(SECOND(`end_date`)-SECOND(`start_date`))`


 Removing NULL for Line Graphs
-------------------------------

Use the following code to create a calculation to filter NULL Values in Line graphs (so the line doesn't go to zero).


`SUM(CASE WHEN `Number of SQLs` != 0 THEN`Number of SQLs` END)`

SUM()

is on the outside of the CASE statement as a best practice. If

`Number of SQLs` = 0

it will return a NULL value.


 Filtering Null Values
-----------------------

If you are trying to SUM the values in a column with NULL values, you need to convert those NULL values to zero using the IFNULL function.


 For example,


`IFNULL(`col`,0)`


 So let's say you had a "Category" column with values "A," "B," and "C," and an "Amount" column with values "20," "10" and an empty cell (which is NULL). When you SUM the Amount column, the IFNULL calculation converts the NULL value to 0 and then applies the SUM as normal.

Creating Page Analyzer Links (or Deep Linking with Filters)
-------------------------------------------------------------

Using a Beast Mode calculation, you can create links to other pages in Table cards and apply Analyzer filters according to what you have set in the Beast Mode. This is a powerful feature when you want to guide a user through a data story that involves cards that aren’t in the direct drill path of the current card, or if you want users to be able to apply Analyzer filters quickly to any page from a central or parent Table card.


 To create one of these links, copy the following code into a Beast Mode calculation:


`CONCAT(


 '<a HREF="
 **https://customer.domo.com/page/##########**
 '`


`,'?


 pfilters=%5B%7B%22column%22:%22
 **ColumnName**
 %22,%22dataSourceID%22:%22
 **DataSetID**
 %22,%22dataType%22:%22
 **string**
 %22,%22operand%22:%22
 **OperandType**
 %22,%22values%22:%5B%22'`


`,
 **`

Owner.Name

`**`


`,'%22%5D%7D%5D"
 **\_target=BLANK**
 >'`


`,’
 **Link Display Name**
 ’`


`,'</a>'`


`)`


**Note:**
 When using pfilters in an iFrame, you cannot use single quote marks. Instead, use the ASCII code

%22

to replace the quote marks.


 To create a custom Deep Link, replace the
 **bold**
 portions above with the following:

  |  |
| --- | --- |
|

https://customer.domo.com/page/##########

|
 Replace with the entire URL for the Domo page you want to navigate to when a user clicks on the link.
  |
|
 ColumnName
  |
 Replace with the column name you want to filter on.
  |
|


 DataSet ID
  |
 Replace with the DatasetID of the DataSet you want to filter on. To locate this, in your Data Center, navigate to the DataSet. You'll find the ID in the URL.


**Tip:**
 To filter all cards on a page regardless of which DataSet powers it, remove the DataSet ID parameter from your Beast Mode altogether.


 |
|
 String
  |
 Replace with the data type of the column you're filtering on. This can be string, value, or date.
  |
|
 OperandType
  |
 Replace with the type of operand you're filtering with. Options include IN or NOT\_IN.

*Tip:**
 When using NOT\_IN, the underscore must be included. Due to the operand being included in the URL, there cannot be a space.


 |
|

Owner.Name

|
 Replace with the column that contains the values you want to filter on. For example, using


 Owner.Name


 values, when I click on the deep link in row one, data for Bob Smith will be returned. Choosing the link in row 3 will return data for Jeff Clark.

|
|
 \_target=BLANK
  |
 (Optional) Opens the link in a new tab in your browser. You can remove this portion from the Beast Mode if you prefer the link opened in the same browser tab.
  |
|
 Link Display Name
  |
 The link display text. Instead of presenting an entire URL, you can specify how the link will be displayed.
  |


###
 Adding Multiple Filters

To add more than one filter, copy the entire filter portion below:


`,'?


 ,'%22%5D%7D,%7B%22column%22:%22ColumnName%22,%22dataSourceID%22:%22DataSetID%22,%22dataType%22:%22string%22,%22operand%22:%22OperandType%22,%22values%22:%5B%22', `Owner.Name2``


 Insert the filter as many times as needed.


`CONCAT(


 '<a HREF="hQps://

customer.com/page/#########'

;`


`,'?


 pfilters=%5B%7B%22column%22:%22ColumnName%22,%22dataSourceID%22:%22DataSetID%22,%22dataType%22:%22string%22,%22operand%22:%22OperandType%22,%22values%22:%5B%22'`


`,`

Owner.Name

``


 /\* Addi&onal Column Filters - Copy and paste the below code for each additional column to filter on. \*/


`,'%22%5D%7D,%7B%22column%22:%22ColumnName%22,%22dataSourceID%22:%22DataSetID%22,%22dataType%22:%22string%22,%22operand%22:%22OperandType%22,%22values%22:%5B%22', `Owner.Name2``


`,'%22%5D%7D%5D" \_target=BLANK>'`


 /\* Tip: Concat column names to display what will be filtered. \*/


`,CONCAT(`Name`, ' | ', `Ac&on`)`


`,'</a>'`


`)`


**Note:**
 When using pfilters in an iFrame, you cannot use single quote marks. Instead, use the ASCII code

%22

to replace the quote marks.


 For more information on HTML in Domo, see

Adding Graphics, Links, and Images to Table Cards Using Beast Mode

.


 Taking Advantage of Webform Fields
------------------------------------

Let's say that each month you need to update many cards to reflect the most recent closed month or current month in the filter. You want to streamline the filter as a reference point that can be updated once and trigger all the cards to use that same new month or year so each card does not have to be individually updated. For example: Closed Month = Sept or 9, Current Month = Oct or 10, Closed Year = 2016. You can do this by doing the following:

. Create a webform with the date references, which you plan to manually update to specify the current month number and year as necessary.
2. Join the webform to your data using a DataFlow.
3. Create a Beast Mode calculation to take advantage of the webform fields.


 For example, if you have a column called "Closed Month" that has a value of 9, this Beast Mode would work:


`CASE`


`WHEN MONTH(`Date`) = `Closed Month` THEN "Closed Month"`


`ELSE "Other"`


`END`
4. Use this Beast Mode in the filters. Set the filter to "Closed Month." Then, whenever you update the webform value, you will get new data displaying in all cards that use that filter.

Another option that won't require any manual intervention each month would be to use a DataFlow to calculate the

MAX(`Date`)

and add a column that identifies all data that is in the same month as the

MAX(`Date`)

. Then filter on that field in the cards when you only want the card to use the most recent month.


