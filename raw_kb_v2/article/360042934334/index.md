

Intro
-------

When Domo users who leave your organization, or if their roles change and they no longer need to use Domo, it’s important to do two things:

 Transfer ownership of any data the user controlled to another user
* Remove the users from your instance

You can remove a user's account from Domo in the
 **People**
 sub-tab in the Admin Settings. When you remove a user who owns one or more DataSets, you are prompted to reassign that user's DataSets to another user in your company's Domo. If you delete a user from Domo and reassign his/her DataSets to another user, the permissions for the DataSet accounts
 *is not*
 passed to the new user. The account ownership must be transferred manually. For more information about accounts, see

Managing User Accounts for Connectors

.


 To remove users from Domo, you must have an "Admin" default security role or a custom role with "Edit Users" enabled. For more information about default roles, see

Managing Custom Roles

.


 Setting Up a Process for Transferring Ownership
-------------------------------------------------

To efficiently use your Domo licenses, your organization should determine a process for removing people from Domo when they leave the organization. If the formal meeting and transfer of content by a system administrator isn’t established, a large amount of content can be lost by various outgoing employees, or transferred but left idle by a manager or colleague.


 It’s important to transfer the content that is useful and specific to a team/division/etc. rather than just doing a mass transfer of all content from an outgoing employee.


 Not only does establishing this process make the process smooth from one outgoing employee to another incoming employee, but it also serves as an audit to help clean out the instance as you go through a transfer of employees.


 The following steps are recommended for this process:

. Your HR department sends out a notification about the termination to every system administrator. The notification should provide details about the terminated employee, such as department, role, manager, etc.
2. Each system administrator then goes through the next steps in transferring the content.


 Next, the organization should determine where the person’s content goes.
3. Your Domo administrator creates a card that shows all upcoming terminations, based on the data received from the HR notification (usually two-week notices from employees).
4. The Domo administrator sets an alert on the card so that anytime a new person is added, the system administrators are alerted.

*Note:**
 These alerts should be set up for outgoing employees who are voluntarily leaving,
 *not*
 those who are being fired, because the next step is to have system administrators reach out to outgoing employees to discuss the transfer of their Domo content. System administrators should
 *not*
 inform outgoing employees of their termination; this should be done by HR personnel.
5. System administrators schedule a meeting with the outgoing employee to sit down and go through all of their content (pages, DataSets, DataFlows, and apps) in Domo. Depending on how much content they have in Domo, the process may take from 30 minutes to an hour.

* System administrators can use Bulk Admin tools to do the majority of the work in transferring these assets to others. For additional tips on how to do this, see

 Managing Cards and Pages

 .
	* If system administrators are not able to meet with individuals before they leave (i.e. someone is terminated and leaves the next day), that person’s content can be reassigned to the person’s manager. The manager can then go through and determine where to transfer or assign the content.
6. The Domo administrator gathers DataSets that are using the outgoing employee's account credentials. Replace the outgoing employee's account credentials with a new account.


**Note:**
 Domo DataSet Accounts cannot transfer ownership. You must create a brand new account in Domo with the same data permissions as the original credentials, then update the account in the settings tab of the DataSet so the import of data is not interrupted.
7. The system administrators respond back to the notification from HR once the person has been removed, and new incoming employees can then be assigned a license in the Domo instance.

It is also recommended that Domo administrators set up an audit card for their instance. This card should have all of the employees in HR and all of the users in Domo. If there is an employee who exists in Domo but not in HR's records, the card should set off an alert to let the system administrator know there is a non-employee in Domo. Administrators can then investigate to find out why they are still there, transfer content, etc.


 Steps for Removing Users
--------------------------

*To remove a user account from Domo,**

. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
2. Select the
 **Governance**
 tab.
3. The
 **People**
 sub-tab appears.
4. Select the name of the user you want to remove from Domo.
5. Click the

icon in the top right-hand corner.


 A dialog appears asking you to confirm this action.
6. (Conditional) If you are prompted to reassign this user's DataSets, select the user to whom you want to reassign the DataSets.
7. Click
 **Delete**
 .


 The user's account is deleted from Domo, and any DataSets they owned are reassigned to the user you selected.


**Note:**
 If you use SSO, deleting the user from your IdP will NOT delete the user in Domo. However, you can remove the user via the Domo API.

For more information about DataSets, see

Viewing a User's Owned DataSets

.

