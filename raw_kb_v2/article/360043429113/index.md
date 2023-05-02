

Intro
-------

Funnel charts are similar to basic

pie charts

, except that they use a funnel shape divided into horizontal sections. Funnel charts are often used to show stages in a process. For example, they are often used in sales cycles to depict the number of potential customers who progress from one sales stage to the next. The largest pool—often something such as website visits—would be found at the top, and the smallest pool—paying customers, would be at the bottom, or vice-versa.


 In the legend for a funnel chart, the percentage for each successive layer is derived from the value of the previous layer. This functionality is appropriate for conversion charts, in which you want to show the degree of change from one process to the next. Prior to October 2016, a "Legacy" version of the funnel was available in which percentages were derived from the chart total, as in a standard Pie chart. This version of the funnel is now deprecated, however.


 In addition to the standard funnel-shaped chart, funnel charts have two subtypes, as follows:


 Subtype
  |
 Description
  |
| --- | --- |
|
 Folded funnel
  |
 In a folded funnel chart, the sections appear "folded," and each section takes on the relative size of its percentage of the chart. Because the sections appear as straight bars, this kind of funnel chart depicts the relative sizes of each section more accurately and understandably than a standard funnel chart.
  |
|
 Funnel bars
  |
 A funnel bars chart is a combination of a funnel chart and a horizontal

bar chart

. This chart type shows differences between stages in a process (such as a sales cycle). For each stage in the process, the data for the previous round drops off, so that only the relationships between the current round and all subsequent rounds is shown. In essence, this chart type shows "what's left" after each stage in a process.
  |


**Note:**
 Drill capability is not available for funnel charts. For more information about drilling, see

Adding Drill Path to Your Chart

.

Powering funnel charts
------------------------

All funnel chart subtypes require two columns or rows of data from your DataSet—a category column or row containing the names of each funnel section, and a value column or row containing the corresponding values for each section. The numbers in the values column or row do
 *not*
 need to add up to 100%. For information about value, category, and series data, see

Understanding Chart Data

.


 In a standard funnel chart, you can choose the desired sort method in the
 **Sorting**
 menu. In folded funnel and funnel bars charts, the sections in your funnel are
 *always*
 arranged in order from highest to lowest value. Because of the nature of these charts, this automatic sorting cannot be changed. For more information about sorting, see

Sorting the Data in Your Chart

.


 In the Analyzer, you choose the columns containing the data for your funnel chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a funnel chart:

Customizing funnel charts
---------------------------

You can customize the appearance of a funnel chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.


 Option
  |
 Description
  |
 Example(s)
  |
| --- | --- | --- |
|
 Display in Legend
  |
 Lets you specify how values are represented in legends. The default option,
 **Value and Percentage**
 , displays two legend columns, one with straight values from your DataSet and the other with percentages derived from the values. The other options,
 **Value Only**
 and
 **Percentage Only**
 , display only a single column.
  |
 —
  |
|
 Legend Percentage
  |
 Lets you specify how legend percentages are derived.


 When
 **Percent of Total**
 is selected, the percentage for each funnel slice is derived from the chart total, much like a pie chart. When
 **Percent of Previous**
 (default) is selected, the percentage for each slice is derived from the value of the slice above it. The
 **Percent of Previous**
 option is appropriate for conversion funnel charts in which you want to show the percent of change between successive layers.


 The two example screenshots at right compare these two types of funnel charts. The first screenshot shows a chart in which
 **Percent of Total**
 is used. The percentage shown for each layer is derived from the total chart value. The second screenshot shows a chart in which
 **Percent of Previous**
 is used. The percentage shown for each layer is derived from the value of the previous layer.
  |


 |

Custom-sorting stages in a sales funnel
-----------------------------------------

One common use for funnel charts involves taking a list of sales opportunities and including them in a funnel by stage, showing the number of opportunities in each stage of the sales process. However, it can be difficult to sort them in the order you want, as the default is alphabetical. You can resolve this issue by creating a Beast Mode calculation to override the default alphabetical sort and create the sort you want.


 For example, let's say a user wants to sort sales stages in the following order:

. Bullpen
2. On-Deck
3. 1st Base
4. 2nd Base
5. 3rd Base

By default, however, the stages are sorted alphabetically, as follows:

. 1st Base
2. 2nd Base
3. 3rd Base
4. Bullpen
5. On-Deck

So the user creates a new column using the following Beast Mode calculation:


`CASE`


`WHEN `stage_name` = ‘Bullpen’ THEN 1`


`WHEN `stage_name` = ‘On-Deck’ THEN 2`


`WHEN `stage_name` = ‘1
 st
 Base’ THEN 3`


`WHEN `stage_name` = ‘2
 nd
 Base’ THEN 4`


`WHEN `stage_name` = ‘3
 rd
 Base’ THEN 5`


`ELSE ‘Other’`


`END`


 You can also do another Beast Mode calculation to concatenate the number and the stage name column to show a full text value like: “5:3rd Base” then put that Beast Mode into the Analyzer instead of the regular stage name column. The default alphabetical sorting will then work with the number at the front. This is useful if you refer to your stages by their numbers at times, e.g. “Yes, that opportunity transitioned to stage 4 today.”

