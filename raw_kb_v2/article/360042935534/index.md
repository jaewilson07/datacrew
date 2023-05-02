

Intro
-------

Title of the card
-------------------


* Use the title of the card to describe the chart and not the summary number.
* Do not include date range qualifiers (This Year, Last Quarter) in the title. An exception could be when the chart does not have dates on an axis and the chart does not have the standard date range activated.
* In the title, do not include units or amounts, as those are handled on the chart axis labels.
* All KPIs have an operator, at least one measurement item, and at least one dimension. In the title, include the following elements: [Operator] Measurement and Dimension(s).
* The Operator is omitted when the measurement is simply an amount or number.
* The Operator is required when the measure is calculated. For example, “Percent of” or “Average."
* The first Dimension is preceded with “By” (ex: Average Deal Size by Rep).
* Subsequent Dimensions are separated with “and” (ex: Upside ACV by Account and Team).

General naming best practices
-------------------------------


* Use business language rather than technical terms.
* Do not use “Count” or “Sum” language.
* Avoid abbreviations. For example...

+ "Last 12 Months" instead of "L12M"
	+ "Year Over Year" instead of "YOY"
	+ "This Month" instead of "MTD"
	+ "This Year" instead of "YTD"
* If you use an abbreviation, define the abbreviation in the card description.
* Do not name columns the same as functions that are used in SQL, such as "DATE," "Date," "date," or "Year." Instead, use more specific terms such as "Start Date," "End Date," "Shipping Date," "Year of Transport," etc. Here is a list to avoid if needed:

https://dev.mysql.com/doc/refman/5.6/en/keywords.html

.

Date Ranges
-------------


* When dealing with daily information that is not a month-over-month comparison, typically include last month and this month.
* When dealing with weekly information that is not a period-over-period comparison, typically include at least last month and this month.
* When dealing with monthly data that is not a year-over-year comparison, typically include 12 months and this month.
* When dealing with quarterly data that is not a year-over-year comparison, typically include last 4 quarters and this quarter.

Number Precision
------------------


* When using the Auto Abbreviate Units format type, use 2 decimal places.
* Use the Auto Abbreviate Units precision unless the situation calls for showing the entire number.

Summary Number
----------------


* Select a measurement meaningful on its own but is related to the chart.
* Spell it out—"This is what it is."
* Include the date range in the summary number description when summary number range is fixed and different from the default chart range.

DataSets
----------


* Utilize suffix/prefix: PROD, INT, QA, or TEMP
* Name DataSets using a common format (ex: BU\_System\_Dept\_Suffix; have ABC\_Salesforce\_Sales\_PROD)
* Avoid using / or \ in the DataSet name.
* Add tags to your DataSets to make them more easily searchable.


