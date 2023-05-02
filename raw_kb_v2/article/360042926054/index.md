

Intro
-------

In the
 **Accounts**
 tab in the Data Center, you can add, remove, share, and edit the accounts associated with DataSets through connectors. Each account appears as an item in the list, with the name and logo of the connector, the email addresses associated with the account, and the number of DataSets being powered from this account. You can see and manage only your own accounts and the accounts that are shared with you; however, you can transfer DataSets to other users' accounts or change the accounts associated with DataSets. You can also share connector accounts with others so they can also create DataSets using that connector.


 When the OAuth token for an account is about to expire, you receive notifications in Domo and via email/SMS. For information about setting notification preferences, see

Customizing Notification and Alert Settings

.


 If you delete a user from Domo and reassign his/her DataSets to another user, the permissions for the DataSet accounts
 *is not*
 passed to the new user. The account ownership must be transferred manually. For more information, see

Removing Users from Domo

.


 For more information about the layout of this tab, see

Data Center Layout

.


 Accessing the Accounts tab
----------------------------

You access the
 **Accounts**
 tab from the Data Center.


**To access the Accounts tab,**


 1. Click
 **Data**
 in the toolbar at the top of the screen.


 The Data Center opens, with the
 **DataSets**
 tab opened by default.

2. Click the

icon from the left pane of the screen to open the
 **Accounts**
 tab.


 Adding an account


 You can add an account to Domo by doing either of the following:

 By adding a DataSet to Domo and entering new account information (as opposed to selecting an existing account). An entry for the new account appears automatically in the
 **Accounts**
 view. This method is discussed in more detail in

Adding a Dataset Using a Data Connector

.
* By clicking
 **Add Account**
 in the
 **Accounts**
 view and following the steps in the wizard.

*To add an account to Domo from the Accounts view,**

. In
 **Accounts**
 , click
 **Add Account**
 .
2. Select the desired connector.
3. Click the
 **Connect to**
 button.
4. Enter your connection information.
5. Click
 **Done**
 .

An entry for the new account appears in the
 **Accounts**
 view listing.


 Deleting an account
---------------------

You can disconnect (delete) any account listing from the
 **Accounts**
 view. Any DataSets that use this account are unassociated and stop updating.


**To delete an account in the Accounts view,**

. Mouse over the account you want to delete.
2. Click

and select
 **Delete Account**
 .
3. Click
 **Delete Account**
 to confirm.

Viewing DataSets associated with accounts
-------------------------------------------

In the
 **Accounts**
 view, you can see a listing of DataSets associated with each account. You can see any DataSet in more detail by clicking a DataSet's name in the list.


**To view DataSets associated with an account,**

. In
 **Accounts**
 , on a listed account, mouse over the
 **DataSets**
 column item.


 A list of the associated DataSets appears.
2. Click the name of a DataSet to see the Details page for that DataSet.

Reconnecting connectors for accounts
--------------------------------------

For connectors that use OAuth to authenticate, you can reconnect, if necessary in the
 **Accounts**
 tab. If an OAuth token has expired, you may have to re-enter your credentials to reconnect.


**To reconnect a connector for an account,**

. Mouse over the account you want to reconnect.
2. Click

and select
 **Re-connect**
 .
3. (Conditional) Enter your credentials or grant account access to Domo, if you are asked to do so.

Renaming accounts
-------------------

When you create accounts, either by adding them in the
 **Accounts**
 tab or entering credentials for a new DataSet, those accounts take the name of the connector. For example, if you add an account for Facebook, that account is called "Facebook Account." Subsequently added accounts for the same connector share this name. This can make it confusing to differentiate between accounts for the same connector. You can eliminate this confusion by giving unique names to accounts in the
 **Accounts**
 tab.


**To rename accounts in the Accounts tab,**

. Click the account name. (You can also select
 **Edit account**
 in the gear menu.)


 The account name and credentials open for editing.
2. Enter a new name for the account.
3. Click
 **Save Changes**
 .

Editing connector account credentials
---------------------------------------

For connectors that require you to enter account credentials manually (as opposed to using OAuth), you can edit the credentials as necessary in the
 **Accounts**
 tab.


**To edit connector information in the Accounts tab,**

. Click the account you want to edit. (You can also select
 **Edit account**
 in the gear menu.)
2. Enter the required credentials in the necessary fields.
3. Click
 **Save Changes**
 .

Sharing a connector account
-----------------------------

You can share connector accounts with others so they can build DataSets using that connector. Users you share accounts with cannot see or edit the account information when configuring a DataSet using the connector; only the account owner can see or edit the account information.


 You can see accounts that have been shared with you in the
 **Accounts**
 tab. Shared accounts appear grayed out. You can only use shared accounts to access the system through the connector.


**To share an account with another user,**


 1. Mouse over the account you want to share.


 2. Click

and select
 **Share account**
 .

3. A Share Account access dialog for the the selected account appears, listing the users with access to the DataSets from this account.


 4. Click the "Add a person..." search bar to search for the user name you want to share the account with.

5. Select the desired user and click
 **Add**
 .


 6. The newly added user will appear in the
 **Shared with**
 section. Repeat the same process to add multiple users you want to share the account with.


 The users you select have access to the DataSets associated with this account.


 Removing a user account
-------------------------

You can remove a user from the account that you added earlier. The removed user will no longer have the access to your datasets.


**To remove a user's account access,**


 1. Mouse over the account you want to remove access from.


 2. Click

and select
 **Share account**
 .


 3. A dialog appears listing the users with access to DataSets from this account in the
 **Shared with**
 section.


 4. Click the cross (

) in front of the the user name that you want to remove the access for.

5. You can remove the account access with multiple users in the same attempt just by clicking the cross (

) in front of the the user names that you want to remove the access for.


 The user(s) no longer have access to the DataSets associated with this account.


 Transferring ownership of multiple DataSets
---------------------------------------------

You can bulk transfer ownership (and management) of multiple DataSets from one user to another user. This may be useful when a user leaves the company or you need to consolidate users.


 Transferring ownership lets another user manage DataSets but continue to let associated users connect with the credentials specified in the connection account until or unless the owner or admin configures the DataSet to use another connection account.


 After transferring ownership, both users can view the associated DataSets in the
 **Accounts**
 tab, but only the user with ownership can manage the associated DataSets. If you want to configure the DataSet to use credentials in a different connection account when connecting to the third-party system to get data, change the connection account. For more information, see

Changing the connection account of multiple DataSets

.


**Note:**
 Transferring ownership of multiple DataSets requires the following:

 You
 *must*
 be the owner of all the DataSets or have an "Admin" default security role or a custom role with the "Manage DataSets" privilege enabled.


 Users with a default security role of "Privileged" or "Editor" can only assign ownership for their user-associated DataSets to another user. Users with a default security role of "Admin" can assign ownership for any user-associated DataSets. For more information about default security roles, see

Managing Roles

.
* When transferring ownership in bulk, you
 *must*
 assign ownership for
 *all*
 DataSets of the associated user.


**Tip:**
 You can change ownership of a single DataSet in the Details view for the DataSet. For more information, see

Changing the Owner of a DataSet

.

*To transfer ownership of DataSets associated with a user,**


 1. In
 **Accounts**
 , on a listed account, mouse over the
 **DataSets**
 column item. A list of the associated DataSets appears.


 2. Click
 **Change Owner**
 .

3.
 **Transfer DataSets**
 window pops up. Click
 **Transfer Ownership**
 .


 4. A
 **Transfer Ownership**
 dialog appears.


 5. Enter the name of the user to whom you want to transfer ownership of the DataSets and click
 **Transfer Ownership**
 .

An entry for the user is added to the user's
 **Accounts**
 tab.


 Changing the connection account of multiple DataSets
------------------------------------------------------

You can bulk change the credentials that multiple DataSets use in connecting to a third-party system to get data by changing from one connection account to another connection account. This is useful for situations such as the following:

 when the connection account was for use in development but not production
* when you need to consolidate accounts
* when permissions are insufficient in the connection account
* when you need to change the credentials in the connection account (which requires creating a new connection account and adding DataSets to it)

Changing the connection account configures the associated DataSets to use the credentials of the connection account when connecting to the third-party system to get data.


 After changing the connection account, the previous connection account is disconnected and removed if no DataSets are associated.

*Note:**
 Changing the connection account of multiple DataSets, requires the following:


* You
 *must*
 be the owner of all the DataSets or have an "Admin" default security role or a custom role in which the "Manage DataSets" privilege is enabled.


 Users with an "Admin," "Privileged," or "Editor" default security role can only change the connection account for their user-associated DataSets from one of their connection accounts to another of their connection accounts. For more information about default security roles, see

Managing Roles

.


 If you need to consolidate account ownership
 *before*
 changing the connection account used for multiple DataSets, first transfer ownership before changing accounts. For more information, see

Transferring ownership of multiple DataSets

.
* When changing the connection account in bulk, you
 *must*
 change the connection account for
 *all*
 DataSets of the associated user.
* Both connection accounts
 *must*
 use the same data connector.


**Tip:**
 You can change the connection account associated with a single DataSet in the Details view for the DataSet.

*To change the connection account of multiple DataSets,**

. Ensure that you are using the correct OAuth information for an account for a third-party system.


 Typically, each account for a data provider would contain the same access permissions in the third-party system, except when you intentionally want to use DataSets that depend on user access.


 You can sign in to the third-party system in a new tab or window using the same Web browser before creating the credential account in Domo.
2. In
 **Accounts**
 , on a listed account, mouse over the
 **DataSets**
 column item.


 A list of the associated DataSets appears.
3. Click
 **Change Owner**
 .
4. Click
 **Change Account**
 .


 This option is available
 *only*
 when you have more than one account for this connector. Only you can see your accounts.
5. Select the account you want to move the DataSets to.
6. Click
 **Change Account**
 .

After changing the connection account for DataSets, verify that the appropriate data comes into Domo. If not, verify the permissions of the account in the third-party system.

