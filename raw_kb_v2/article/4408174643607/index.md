

Intro
-------

With FIXED functions in Beast Mode, you can perform Level of Detail Expressions. These expressions allow you to calculate values based on the DataSet


 instead of the standard row-by-row comparisons performed in Beast Mode calculations. They also allow analysts to create powerful subquery calculations for more flexible data grouping, joining, and comparisons.


 Two aggregations must be used for the Beast Mode to work as you are applying an aggregation over an aggregated expression. You can use any of the standard aggregations such as Min, Max, Sum, and Avg. You can also add filter logic to these functions to specify how the calculation is affected by filters applied to the visualization.


 Using FIXED Functions
-----------------------

The following example use cases of FIXED functions are written using the different functions.

###
 Use Case #1: FIXED

The following syntax allows you to find the total value of the DataSet.


```
SUM(SUM(`Total Sales`) FIXED ())
```

###

Use Case #2: FIXED BY

The following syntax allows you to find the total value for a specific category.


```
SUM(SUM(`Total Sales`) FIXED (BY `Region`))
```

*Note:**
 You may add multiple columns to the FIXED functions separated by a comma.


####

Use Case #3: FIXED ADD

Using FIXED ADD returns the aggregate value and adds the dimension that is specified in the calculation. The graphic below displays live states in the west region and the max city sales for each state. Because we are using the FIXED ADD function, we can add the 'City' dimension to the calculation without having to display it in the visualization.


 The following syntax allows you to find the max city sales for each state in your visualization.


```
MAX(SUM(`Total Sales`) FIXED (ADD `City`))
```

*Note:**
 You may add multiple columns to the FIXED function separated by a comma.


####


####
 Use Case #4: FIXED Remove

Using FIXED REMOVE returns the aggregate value and removes the dimension


 specified in the calculation. The graphic below displays the average unit price by product category alongside the overall average unit price across all categories. Since we are using the FIXED REMOVE function, we can remove the 'Product Category' dimension from the calculation in order to


 display the overall average alongside the product category average in our visualization.


 The following syntax allows you to find the overall average unit price while displaying the average unit price per product category in your visualization.


```
AVG(AVG(`Unit Price`) FIXED (REMOVE `Product Category`))
```

*Note:**
 You may add multiple columns to the FIXED function separated by a comma.


####

Use Case #5: Percent of Total

The following syntax allows you to find the percent of total for the values in your card as compared to the category total of the DataSet.


```
SUM(`Total Sales`)
/
SUM(SUM(`Total Sales`) FIXED (BY `Region`))
```

Applying Filter Logic
------------------------

The following example use cases specify how the calculation is affected by filters applied to the visualization.

*Note:**
 If you do not set up the filter logic, all filters will be applied.


####
 Use Case #1: Filter None

Using the Filter None argument will prevent any filters from being applied to the calculation.


```
SUM(SUM(`Total Sales`) FIXED (BY `Region` FILTER NONE))
```


 The following gif displays sales by state, region, and country for various states in the west region. Region Sales and US Sales in the chart on the left are not fixed, while Region Sales and US Sales in the chart on the right are fixed.


 We select the 'California' pill to demonstrate what happens to the visualizations when we filter to a single state.


 Note that the chart on the left filters to only sales in California, displaying only Region Sales and US Sales for California, which is inaccurate. The chart on the right is using a FIXED calculation to display Region Sales and US Sales so they are unaffected by the California filter and remain accurate.


####
 Use Case #2: Filter Allow

Using the Filter Allow argument will prevent any filters from being applied to the calculation, except for the specified fields or expressions.


```
SUM(SUM(`Total Sales`) FIXED (BY `Region` FILTER ALLOW `Product Category`))
```


 The following gif shows sales by state, region, and country for various states in the west region. The Region Sales and US Sales in the chart on the left are not fixed, while Region Sales and US Sales in the chart on the right are fixed.


 We select both the 'California' pill and the 'Apparel' pill to demonstrate what happens to the visualizations when we use state and category filters at the same time. Note that in the chart on the left, Region Sales and US Sales remain unchanged by the category filter for apparel. In the chart on the right, Region Sales and US Sales are using a FIXED calculation with the Filter Allow argument to allow for the category filter and are displaying only the apparel sales for each geographical area.


####
 Use Case #3: Filter Deny

Using the Filter Deny argument is the opposite of Filter Allow and will allow any filters to be applied to the calculation, except for the specified fields or expressions.


```
SUM(SUM(`Total Sales`) FIXED (BY `Region` FILTER DENY `State`))
```


 The following gif shows sales by state, region, and country for various states in the west region. In the chart on the left, Region Sales and US Sales are fixed but are using the Filter None argument to prevent any filters from being applied. In the chart on the right, Region Sales and US Sales are using the Filter Deny argument to deny region or state filters from being applied to the calculations.


 We select both the 'California' pill and the 'Apparel' pill to demonstrate what happens to the visualizations when we use state and category filters at the same time. Note that in the chart on the left, Region Sales and US Sales remain unchanged by the category filter for apparel. In the chart on the right, Region Sales and US Sales are using a FIXED calculation with the Filter Deny argument to prevent any state filters and are allowing the category filter to display Apparel sales for each geographical area.

Frequently Asked Questions
----------------------------

*Can I use FIXED functions on a federated dataset such as Snowflake or BigQuery?**


 Currently, Fixed Functions are only available on non-federated datasets.


**Can I use FIXED functions with Window functions?**


 Currently, Fixed Functions are not compatible with window functions in the same calculation.


**Can I use a calculation containing a FIXED function as a filter in my card?**


 Currently, calculations containing FIXED functions are not compatible with card or Dashboard filters.

