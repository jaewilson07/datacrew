

Intro
-------


###
 Use Case


* The client is one division or represents one category of a larger group.
* The client would like to emphasize their specific division and show the "Share of Wallet" or "Percent of Total" as compared to the other divisions.
* The client would like to show the actual Metric Value of their division as compared to other divisions.


###
 Current Situation


* In most cases, you would have to show the "% of Total" as one Bar chart and the Metric Value in a separate Bar chart.
* To emphasize your specific division, you would have to know the rank of your division and set its Series Color to a different color than all of the other bar colors.


###
 Ideal Solution


* The ideal solution would be a way to always follow the client’s specific division with a unique color in the Bar chart.
* The other ideal solution would be to show the Metric Value AND the "% of Total" in one Bar chart in a clean view.

In this article, we show you how to accomplish this second solution by creating a 3-Metric Bar Chart. We provide an example of a client representing the Kitchen department of a department store with 4 total departments. The client needs to know how his department compares to the other departments but wants to have the Kitchen department always stand out in the visual.


 Setup Instructions
--------------------

*To set up a 3-metric Bar chart,**

. Create 3 Beast Modes as follows:


 Beast Mode Name
  |
 Description
  |
 Beast Mode
  |
| --- | --- | --- |
|
 KitchenSales
  |
 Represents the amount of sales for the Kitchen Department ONLY.
  |
`SUM(CASE WHEN `Department` = ‘Kitchen’ THEN `Sales` ELSE 0 END)`
 |
|
 NonKitchenSales
  |
 Represents the amount of sales for all NON Kitchen Departments of the store.
  |
`SUM(CASE WHEN `Department` = ‘Kitchen’ THEN 0 ELSE `Sales`  END)`
 |
|
 ShareOfDepartments
  |
 Represents the percent of the all Sales for each individual Department.
  |
`(SUM(Sales) / SUM(Sales) OVER ()) * 100`

* This means it shows the sum of all departments.
	* Multiply by 100 to show the value in percent format. |


2. Choose the Horizontal Stacked Bar Chart as the chart type.


 Using a Stacked Bar Chart instead of a normal Bar Chart allows you to have parts of the bar represent a 0 value and other parts of the bar represent an actual value, so the series color of the bar will change based on the location of the series that you decide to use.
3. For the Y Axis, choose "Department."
4. For the X Axis, choose "KitchSales" from the BeastMode created above.


 This means that the first series of all Departments EXCEPT for the Kitchen Department will be 0.
5. For the Series, choose "NonKitchenSales" from the BeastMode created above.


 This means that the second series of all Departments EXCEPT for the Kitchen Department will have a value, but the Kitchen Department’s value of the second series will be 0.
6. For the next Series, choose "ShareOfDepartments" from the BeastMode created above.


 This value will not appear in the chart at first; however we can access it by using data labels in a future step.
7. For the "ShareOfDepartments" series, rename the column label to "Share Of."
8. Sort the "Sum of Sales" column in descending order.

This allows the chart to be ranked from highest sales to lowest regardless of Department.
9. Configure Chart Properties as follows:

* General

	+ Font Size – Larger
		+ Portrait View Legend Position – Hide
		+ Landscape View Legend Position – Hide
	* Data Label Settings

	+ Text -


		 #%\_CATEGORY\_NUMBER Sales: $%\_CATEGORY\_TOTAL \\n%\_SERIES\_NAME: %\_VALUE%

		- %\_{{item}}


			 represents values that can be extracted from the data in the chart. This is what allows you to see multiple metrics.
			- %\_CATEGORY\_NUMBER


			 shows the rank position of the bar.
			- %\_CATEGORY\_TOTAL


			 shows the total value of the bar.
			- %\_SERIES\_NAME


			 shows the name of the last series from the label.
			- %\_VALUE


			 shows the value of the last series.
			- \\n


			 creates a new line.
		+ Show One Label – True

		- This makes it so you only see the label one time rather than over and over for each series.
		+ Position – Inside Right

		- This allows you to choose where the label will be on the chart.
		+ Justification – Left

		- This allows your label text to be left-justified to give a cleaner look.
		+ Use Scale Abbreviation – True

		- This shortens the numeric values to give an easier-to-read label.
		+ Decimal Places - .0

		- This allows for each label value to only be 1 decimal out.
	* Value Scale (X)

	+ Label Format – Currency

		- This allows for the format of the label to be in Currency format.
	* Colors

	+ Series 1 – Light Green

		- This colors the bar that represents the Sales for the Kitchen Department Only.
		+ Series 2 – Light Gray

		- This colors the bars that represent all bars EXCEPT for the Kitchen Department.


