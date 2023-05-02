

An alert's PDP (Personalized Data Permissions) policies filter the alert data and control which users can subscribe. You can set alerts for policies you are a member of. Only those who are also members of those policies can view and subscribe to those alerts.


 You configure PDP for alerts in Step 1 of the

Alert Wizard

for the desired card. PDP options appear for a card only when one or more PDP policies have been applied to a DataSet for that card. You can choose from the following options for configuring PDP for a card alert:

 **Contextual**
 . Anyone permitted to view the DataSet(s) powering the card will be able to view this alert. This option works best with percentage and statistical alerts. This is the default setting.
* **All Rows**
 . The alert is applied to all rows of the DataSet (i.e. no filtering occurs).
* **Select Policies**
 . You choose the specific policy or policies to which the alert is applied.

As an example, suppose user "Bob" owns a DataSet called "Marketo Opportunities." Bob's marketing team is broken up by industry, and he is assigned to both Advertising as well as Business Services. Bob wants to set up an alert to notify him when opportunities drop by more than 10%.


 When Bob goes to create an alert on this card, as the DataSet owner he is given the option to apply the alert to the "Advertising," to "Business Services," or to all of the data in the DataSet (unfiltered). He can also leave the default
 **Contextual**
 option selected, in which case the alert conditions are evaluated against both the Advertising and Business Services policies.


 The following screenshot shows the default view of the alert options dialog with
 **Contextual**
 selected:

Bob then chooses to apply the "Advertising" PDP policy to the alert. He does this by clicking
 **Modify >**
**Select Policies**
 , then selecting "Advertising" as the policy.

From here, Bob continues creating his alert as explained in

Creating an Alert for a Visualization Card

. Because the "Advertising" PDP policy was chosen and not the "Business Services" policy, only users in that group can see the alert, subscribe to it, and receive notifications for it. However, Bob could then create a second alert for this card that applied only to the "Business Services" policy.


 Members of PDP policies can also create alerts on cards powered by PDP-affected DataSets. Because the data in the card is already filtered due to PDP policies in place, these users can create alerts
 *only*
 around the data available to them through their policies. Only users with the creator's same PDP policies are able to see the alert, subscribe to it, and receive notifications for it.


 For example, suppose that user "Tessa" is a policy member for both the "Advertising" and "Business Services" regions. When she goes to create an alert, she does
 *not*
 have the option to set an
 **All Rows**
 rule because her policies do not allow this. However, she can choose whether to build the alert around Advertising data, Business Services data, or both.

*Note:**
 Social users cannot be added to an Alert created from a DataSet that has PDP enabled on it.


**Video - Setting Alerts in Personalized Data Permissions(PDP)**

*To modify PDP settings for an alert,**

. Open the alert create/edit dialog by doing one of the following:

* In the Alerts Management page (which you access by clicking
	 **Alerts**
	 in the toolbar at the top of the screen), locate the alert, click the top portion with alert information, and click
	 **Edit**
	 .
	* Click the card to open the Details view and click the

 icon. Then...

	+ If creating a new alert, click
		 **New Alert**
		 .
		+ If modifying an existing alert, click the alert to open its info dialog, then click
		 **Edit**
		 .
2. Click
 **Modify**
 .
3. Choose one of the following:

* If you want this alert to apply to all users with access to the DataSet, click
	 **Contextual**
	 .
	* If you want this alert to revolve around all data in the DataSet and not be limited by PDP policies, select
	 **All Rows**
	 , then click
	 **Apply**
	 . (This option is not available for users limited by PDP policies.)
	* If you want to apply specific policies to the alert, click
	 **Select Policies**
	 then select all policies you want to be applied to this alert.
4. Click
 **Apply**
 .
5. Continue creating or modifying your alert as desired. For help, see

Creating an Alert for a Visualization Card

.


