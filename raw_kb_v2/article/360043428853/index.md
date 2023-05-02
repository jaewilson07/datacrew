

In the Analyzer view for a Visualization Card, you can see the lineage of the DataSet that powers the Card. By "lineage," we mean the DataSets that have been combined and/or transformed using DataFlows or DataFusion to generate this DataSet. The following screenshot shows an example of a DataSet with an extensive lineage:

In this example, two DataSets, "Demographic Detail" and "Sales Data," were combined using a DataFlow or DataFusion to yield the "Adjusted Revenue Data" DataSet. That DataSet  was then combined with "Agency Inputs" and "Ad Campaigns" to generate another new DataSet—"Revenue - Combined All." Finally, that DataSet was transformed in some way to create "Sales Data - Final"—the DataSet powering this Card.


 You can click the name of any DataSet in a lineage to expand the information panel for the DataSet. This shows you the owner, the connector, last update time, and columns. If you click the name of a DataSet again, the DataSet details view appears. For more information about this view, see

Data Center Layout

.


 This ability to view the lineage of a DataSet and find out more about ancestor DataSets is useful in showing you that your data is up-to-date and running on time. If there are any issues from one step in the lineage to another, the line for that step appears red or orange instead of blue. Orange indicates that this DataSet has broken but has not run since breaking (possibly indicating a recent problem). Red indicates that a DataSet has attempted to run at least once since breaking. This color coding lets you know where problems are occurring so you can go in and fix your connections.

*Video - Using Data Lineage**

*To view the lineage for a DataSet in Analyzer,**

. Open the Analyzer for the Card you want to see the lineage for.


 You can do this by selecting
 **Edit in Analyzer**
 in either the page view or Details view for the Card.
2. (Optional) If the Analyzer toolbar is not expanded near the top of the window, click

to expand it.
3. Click the
 **Lineage**
 button in the toolbar.

The Lineage view for the Card then opens in its own window.


 For more information about methods of combining and transforming DataSets to create new DataSets, see

Magic Transforms

.

