

Intro
-------

After you configure routing, creation, and mapping in the publishing organization and choose your interface settings with Brand Kit, the next step is to publish or embed your content so others can view it. This article describes how to set up a subscriber organization and publish content to it. To learn more about embedding, see

Sharing Cards and Dashboards Outside of Domo Using Domo Embed

.


 A subscriber organization can subscribe to publications individually, as invited, or auto-subscribe to receive all publications that come from a trusted publishing organization. For more information,


 see the headings for

Subscribe to a Publication

or

Auto-Subscribe to all Publications from an Organization

.


 Admins in the publishing environment filter to the appropriate data for each subscriber organization before publishing content. Manage your publications and subscribers from the
 **Publications**
 section of
 **Domo Everywhere**
 .


 This article discusses publishing content in the following topics:

 Publications
* Sort publications
* Publication tasks
* Create a publication
* Add a permission
* Refresh a publication
* Delete a publication
* Remove pages from a publish job
* Subscribe to a publication
* Lock the dashboard
* Unsubscribe from a publication
* PDP policies for published content
* Notes
* Publish the same DataSet via two publish jobs

Publications
----------------

You can access the list of publications from your Domo environment in the
 **Publications**
 page of
 **Domo Everywhere**
 .


 To get there, follow these steps:

. In the Domo navigation header, select
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Domo Everywhere**
 menu of the Admin Settings, select
 **Publications**
 .

*Publications**
 has two tabs:
 **Publications**
 and
 **Subscribers**
 .


 In the
 **Publications**
 tab, you can view the list of publications from your Domo environment.


###


 Sort Publications

You can sort the publications with the sort menu, which is


 located in the upper-right corner of the screen, above the publications list.

The options for sorting the publications are as follows:

 **By name —**
 Sorts the publications alphabetically by name. You can sort from A to Z or from Z to A.
* **By last run —**
 Sorts the publications by the date of the last run. You can sort from newest to oldest or from oldest to newest.
* **By status —**
 Sorts the publications by status. All publications with error statuses display at the top of the list.


 Publication Tasks
---------------------

Before setting up a publication, you need to


 create your subscriber organization(s). To learn how to set up subscriber organizations, see

Domo Everywhere: Routing, Creation, and Mapping

.


 This section provides instructions for various tasks related to publishing.

##


 Create a Publication


1. From the navigation header, go to
 **More**
 >
 **Admin**
 .
2. In the
 **Domo Everywhere**
 menu, select
 **Publications**
 .


 The
 **Publications**
 section displays.
3. Select
 **New Publication**
 .


 The
 **Publication Creation**
 modal displays.
4. Enter a name and optional description for the publication.


**Tip:**
 You can use the description to document which content you are publishing and to whom.
5. Select
 **Next**
 .


 The
 **Subscribers**
 section of the modal displays.
6. (Optional) If the subscriber organization you want to publish to is not already listed, follow these steps:
	* Select
	 **+ Add Subscribers**
	 . The
	 **Subscriber organization**
	 and
	 **Organization ID**
	 fields display.
	* Enter the URL for the subscriber domain in the
	 **Subscriber Organization**
	 field in this format:
	 *domain*
	 .domo.com.
	* Enter the Organization ID. This value is the same as the key attribute used when creating the subscriber organization. To learn more about the key attribute, see

 Domo Everywhere: Routing, Creation, and Mapping

 .
	* Select
	 **+ Add.**


	 The subscriber organization displays in the list of subscribers.
	* Check the box for each subscriber organization you want to publish to.
7. Select
 **Next**
 .


 The
 **Dashboards**
 section of the modal displays.
8. Select the dashboards that you want to publish.

*Important**

* Any dashboards to be published must be shared with the user configuring the publication.
	* When you add a dashboard to a publication, any sub-dashboards are also automatically added.
9. Select
 **Next**
 .


 The
 **DataSets**
 section of the modal displays.
10. Review the DataSets that power the dashboard. You can search for and add any additional DataSets.
11. Select
 **Next**
 .


 The
 **Data Permissions**
 section of the modal displays.
12. Set up personalized data permissions (PDP).


 For more information, see

PDP Policies for Published Content

, below.


**Important:**
 You must choose one policy for each DataSet

,

whether that is All Rows or a subset of rows, by using Filters.


	* If you want to publish

 all rows in a given DataSet to the subscriber, check the
	 **Include in publication**
	 box. Review the publication details on the final screen of the modal and select
	 **Save.**
	* If you are sharing a filtered version of the data, select
	 **Add Permission.**
	 The
	 **New Permission**
	 modal displays. Follow the instructions below to

 Add a New Permission

 .
13. Select
 **Next**
 and review the details for the publication. Select
 **Save**
 .


**Important:**
 Saving makes the publication available for subscription in subscriber environments. Subscribers must accept the invitation inside their Domo environment before the published content is visible to them.


 Back to top


###

Add a Permission


1. Enter a name in the
 **Name your policy**
 field.
2. From the list in the
 **Dataset**
 field, select the DataSet to apply the permission to.
3. Select
 **+ Add New Filter**
 . The new filter fields display.
4. Select a
 **Column name**
 from the list.
5. Choose the filter
 **Type.**
 If you are using Dynamic PDP, select
 **Dynamic PDP by Org ID**
 . To learn more, see

PDP Policies for Published Content

, below.
6. Select values.
7. Select
 **Save**
 to return to the

*Publication Creation**

modal.


 Back to top


###


 Refresh a Publication


1. From the Domo navigation header, go to
 **More**
 >
 **Admin**
 .
2. In the
 **Domo Everywhere**
 menu, select
 **Publications**
 .
3. In the
 **Publications**
 tab of the
 **Publications**
 section, locate the publication you want to refresh.
4. Hover over the publication until

*Publication Options**
 displays and select it.
5. Select
 **Refresh**
 .


 The
 **Refresh**
 modal displays.
6. In the
 **Refresh**
 modal, check the boxes to perform a targeted refresh for the selected subscribers. You can sort the publications to see for which subscriber(s) the publication has an error message. Learn about the sorting options under the

Sort Publications

heading above.
7. Select
 **Refresh**
 to refresh the publication for the subscribers you selected and close the modal.


**Note:**
 If you make changes to a dashboard or a card on a dashboard, you need to refresh the publication in order for the updates to display in the subscriber organization.


**Important:**
 Do not modify the source dashboards while the job is being refreshed. This causes the layout of the dashboard to change and corrupts the layout of cards in the subscriber organization.


 Back to top


###


 Delete a Publication


1. From the navigation header, go to
 **More**
 >
 **Admin**
 .
2. In the
 **Domo Everywhere**
 menu, select
 **Publications**
 .
3. In the
 **Publications**
 tab of the
 **Publications**
 section, locate the publication you want to refresh.
4. Hover over the publication until

*Publication Options**
 displays and select it.
5. Select
 **Delete**
 .
6. The
 **Delete Publication**
 dialog displays with a warning of how much content you are removing. You must acknowledge the removal of that content before you can proceed.
7. Select
 **Confirm**
 to delete the publication.

*Note:**
 This immediately starts the process of removing the dashboards, cards, and DataSets that have been subscribed to by all subscriber organizations.

Back to top


###


 Remove Dashboard from a Publish Job


**Warning:**
 When editing an existing publication, if you remove a dashboard from the publication, the underlying DataSets powering the dashboard are also automatically removed. If the subscriber organization is using any of those DataSets to power any custom-built cards within their Domo environment, those cards are also automatically deleted from the subscriber organization when the page and its related DataSets are removed.

To remove a page from a publication while preserving the DataSets that power the page, make sure that all of the DataSets you want to keep are reselected in the
 **DataSet**
 section of the
 **Publication Creation**
 modal before you save the publication.

Back to top


###


 Subscribe to a Publication

Subscriber organizations can subscribe to a publication that has been created and saved in the publishing organization. With auto-subscription, a subscriber organization can choose to trust and accept all subscriptions from a specific publishing organization, rather than accepting every subscription individually.

###
 Subscribe to an Individual Publication

The first set of steps below details how to subscribe to an individual publication.


 See the

Auto-Subscribe

heading for instructions for how to auto-subscribe.

. Begin in the subscriber organization's Domo environment.
2. From the navigation header, go to
 **More**
 >
 **Admin**
 .
3. In the
 **Domo Everywhere**
 menu, select
 **Subscriptions**
 .


 The
 **Subscriptions**
 section displays.
4. Go to the
 **Invitations**
 tab.
5. Review the invitations and select
 **Subscribe**
 for the appropriate invitations. A dialog displays to confirm that you are accepting the invitation(s).
6. Select
 **Accept**
 to confirm the subscription. The data from the publishing organization populates in the subscriber organization.

The process is complete when the invitation disappears from the
 **Invitations**
 tab and displays in the
 **Subscriptions**
 tab.

*Important:**
 The DataSets are available as soon as you accept the invitation, but you must refresh your browser to view the visualizations.


 Back to top


####


 Auto-Subscribe to All Publications From an Organization

Follow these steps to auto-subscribe to publications from a specific organization:

. In the
 **Domo Everywhere**
 menu in the Admin Settings, select
 **Subscriptions**
 . The
 **Subscriptions**
 page has three tabs:
 **Subscriptions**
 ,
 **Invitations**
 , and
 **Settings**
 .
2. Go to the
 **Settings**
 tab.
3. In the
 **Settings**
 tab, select
 **+ Add Auto-Subscription**
 .


 The
 **Add auto-subscription**
 modal displays.
4. In the
 **Domain name**
 field, enter the Domo domain name for the publishing organization. The format is
 *companyname*
 .domo

.

com.
5. In the
 **Subscription**
**owner**
 field, enter a name for the owner of the subscription. We recommend that the owner be a service account.
6. (Optional) In the
 **Share subscription**
 field, search for and add users or groups to this auto-subscription. While this step is optional, this field is where you can configure

Default Sharing

.
7. Select
 **Add**
 to add the auto-subscription or
 **Cancel**
 to close the modal without saving.


 The auto-subscription now displays in the
 **Settings**
 tab of the
 **Subscriptions**
 page, as well as in the list of subscriptions in the
 **Subscriptions**
 tab.


**Note:**
 You can edit or remove the auto-subscription from the
 **Settings**
 tab. You cannot remove the auto-subscription from the subscriptions list in the
 **Subscriptions**
 tab.


 Back to top


####


 Default Sharing

Default Sharing allows subscriber organizations to automatically share all publications from a specified publishing organization to any number of users or groups.

. In the
 **Add auto-subscription**
 modal, accessed while

adding an auto-subscription

, enter the Domo domain for the publishing organization that you want to automatically share publications from.
2. In the
 **Share subscription**
 field, enter any users or groups that you want to automatically push publications to.


 Learn more about configuring users and groups in our

Admin Settings: Governance

article.

*Video - Subscribe to a Publication**

Back to top


###

Lock the Dashboard

We recommend that subscriber organizations lock published dashboards. This is because if the publisher makes an update to the visualizations on their side, those changes override any changes made by subscriber organizations.


 You can lock the dashboard by selecting
 **Lock**
 at the top of the dashboard.

If you want to make edits to the visualizations in the publication, it's best to make a copy of the dashboard by going to

*Dashboard options**
 >

*Save as**
 . Make edits to the duplicate version.


 Back to top


###


 Unsubscribe from a Publication


1. From the navigation header, go to
 **More**
 >
 **Admin**
 .
2. In the
 **Domo Everywhere**
 menu, select
 **Subscriptions**
 .
3. In the
 **Subscriptions**
 tab of the
 **Subscriptions**
 section, locate the publication you want to unsubscribe from.
4. Hover over the publication until

*Subscriptions Options**
 displays and select it.
5. Select
 **Delete**
 . A dialog displays, confirming that you want to delete the subscription.
6. Select
 **Confirm**
 or
 **Cancel**
 .


**Note:**
 Completing these steps immediately starts the process of removing the dashboards, cards, and DataSets that have been subscribed to as part of the publication.


 Back to top

PDP Policies for Published Content
--------------------------------------

This section contains information about Personalized Data Permissions (PDP) for publishing.

 If you share the same DataSet in two publications to the same subscriber organization, the PDP policies of the more recently saved publication are used for data permissions.
* If you want to share the same DataSet to the same subscriber organization twice with different permissions, you must duplicate the DataSet in the publishing organization's Domo environment.


###
 Dynamic PDP

When you set up a publication using the Dynamic PDP by Org ID permission type, only the part of the DataSet that you want that subscriber organization to see is published to their Domo environment. This keeps your data even more secure and is simple to edit if you need to change the data a subscriber organization receives at a later time.


 The Dynamic PDP takes effect the next time the publication is refreshed.

Back to top

Notes
---------


* Domo Everywhere supports publishing Domo Bricks. For more information, see our

Domo Bricks

article.
* Dataset Views can be published across organizations. Remember to follow the best practices for PDP policies as described


 in

Publishing DataSet Views

.
* Alerts are not copied when publishing across organizations. Subscriber organizations can create Card Alerts on their side that are triggered by numerical thresholds (as shown below on the right). DataSet Alerts for appending new rows or changing values are not compatible with the virtual DataSets from a publication (as shown below on the left).
* Beast Mode calculations are only copied to the subscriber organization if they are being used in the cards that are published.
* Federated data can be published, with the caveat that the published data, if the original source is federated, cannot be run in a DataFlow.


 Back to top


###


 Publish the Same DataSet via Two Publish Jobs

Each publication pushes all of the DataSets that exist within it to the subscriber organization, even if any of the DataSets already exists in the subscriber organization's Domo environment due to another publication already publishing that DataSet to the same subscriber organization.


 Within the subscriber organization, each copy of the DataSet has the same name, but different values for `Dataset\_Id`. Each copy of the DataSet is tied to the specific publication it was published with.


 We recommend only publishing a given DataSet to a subscriber organization at one time in one publication.

Back to top

Need Support?
---------------

If you still need support with your publication, contact us here:

support@domo.com


 Include the following information in your request:


 • Domo environment(s) where the behavior is occurring


 • Publication Name


 • Description of behavior


 • Screenshot of behavior (if applicable)


 • Steps to recreate behavior (if known/applicable)


