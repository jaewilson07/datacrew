

Intro
-------

The more people you bring into Domo, the more people you have in your company making good business decisions. But how can you be sure that the content you're all looking at is the same? How do you know if you brought in the right data? Using the content certification feature, you can certify your content so your users know which content has been approved, just by looking at the Card or DataSet.


 Two types of content certification are available in Domo—"Company" and "Department." Company certification represents pieces of content that have passed the most stringent certification review and that your entire company should be aware of. Department certification represents content that may not universally apply to the entire company but have been certified by a specific department that trusts their information. Company- and department-certified content is indicated using different badges.


 You can request certification for any Card or DataSet by choosing
 **Request certification**
 for that piece of content. If you are not the owner, the request will be sent on to the owner, who can then decide whether to start or deny the approval process. Once the owner chooses what certification process to submit the piece of content through, the request goes to each specified approver (or all of the members of a specified group) in the certification process that the owner chose. Approvers have the responsibility of approving or rejecting certification requests. They can also send requests back in the approval chain if changes are required.


 When groups of users are specified as approvers in the chain, if any user in the group gives his/her approval, that approval counts for the whole group and the process moves on to the next approver.


 Different badges on a piece of content indicate the certification tier (company or department) as well as whether the content is certified or pending certified.

 indicates that the content was certified through a department certification process.
* indicates that certification has been requested, that the content is pending department certification, or that the content’s department certified status has expired.
* indicates that the content is certified through the company certification process.
* indicates that the content is pending company certification or that the content's company certification status has expired.

In the Certification Center, you can keep track of requests you have submitted as well as those waiting for your approval. You can see details of all requests, including the approval chain and the actions taken by each approver or group. For requests awaiting your approval, you can choose to approve or deny them here.


 The certification processes used for requesting company and department certification are found in
 **Admin Settings > Certified Content**
 . This Page is only accessible by users with an "Admin" default security role or a custom role with "Certified Cards" enabled. If you need to make changes to the fields and/or approvers for the certification form, you do it here. For more information about default security roles, see

Managing Roles

.


 For more information, see

Creating a Request Form

.

*Video - How to Certify a Card**

Requesting Certification for a Card
-------------------------------------

Requesting certification for a Card is easy. All you need to do is select the
 **Request certification**
 option for the Card, select the appropriate certification process, then submit. Note that if you are not the Card owner, clicking
 **Request certification**
 sends a notification to the Card owner so he/she can choose whether or not to initiate the approval process.


**To request certification for a Card,**

. In either the Page view or Details view for the Card, select
 **Request certification**
 in the wrench menu.
2. (Conditional) If you are not the Card owner, a message appears saying your request has been sent to the owner. At this point, you are done; the responsibility for beginning the certification process falls on the Card owner. The Card owner can then choose to reject or start the certification process by going into the Details view for the Card, clicking the

icon at the top of the screen, then clicking
 **Deny**
 or
 **Start**
 . Additionally, the Card owner may review the certification request in the Certification Center.
3. Select the desired certification process in the
 **Select a process**
 menu.

A pane appears with information about the process, including the description, instructions (if any), and members of the approval chain.
4. Click
 **Submit**
 .

The Card is then sent on to the first approver in the approval chain.

*Note:**
 If any users in the approval chain do not have access to the Card, they are granted access when the Card is submitted for certification. They can find the Card to take action on it in the Shared Page. They can also take action on Cards in the Certification Center.


---

*Tip:**
 You can keep track of all of your submitted requests by opening the Certification Center (
 **More**
**> Certification Center**
 ) then clicking anywhere in the "Submitted by You" area.


 Requesting Certification for a DataSet
----------------------------------------

You can request certification for DataSets in Domo. To do this, you simply go into the Details view for the DataSet and select
 **Request certification**
 , select the desired certification process, and submit.


 Here are two important things to note when requesting certification for a DataSet:

 Only DataSet owners—
 *not*
 co-owners—can start the certification process for the DataSet. If a request for certification is submitted by someone other than the owner, a message is sent to the owner informing them that certification has been requested. That person can then choose whether or not to go in and request certification. For more information about DataSet ownership, see

Sharing a DataSet

.
* The certification will expire if the DataSet undergoes a schema change (i.e. columns are deleted or renamed), a configuration change, or an account change.

*To request certification for a DataSet,**


**Tip:**
 You can keep track of all of your submitted requests by opening the Certification Center (
 **More**
**> Certification Center**
 ) then clicking anywhere in the "Submitted by You" area.

. Select
 **More**
**> Data**
 .
2. In the Data Center, locate the DataSet you want to request certification for, and click on it to open its Details view.
3. In the wrench menu, select
 **Request certification**
 .
4. (Conditional) If you are not the DataSet owner, a message appears saying your request has been sent to the owner. At this point, you are done; the responsibility for beginning the certification process falls on the owner. The DataSet owner can then choose to reject or start the certification process by going into the Details view for the DataSet, clicking the

icon at the top of the screen, then clicking
 **Deny**
 or
 **Start**
 . Additionally, the DataSet owner may review the certification request in the Certification Center.
5. Select the desired certification process in the
 **Select a process**
 menu.


 A pane appears with information about the process, including the description, instructions (if any), and members of the approval chain.
6. Click
 **Submit**
 .


 The Card is then sent on to the first approver in the approval chain.

*Tip:**
 You can keep track of all of your submitted requests by opening the Certification Center (
 **More**
**> Certification Center**
 ) then clicking anywhere in the "Submitted by You" area.


 Handling Certification Requests
---------------------------------

If you are specified as an approver for any certification request, it is your sole responsibility to handle any requests that come your way (unless you are a member of an approver group, in which case any member of the group may handle certification requests). When a request is made, a notification is sent to you letting you know that you need to take action. The type of notification you receive is based on your Notification Settings. For more information, see

Configuring Notification and Alert Settings

.


 You can take action on certification requests (approving or rejecting them, requesting modifications, etc.) in the Certification Center.


 For any submitted certification request, you can take the following actions in the Certification Center:

 You can
 **approve**
 the request, causing a notification to be sent to the next person in the chain (unless you are the only user in the approver chain, in which case the submitting user is notified of the approval).
* You can
 **ask a question**
 about the request. This question will appear in the Buzz channel for the request, and any users with access will be able to read it, respond to it, etc. For more information, see

Posting to Buzz

.
* You can
 **share**
 access to the Buzz channel for the request with specified users and groups.
* You can
 **edit**
 details of the request yourself.
* You can
 **request changes**
 from the previous person in the chain (or the submitter if there is no one before you in the chain).
* You can
 **delegate**
 a new approver for the request.
* You can
 **reject**
 the request altogether.

*To handle Card certification requests in the Certification Center,**

. Open the Certification Center by selecting
 **More**

*> Certification Center**
 .
2. Select
 **Waiting on You**
 in the left-hand navigation area.


 A list of all active certification requests that require your review appears.
3. In the
 ****Active****
 tab, locate and click on the request you have been asked to handle. (You can use the search and filter options to find the desired request.)


 When you click a request, details for that request appear in the pane on the right side of the screen.
4. Read through the request details.
5. Do one of the following:

* To
	 **approve**
	 the request, click
	 ****Approve****
	 .


	 If there are approvers after you in the chain, the next approver is notified about the approval, and it now falls upon that user to approve the request, reject it, etc. Otherwise, the approval process is finished and the submitter is notified.
	* To
	 **ask a question**
	 about the request in Buzz, click

 in the top-right corner, then select
	 ****Ask a question****
	 . This opens Buzz if it is not open already.
	* To
	 **share access**
	 to the Buzz channel, click

 in the top-right corner, then select
	 ****Share link****
	 . In the
	 ****Share With****
	 field, select the users and/or groups you want to share access with. Then click
	 ****Share****
	 . These users and groups are then emailed the link to the Buzz channel.
	* To
	 **edit**
	 the request, click

 in the top-right corner, then select
	 ****Edit request****
	 . Make your changes as desired then click
	 ****Save****
	 .
	* To
	 **request changes**
	 , click
	 ****Send Back****
	 , then select
	 ****Request Change****
	 . In the message field, explain the changes you want to be made to the request. Finally, click
	 ****Send****
	 .


	 The previous person in the approval flow is notified about the requested changes. He/she can now either make the changes and resubmit, or request that the previous user in the chain or submitter make the changes.
	* To
	 **delegate**
	 a new approver, click

 in the top-right corner, then select
	 ****Delegate****
	 . Select the user you want to delegate in the
	 ****Delegate to****
	 field then enter a message explaining the reason for the delegation. Finally, click
	 ****Send****
	 .
	* To
	 **reject**
	 the request, click
	 ****Send Back****
	 , then select
	 ****Deny****
	 . In the message field, enter the reason you are rejecting the request. Finally, click
	 ****Deny****
	 .


	 This stops the approval flow, and the submitter is notified that the request has been denied.


 Taking Admin Actions
----------------------

In
 **Admin Settings > Certified Content > Certified Cards/Certified DataSets**
 , you have access to a number of actions that are
 *only*
 available for users with an "Admin" default security role or a custom role with "Certified Cards" or "Certified DataSets" enabled. These actions include the following:

 Viewing all pieces of content that have been certified or are in a requesting, pending, or expired certification state
* Adding new Department-level Card certification processes (you can only have one Company-level certification process)
* Modifying both Company- and Department-level Card certification processes
* Determining whether certifications are expired if content is edited
* Canceling certification requests


###
 Viewing Certified or Certification Pending Content

In
 **Admin Settings > Certified Content > Certified Cards/Certified DataSets**
 , you can see a list of all Cards or DataSets that have been certified, requested for certification, pending certification, or have an expired certified state. Entries for certified pieces of content appear with a

or

badge, and entries for "Certification requested," "Certification pending," and "Certification expired" pieces of content appear with a

or

badge. All entries display the name of the Card owner, the last updated date, the certification date (or a "Pending" stamp if pending), the number of views, and a

icon with additional options.

You can use the menu in the top right corner to filter the Cards or DataSets in the list. Available filters include
 **Pending**
 ,
 **Expired**
 ,
 **Certified**
 , etc.

##
 Adding a Department-Level Certification Process

You can add a new Department-level certification certification process by navigating to
 **Admin Settings > Certified Content > Certified Cards/Certified DataSets**
 then clicking on the "+" tile in the "Departments" section. (You
 *cannot*
 create additional Company-level certification processes.)

You can also open an existing form to modify it by clicking on it.


 In the Department-level certification process editor, you can change the default process name (the default is "Department title"); add a description and instructions for filling out the process; and specify the users and/or groups in the approval chain. You can also preview the process to see how it will look when opened by a user by clicking

.


****To add a Department-level certification process,****

. Select
 **More**
****> Admin > Certified Content > Certified Cards****
 or
 **More >**
**Admin > Certified Content > Certified DataSets**
 .
2. Click the "+" tile under "Departments" to open the certification process editor.
3. Enter a unique name for the new certification process in the area at the top of the screen.
4. (Optional) If you want to include a description, enter it in the
 **Description**
 field.
5. (Optional) If you want to include specific instructions for users filling out this form, enter those instructions in the
 ****Instructions****
 field.
6. Under
 **Approval Chain**
 , click
 **Add Approver Step**
 .
7. In the
 **Select user or set a placeholder**
 field, enter the name of the first user or group in the approval chain.
8. (Optional) If the request will need to be approved by more than one user or group, click
 ****Add Approver Step****
 and select the new approving user or group.
9. (Optional) Repeat step 8 as often as necessary until all approvers and/or approver groups are added to the chain.


 Requests will be sent to users and groups for approval in the order provided here. For example, if the first user in the chain was "Brad Storch" and the second user was "Betty Symington," any requests made using this form would first be sent to Brad for his approval. Once Brad gave his approval, they would then be sent to Betty. If Betty then gave her approval, the submitter would then be notified that the request had been successfully approved at both levels.
10. (Optional) If desired, change the approver order by clicking

for a given approver or group and dragging their name up or down in the chain.
11. (Optional) If you do not want users to be able to add approvers when filling out this form, be sure to turn on the
 ****Lock Chain****
 option.
12. (Optional) To preview this form, click

in the top right corner of the screen.
13. When you are satisfied with the configuration of your form, click
 ****Save****
 .


###
 Modifying Certification Processes

You can modify content (description, instructions, or approvers) in any certification process (either Company or Department level) by clicking the tile for the process in
 **Admin Settings > Certified Content**
**> Certified Cards/Certified DataSets**
 then making the desired changes. The processes for Company- and Department-level certification are essentially the same, except that in the Company-level certification process, you cannot edit the name.

##
 Expiring Certifications for Edited Content

In
 **Admin Settings > Certified Content > Certified Cards/Certified DataSets**
 , you can specify whether certifications for Cards or DataSets are automatically expired if changes are made to those Cards or DataSets in Analyzer. This lets you ensure that any content updates to certified Cards or DataSets get approval first. You do this by toggling the
 **Expire if edited**
 switch. Note that this is a
 *global*

setting*
 ; you cannot enable this setting on a Card-by-Card or DataSet-by-DataSet basis.

When this option is enabled, if a user attempts to save after editing a certified Card or DataSet, a message similar to the following appears:

If the user then saves the Card or DataSet, it reverts to "Certification pending" (with the

or

badge appearing on the Card or DataSet) until it has gone through the approval process again.

##
 Canceling or Removing Certification

In
 **Admin Settings > Certified Content > Certified Cards/Certified DataSets**
 , you can cancel any pending certifications as well as remove any certifications that have already been given. You do this by clicking the

icon for a Card or DataSet then selecting
 **Cancel certification**
 (for pending certifications) or
 **Remove certification**
 (for approved certifications).


