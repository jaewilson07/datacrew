

It can be valuable to separate staging data, used for development and testing, from production data, which power the cards and dashboards that your users see. This allows for ample testing and changes to be made on the staging DataSets while not affecting the production DataSets until you are ready to implement those changes.


 This would be used for DataFlows that may need editing but you don't want the output production data to change until you know the changes made accomplish the intended goals.


**To separate staging and production data,**


 You can

create a copy

of your DataFlow. By making a DataFlow copy, you also create a copy of your output DataSet.  This method allows you to make any change to the copy DataFlow and not affect your original production DataSet. Also, you can keep the original DataFlow on its scheduled update time so users are not without the newest data while you are testing.


 Once you are happy with the changes made and there are no issues with the output data, you will want to recreate those transforms in your production DataFlow. This is the most efficient way of making changes to a DataFlow and with zero interruption of your production DataFlow.

