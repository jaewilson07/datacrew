

Intro
-------

The most effective KPIs (Key Performance Indicators) are those that communicate information clearly and efficiently.


 Consider developing and adopting standards for designing KPIs in Domo.


 For more information about how KPIs are represented in Domo, see

Understanding Cards

. For more information about creating Visualization cards, see

Visualization Cards

.


 Purpose of standards
----------------------

The purpose of standards is to drive maximum clarity and efficiency in the communication of information.


 Aligning to a set of standards does the following:

 Assures maximum meaning is communicated between creator and viewer.
* Makes scanning the product an easier and more pleasant experience for all.
* Provides consistency in cases where a variety of practices or subjective preferences could enter.
* Makes articulating and identifying issues with cards easier.


**Note:**
 Specified standards cannot cover all eventualities. Therefore, the most important standard is that "the card communicates the information as clearly and efficiently as possible."


 Guidelines to consider
------------------------

Because every organization is unique, develop your own standards to use in Domo. You can consider using any of the following guidelines in your organization.

##
 General


* Use business language rather than technical terms.


 Do not use "Count" or "Sum" language.
* Avoid abbreviations


 For example, Last 12 Months instead of L12M; Year Over Year instead of YOY; This Month instead of MTD; This Year instead of YTD


 If you use an abbreviation, define the abbreviation in the card description.
* Date Ranges

+ When dealing with daily information that is not a month over month comparison, typically include last month and this month.
	+ When dealing with weekly information that is not a period over period comparison, typically include at least last month and this month.
	+ When dealing with monthly data that is not a year-over-year comparison, typically include 12 months and this month.
	+ When dealing with quarterly data this is not a year-over-year comparison, typically include last 4 quarters and this quarter.
* Number precision


 When using the auto abbreviate units format type, use 2 decimal places.


 Use the auto abbreviate units precision unless the situation calls for showing the entire number.


###
 Card title


* Use the title of the card to describe the chart and not the summary number.
* Do not include date range qualifiers (This Year, Last Quarter) in the title.


 An exception could be when the chart does not have dates on an axis and the chart does not have the standard date range activated.
* In the title, do not include units or amounts as those are handled on the chart axis labels.
* All KPIs have an operator, at least one measurement item, and at least one dimension. In the title, include the following elements: [Operator] Measurement and Dimension(s).

+ The Operator is omitted when the measurement is simply an amount or number.
	+ The Operator is required when the measure is calculated. For example, "Percent of" or "Average".
	+ The first Dimension is proceeded with "By".
	+ Subsequent Dimensions are separated with "and".

For example, Sales by Region; Average Deal Size by Team; Upside ACV by Account and Team

###
 Terms and definitions


|
 Term
  |
 Definition
  |
| --- | --- |
|
 Operator
  |
 This is how the measurement item is mathematically calculated. For example, "Number of" "Average of" "Value of" "Percentage of"
  |
|
 Measurement Item
  |
 This is what is being measured. It is always a noun. In a graph, it is always measured numerically. For example, "Leads" "Employees" "Dropped Calls"
  |
|
 Dimension
  |
 This is the subset of the measurement item. KPIs can have more than one dimension.

Dimensions come in three types: Non-Temporal Dimensions, Time Grain Dimensions, Time Range Dimensions.
 * Non-Temporal Dimensions

For example: by Region, by Product, by Salesperson

Non-Temporal Dimensions could be identified in the KPI card title.
* Time Grain Dimensions:

For example: by Month, by Quarter, by Day

Time Grain Dimensions could be identified in the KPI card title.
* Time Range Dimensions:

For example: This Year, Last Month, Year-over-Year, This Month and Last 12 Months

Standard Time Grain Dimensions can be selected in the "Graph by" feature. Non-standard dimensions can be created using Beast Mode.
 |


###
 Card description


* Describe the chart and not the summary number.
* Do not simply restate the title.
* Use a template.

*Card Title**


 Paragraph answering various questions:


 - What does the card measure?


 - What is included or excluded?


 - What is the default time period covered? For example, This Year, This Month, This Quarter, This and Last 12 Months


 - If unclear or counter-intuitive what constitutes a favorable vs. unfavorable result?


**Key Business Requirement (KBR)**


 List the key business requirements that the card addresses. For example, Increase Sales, Reduce Costs, Increase Customer Satisfaction or Increase Operational Excellence.


**Strategic Importance**


 Paragraph answering the questions:


 - Why is this important to the business?


 - What actions can be taken?

*Calculations**


 List the calculation formulas used in the card in the form Measurement = (A+B)/C


**Drill Path**


 List all drill path views available in this card.


###
 Summary number Dos


* Select a measurement that is meaningful on its own but is related to the chart.
* Include the date range in the summary number description when the summary number range is fixed and different from the chart default range.


###
 Summary number Don'ts


* Make every card have a summary number when no summary is the pertinent option.


###
 Visualization card Dos


* Use a sort order that makes sense.
* Use Horizontal bar charts with lists because the labels are more readable than vertical bar charts.
* Sort Pie charts in descending order.
* Break stacked bar charts with multiple dimensions into separate charts.
* Use sub-pages to group related cards.
* Have axis labels on all axis.

+ Date axis should be labeled "Period" to support dynamic date selection.
	+ Currency fields should have a currency symbol.
	+ Time period should be lead-in with HH:MM AM/PM format.
	+ Daily period format should be lead-in when available in the meantime use yyyy-MM-dd format.
	+ Monthly period format should use lead-in yyyy-MM
	+ Quarterly period format should use yyyy-Q#
* Consider showing appropriate values by setting options in
 **Data label settings**
 in
 **Chart Properties**
 .
* Label your data tab column headers the same as you have labeled your axis labels using the more options on chart field selections.
* For charts with a single value use a gauge chart type.


###
 Visualization card Don'ts


* Create bar charts that have only a single bar in the chart.


 Use a gauge chart if there is a single value.
* Create pie charts that have a single slice.


 Use a gauge chart if there is a single value.
* Create stacked bar charts with more than 5 bars.


 Try creating an overall chart and split the details into multiple charts.
* Create pie charts with more than 10 slices.


 Try aggregating categories with a Beast Mode calculation.
* Create line Charts with more than 6 lines.


 Try using a summary card with a drill to detail or aggregating categories with a Beast Mode calculation.
* Use dual-axis charts unless absolutely necessary.


###
 Card links


* Link your card to other relevant cards.


 For example, to show the same information trended, filtered for a different date range, or sliced along a different dimension.


###
 Card drill downs


* On table drill downs, consider eliminating all but the most pertinent fields.
* Rename the drill down title so it makes sense.
* Review the summary number to ensure it makes sense.
* Apply all the card checklist items to the drill-down card.

Other Best Practices Topics
-----------------------------

For more Domo best practices, visit the following topics:

 Projects and Tasks Best Practices
* Best Practices for Managing DataSets
* Best Practices for Choosing Chart Types
* Top 10 Dashboard Design Best Practices
* Best Practices for Creating Visualization Cards
* Best Practices for Designing KPIs

Or, for a handy Domo best practices guide, you can download the following PDF:

 Best Practices for card, data, and pages


