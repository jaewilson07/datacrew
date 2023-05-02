

So let's say you want to share all of the data in a DataSet with a user or users, but you don’t want them to be able to build DataFlows from that DataSet, meaning you can't use the "All Rows" function of PDP. What do you do?


 The solution to this scenario is as follows:

. Build an ETL DataFlow as follows:

1. Include the DataSet you want to share as the input DataSet.
	2. Include an
	 **Add**
	**Constants**
	 action in which you create a text column labeled “Access to All Rows” with a string value of
	 *Yes*
	 .
	3. Create an output DataSet.
2. Create a PDP policy for the new DataSet as follows:

1. In the
	 **Edit data access**
	 dialog, select
	 **Access to All Rows**
	 in the
	 **Column Name**
	 field.
	2. Under
	 **Search/Add row values**
	 , enter "Yes."

Now you can use this policy to share all the data in the DataSet while governing who can build additional DataSets from this data.


 The content in this article was shared during our Domopalooza 2017 Tips and Tricks session. For more information about this session, see

Tips and Tricks: Quick Lessons from Power Users

.

