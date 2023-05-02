


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can use the
 **Filter**
 transform to apply filters to a selected column. You can choose to have Workbench return matches or non-matches for the specified filter query. You can also include or exclude blank cells in your filtered data.

You can use regular expressions in building filter queries, just as you can when using the
 **Search & Replace**
 filter. Currently no Regular Expression Builder is available for helping you build filters as it is with
 **Search & Replace**
 ; however, you can use all of the same constructions when building filter queries. For more information about the
 **Search & Replace**
 Regular Expression Builder, see

Replacing a Column Value in Workbench 4

.


**To filter data in Workbench 4,**

. In the
 **Accounts**
 pane, select the DataSet job in which you want to set filters.
2. In the
 **Transforms**
 grouping in the Buttons toolbar at the top of the Workbench window, click
 **Add New**
 .
3. In the
 **Transform Type**
 menu, select
 **Filter**
 then click
 **Next**
 .
4. Click
 **Finish**
 .


 A
 **Filter**
 item is added under
 **Transforms**
 for this DataSet job.
5. Click on the new
 **Filter**
 item under
 **Transforms**
 .


 A set of
 **Filter Data Transform**
 options appear in the Dynamic Options panel.
6. In the
 **Search Column**
 menu, select the column you want to filter.
7. In the
 **Include Filter**
 field, enter your filter query.
8. (Conditional) If you want to prevent blank cells from appearing in your filtered column, set
 **Exclude Null**
 to
 **On**
 . Otherwise leave this off.
9. (Conditional) If you want your filter to return non-matches for your query, set
 **Exclude Matches**
 to
 **On**
 . Otherwise leave this off.
10. Click
 **Save**
 in the
 **DataSet Jobs**
 grouping in the
 **Buttons**
 toolbar at the top of the Workbench window.


**Training Video - Adding a Filter Transform**

Learn how to apply filters to selected columns in Workbench 4 using a Filter transform.

