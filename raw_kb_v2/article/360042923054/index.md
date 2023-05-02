

All DataFlows have a Details view that provides basic information for the DataFlow. The view is divided into four tabs—
 **Settings**
 ,
 **DataSets**
 ,
 **History**
 and
 **Versions**
 .

The
 **Settings**
 tab lets you control scheduling for a DataFlow. When you check a box for a component DataSet, the DataFlow updates whenever that DataSet updates.


 The
 **DataSets**
 tab shows you the input and output DataSets in this DataFlow. You can click a DataSet to open the details view for that DataSet.


 The
 **Lineage**

tab displays the flow of data from each DataSet that has been combined and/or transformed to create this DataFlow.

The
 **History**
 tab provides information about runs, such as the number of successful and failed runs, the average number of successful runs, the run history, whether a run was executed manually or due to an input DataSet being updated, and the status of each run.


 If a
 **DataFlow**
 fails for any reason, you will have a failed status icon for that run

. You can hover over the failed icon to see the error message. If you would like to see exactly which transform(s) failed, then click on the status icon. This will bring you to a detailed view of your DataFlow execution. Each transform will have either a green outline for successful or red for failure.

The
 **Versions**
 tab shows a list of versions of the DataFlow. Each time you save edits to a DataFlow, a new version is added to this list.


 The Details view includes a

icon that provides access to commands such as
 **, View Tags,**
**Run**
 ,
 **Disable, Notifications,**
**Create Copy**
 , and
 **Delete.**
 The Details view also includes a

icon that allows you to edit your DataFlow.


**See the Details view for a DataFlow by doing one of the following:**

. In Domo, click
 **Data**
 in the toolbar at the top of the screen.
2. Click

in the left-hand navigation pane.


 The
 **DataFlows**
 tab opens.
3. Locate and click the DataFlow you want to see details for.


 You can use the filter options to narrow down the DataFlows that appear in the list. For more information, see

Data Center Layout

.


 You can also open the DataFlow details view by mousing over the DataFlow entry, clicking the gear icon, and selecting
 **Details**
 .

OR

*Important:**
 Only Admins can access DataFlows details in this way.


1. In Domo, click
 **Data**
 in the toolbar at the top of the screen.
2. Click

in the left-hand navigation pane.
3. Locate and click the output DataSet of the DataFlow you want to see the details for.
4. Click

and select
 **View DataFlow**
 .

*Note:**
 If you are not an Admin or the DataSet has either been removed as an output or the DataFlow has been deleted altogether, then clicking
 **View DataFlow**
 will cause nothing to happen.

