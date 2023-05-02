

You can create a new column in your DataFlow that shows the beginning and end of the current week.

. Create a DataFlow.
2. Import the columns you need.
3. Add

an additional col

umn with these functions:


* `adddate(curdate(), INTERVAL 1-DAYOFWEEK(curdate()) DAY)  For`
`WeekStart`
* `adddate(curdate(), INTERVAL 7-DAYOFWEEK(curdate()) DAY) For WeekEnd`


1. Save the transform.
2. Create output.
3. Save and run the DataFlow.


