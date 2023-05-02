

You can restrict edit access on an SQL DataFlow to the DataFlow owner and users with an "Admin" default security role or a custom role with "Manage DataFlows" enabled. You can do this while creating the DataFlow or editing it afterward. For more information about default security profiles, see

Managing Custom Roles

.

*Video - Restricting DataFlow Edits**

*To restrict edit access for an SQL DataFlow,**

. While creating or editing the DataFlow, scroll to the bottom of the window.
2. Check the box that reads "Only the owner and administrators can edit this DataFlow."
3. Click
 **Save**
 (or
 **Save and Run**
 , if you want to execute this DataFlow now).

To enable access for all viewers of this DataFlow, uncheck this box.

##
 Restrictions on Sharing DataFlows

You may want to share a DataFlow with another user so that user can access and edit that DataFlow. To do this, the user with whom it is being shared...

 must have access to all input and output DataSets
* cannot be a part of a PDP policy on any of the input or output DataSets that restricts data (either the DataSet must have PDP disabled OR they must be on the "all rows" policy for the DataSet).


