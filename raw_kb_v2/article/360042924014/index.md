

Visualization and Sumo Cards provide options for performing in-depth data analysis by applying Card Filters to your data. For both Card types, you do this in the Details view, using the Filters tool.


 For information about applying Filters to Cards in a page, see

Drilling into Data

.


 For a Visualization Card, you click the

icon. This allows you to apply Card Filters to the chart data. Filters you apply in a Details view are applied only to your own personal Domo instance—others who view this Details page do not see your Card Filters. Also, these filters are temporary. When you leave the Details view, they are removed. If you want to apply permanent Filters to the chart, you may do so in the Analyzer. For more information about applying both temporary and permanent Filters, see

Adding Filters to Your Chart

.

*Note:**
 Currently, only 500 unique values will show in the Filter menu.


---

*Note:**
 If you get an error stating that your filters contain no values, this indicates that the data has already been filtered out by previously set Analyzer or page-level filters and no rows are returned.

--


**Note:**
 It is possible to filter on NULL values, but to do so you must use Beast Mode to convert the NULL values into values that can be filtered. For example:


`CASE WHEN `column` IS NULL then 'Filter' ELSE 'Do not Filter' END`


 For more information about Beast Mode, see

Transforming Data Using Beast Mode

.

For a Sumo Card, in either view you can analyze your table data by applying dozens of different options, such as Filters, number formatting, conditional formatting, date grains, sorts, and the like. As with analyzing data in a Visualization Card, Sumo Card Filters are applied only to you and are temporary, unless you make permanent changes in the
 **Edit**
 view. For more information about the available options for analyzing Sumo data, see

Adding a Sumo Card

.

*Video - Filtering Cards**


**Video - Sharing a Filtered Card**


