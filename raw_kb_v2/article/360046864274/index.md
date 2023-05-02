


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can use the
 **Search & Replace**
 transform to replace a specified value in a column with another value. You can also specify a default value to appear in cells in which your search value does not appear.

After searching for values in your data by specifying a
 **Search Value**
 , you can transform the values using regular expressions. For example, suppose you want to transform the date format of date values. Using regular expressions in the
 **Search Value**
 and
 **Replace With**
 fields, you could search for dates with a format of

yyyymmdd

and replace them with a format of

yyyy-mm-dd

by doing the following:

 Setting the
 **Search Value**
 field to


`([0-9]{4})([0-9]{2})([0-9]{2})`


 This regular expression searches for values, storing them in variables with 4 digits, 2 digits, and 2 digits (for dates in the form

yyyymmdd

).
* Setting the
 **Replace With**
 field to


`$1-$2-$3`


 This regular expression replaces the variables ($1, $2, $3) found in the
 **Search String**
 regular expression, resulting in the

$1-$2-$3

format for dates in the form

yyy-mm-dd

.

Workbench 4 includes a Regular Expression Builder to help you construct regular expressions for your "Search" value and/or "Replace with" value. You can open the Regular Expression Builder by clicking the ellipsis (...) to the right of "Search Value" or "Replace With."  In the Builder, you can select from a wide variety of constructs to use in your search or replacement string. These constructs are divided into categories for easy navigation (grouping constructs, character escapes, substitutions, etc.). Descriptions are provided for each construct.

*To replace a value in a column,**

. In the
 **Accounts**
 pane, select the DataSet job in which you want to replace a column value.
2. In the
 **Transforms**
 grouping in the Buttons toolbar at the top of the Workbench window, click
 **Add New**
 .
3. In the
 **Transform Type**
 menu, select
 **Search & Replace**
 then click
 **Next**
 .
4. Click
 **Finish**
 .


 A
 **Search & Replace**
 item is added under
 **Transforms**
 for this DataSet job.
5. Click on the new
 **Search & Replace**
 item under
 **Transforms**
 .
6. In the
 **Search Column**
 menu, select the column in which you want to replace values.
7. In the
 **Search Value**
 field, enter the value you want to replace or insert a regular expression using the Regular Expression Builder.
8. In the
 **Replace With**
 field, enter the value that should replace the value you entered in step 7 or insert a regular expression using the Regular Expression Builder.
9. (Optional) In the
 **Alternate Replace**
 field, specify a default value to appear in cells in which your search value does not appear.
10. Click
 **Save**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


**Training Video - Replacing Column Values**

Learn how to use a search/replace transform in Workbench 4.

