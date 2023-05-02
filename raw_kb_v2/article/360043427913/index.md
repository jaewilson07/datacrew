

This article lists the most common problems users have when adding DataFlows in Domo and provides suggestions for resolving these issues.

. *Mismatching of datatypes when joining*


 Mismatching is common when joining strings that look like dates, as well as strings that look like numbers. Enforcing data type integrity is key to optimizing performance. For more information about data types in Domo, see

Types of data in a DataSet

.
2. *Not using

Group By

statement and aggregating*


 Use a

Group by

clause when using aggregations in your

Select

clause. Without it, you will either get an error or incorrect aggregations. Also, all columns that are not being aggregated should be included in the

Group by

clause.
3. *Formatting and commenting code*


 Formatting your code makes it more accessible to others, and commenting your code gives the user the context and rationale behind your decisions.
4. *Order of operations, and aggregations*


 Knowing how SQL executes can help optimize how you write your code. Essentially, the order in which your directives are set to execute can help you optimize and shorten the time it takes for tasks to run.
5. *Divide by 0*


 A

(#Div/0)

occurrence happens when a calculation’s denominator is ‘0’. This will cause the code to error out.


