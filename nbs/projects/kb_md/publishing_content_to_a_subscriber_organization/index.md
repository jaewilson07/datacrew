---
title: Publishing Content to a Subscriber Organization
url: https://domo-support.domo.com/s/article/360045120554
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC)', '[https://domo-support.domo.com/s/article/360043437993](https://domo-support.domo.com/s/article/360043437993)', '[https://domo-support.domo.com/s/article/6523741250455](https://domo-support.domo.com/s/article/6523741250455)', '[https://domo-support.domo.com/s/article/4434678124695](https://domo-support.domo.com/s/article/4434678124695)', '[https://domo-support.domo.com/s/article/360045120554](https://domo-support.domo.com/s/article/360045120554)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004983
views: 2.878
created_date: 2022-11-01 23:18:00
last updated: 2022-11-01 23:23:00
---



Intro
-----


After you configure routing, creation, and mapping in the publishing organization and choose your interface settings with Brand Kit, the next step is publishing or embedding your content so others can view it. This article describes how to set up a subscriber organization and publish content to it.  
To learn more about embedding, see [Sharing Cards and Dashboards Outside of Domo Using Domo Embed](/s/article/360043437993).


Admins control all content by filtering to the appropriate data for each subscribing organization before publishing. Manage your publications and subscribers from the **Publications** section of **Domo Everywhere**.  
  
This article discusses publishing content in the following topics:


* [Publishing tasks](#publishing_tasks)
* [Creating a publication](#creating_publication)
* [Adding a new permission](#adding_permission)
* [Refreshing a publication](#refreshing_publication)
* [Deleting a publication](#deleting_publication)
* [Removing pages from a publish job](#removing_pages)
* [Subscribing to a publication](#subscribing_publication)
* [Locking the dashboard](#locking_dashboard)
* [Unsubscribing from a publication](#unsubscribe_publication)
* [PDP policies for published content](#pdp)
* [Notes](#notes)
* [Publishing the same DataSet via two publish jobs](#publish_same_dataset)


 


Publishing Tasks
----------------


Before setting up a publication, create your subscriber organization(s). To learn how to set up subscriber organizations, see [Domo Everywhere: Routing, Creation, and Mapping](/s/article/6523741250455).


This section provides instructions for various tasks related to publishing.


#### Creating a Publication


1. From the navigation header, go to **More > Admin.**


2. In the **Domo Everywhere** menu, select **Publications**.  
The Publications section of Domo Everywhere displays.  
![publications.png](publications.png)


3. Select **New Publication**.  
The **Publication Creation** modal displays.


![new_publication.png](new_publication.png)


4. Enter a name and optional description for the publication.




 

**Tip:** You can use the description to document which content you are publishing and to whom.



![Publication_Name.png](Publication_Name.png)


5. Select **Next**.  
The **Subscribers**section of the modal displays.![subscribers_.png](subscribers_.png)


6. (Optional) If the subscribing organization you want to publish to is not already listed, follow these steps:


* Select **+ Add Subscribers**.  
 The **Subscriber organization** and **Organization ID** fields display. ![Screen_Shot_2022-10-03_at_1.57.19_PM.png](Screen_Shot_2022-10-03_at_1.57.19_PM.png)
* Enter the URL for the subscriber domain in the **Subscriber Organization** field. It is in this format: *domain*.domo.com.
* Enter the Organization ID. This value is the same as the key attribute used when creating the subscriber organization. To learn more about the key attribute, see [Domo Everywhere: Routing, Creation, and Mapping.](/s/article/6523741250455)
* Select **+ Add.**  
 The subscriber organization displays in the list of subscribers.


7. Check the box for each subscriber organization you want to publish to.


![check_boxes.png](check_boxes.png)


8. Select **Next**.  
The **Pages** section of the modal displays.




 

**Note:** Pages are referred to in other places in Domo as dashboards. 



9. Select the pages that you want to publish.


![select_pages.png](select_pages.png)




 


**Important**


* Any pages to be published must be shared with the user configuring the publication.
* When you add a page to a publication, any sub-pages are also automatically added.






  
10. Select **Next**.  
The **DataSets** section of the modal displays.


11. Review the DataSets that power the page or dashboard. You can search for and add any additional DataSets.


![datasets.png](datasets.png)


12. Select **Next**.  
The **Data Permissions** section of the modal displays.


13. Set up personalized data permissions (PDP).   
For more information, see [PDP Policies for Published Content](#h_01GFJZJ6C7FVV58JGFG4282BZM), below.




 

**Important:** One policy must be chosen for each DataSet whether that is All Rows or a subset of rows by utilizing filters.



**If you are publishing all rows in a given DataSet** **to the subscriber —** Check the **Include in publication** box and move to step 14.


![data_permissions.png](data_permissions.png)


**If you are sharing a filtered version of the data —** Select the **Add Permission** button.   
The **New Permission** modal displays. 


#### Adding a New Permission


1. Enter a name for your new policy.


2. Select the DataSet to apply the permission to.


3. Select **+ Add New Filter**.  
The new filter fields display.


4. Select a **Column name**from the list.


5. Choose the filter **Type.**If you are using Dynamic PDP, select **Dynamic PDP by Org ID**. To learn more, see [PDP Policies for Published Content](#h_01GFJZJ6C7FVV58JGFG4282BZM), below.


6. Select values.


7. Select **Save**and continue to step 14.


![Screen_Shot_2022-10-14_at_6.50.04_PM.png](Screen_Shot_2022-10-14_at_6.50.04_PM.png)


14. Select **Next**.  
The **Review** section of the modal displays.


15. Review the number of subscribers, pages or dashboards, DataSets, and permissions to make sure everything is accurate.


![Final_Review.png](Final_Review.png)


16. Select **Save**.  
 




 

**Important:** Saving makes the publication available for subscription in subscribing organization environments. Subscribers must accept the invitation inside their Domo environment before the published content is visible to them.
 



#### Refreshing a Publication


1. From the navigation header, go to **More > Admin.**


2. In the **Domo Everywhere** menu, select **Publications**.


![publications.png](publications.png)


3. In the **Publications** tab of the **Publications** section, locate the publication you want to refresh and hover over it until  ![Screen_Shot_2022-10-03_at_6.18.37_PM.png](Screen_Shot_2022-10-03_at_6.18.37_PM.png)**Publication Options**displays and select it.


4. Select **Refresh**.


![refresh.png](refresh.png)




 

**Note:** If you make changes to a dashboard or a card in a dashboard, you need to refresh the Publication in order for it to show in the subscriber organization.



 




 

**Important:** Do not modify the source dashboards while the job is being refreshed. This causes the layout of the dashboard to change and corrupts the layout of cards in the subscriber organization.



 


#### Deleting a Publication


1. From the navigation header, go to **More > Admin.**


2. In the Domo Everywhere menu, select **Publications**.


![publications.png](publications.png)


3. In the **Publications** tab of the **Publications** section, locate the publication you want to refresh and hover over it until  ![Screen_Shot_2022-10-03_at_6.18.37_PM.png](Screen_Shot_2022-10-03_at_6.18.37_PM.png)**Publication Options**displays and select it.


4. Select **Delete**.


![delete.png](delete.png)




 

**Note:** This immediately starts the process of removing the dashboards, cards, and DataSets that have been subscribed to by all subscribing organizations.



  
![Delete_Pubication.png](Delete_Pubication.png)


#### Removing Pages from a Publish Job


 




 

**Warning:** When editing an existing publication, note that if you remove a page or dashboard from the publication, the underlying DataSets powering the page are also automatically removed. If the subscriber organization is using any of those DataSets to power any custom-built cards within their Domo environment, those cards are also automatically deleted from the subscriber organization when the page and its related DataSets are removed.



To remove a page from a publication while preserving the DataSets that power the page, make sure that all of the DataSets you want to keep are reselected in the **DataSet** section of the **Publication Creation** modal before you save the publication.


#### Subscribing to a Publication


Subscribing organizations can follow the steps below to subscribe to a publication that has been created and saved in the publishing organization.


1. Begin in the subscribing organization's Domo environment.


2. From the navigation header, go to **More > Admin.**


3. In the **Domo Everywhere** menu, select **Subscriptions**.  
The **Subscriptions** section displays.


![subscriptions.png](subscriptions.png)


4. Go to the **Invitations** tab.


5. Review the invitations and select **Subscribe** for the appropriate invitations.  
A dialog displays to confirm that you are accepting the invitation(s).


![Accept_Invitation.png](Accept_Invitation.png)


6. Select **Accept** to confirm the subscription.  
The data from the publishing organization populates in the subscriber organization.


The process is complete when the invitation disappears from the **Invitations**tab and displays in the **Subscriptions** tab.




 

**Important:**The DataSets are available as soon as you accept the invitation, but you must refresh your browser to view the visualizations.



 


**Locking the Dashboard**


We recommend that the subscribing organization lock the published dashboard. This is because if the publisher makes an update to the visualizations on their side, those changes override any changes made by the subscribing organization. 


You can lock the dashboard by selecting **Lock** at the top of the dashboard.  
![lock_the_dashboard.png](lock_the_dashboard.png)


If you want to make edits to the visualizations in the publication, it's best to make a copy of the dashboard by going to ![Screen_Shot_2022-10-15_at_7.27.10_AM.png](Screen_Shot_2022-10-15_at_7.27.10_AM.png)**Dashboard options**> ![Screen_Shot_2022-10-12_at_6.16.01_PM.png](Screen_Shot_2022-10-12_at_6.16.01_PM.png) **Save** **As**. Make edits to the duplicate version.


![save_as.png](save_as.png)


**Video - Subscribing to a Publication**



 


#### Unsubscribing from a Publication


1. From the navigation header, go to **More > Admin.**


2. In the **Domo Everywhere** menu, select **Subscriptions**.


![subscriptions.png](subscriptions.png)


3. In the **Subscriptions** tab of the **Subscriptions** section, locate the publication you want to unsubscribe from. Hover over it until  ![Screen_Shot_2022-10-03_at_6.18.37_PM.png](Screen_Shot_2022-10-03_at_6.18.37_PM.png)**Subscriptions Options**displays and select it.


4. Select **Delete**.  
A dialog displays, confirming that you want to delete the subscription.


5. Select **Confirm** or **Cancel**. 




 

**Note:** This immediately starts the process of removing the dashboards, cards, and DataSets that have been subscribed to as part of the publication.



PDP Policies for Published Content
----------------------------------


This section contains information about Personalized Data Permissions (PDP) for publishing.


* If you share the same DataSet in two publications to the same subscriber organization, the PDP policies of the more recently saved publication are used for data permissions.
* If you want to share the same DataSet to the same subscriber organization twice with different permissions, you must duplicate the DataSet in the publishing organization's Domo environment.


#### Dynamic PDP


When you set up a publication using the Dynamic PDP by Org ID permission type, only the part of the DataSet that you want that subscribing organization to see is published to their Domo environment. This keeps your data even more secure and is simple to edit if you need to change the data a subscribing organization receives at a later time.


The Dynamic PDP takes effect the next time the publication is refreshed.


Notes
-----


* Dataset Views can be published across organizations. Remember to follow the best practices around PDP policies as explained in [Publishing DataSet Views](/s/article/4434678124695).
* Alerts are not copied when publishing across organizations. Subscribing organizations can create card Alerts on their side that are triggered by numerical thresholds (as shown below on the right). DataSet Alerts for appending new rows or changing values are not compatible with the virtual DataSets from a publication (as shown below on the left).  
   
 ![Picture1.png](Picture1.png)
* Beast Modes are only copied to the subscriber organization if they are being used in the cards that are published.
* Federated data can be published, with the caveat that the published data, if the original source is federated, cannot be run in a DataFlow.


#### Publishing the Same DataSet via Two Publish Jobs


Each publication pushes all of the DataSets that exist within it to the subscriber organization, even if any of the DataSets already exists in the subscriber organization's Domo environment due to another publication already publishing that DataSet to the same subscriber organization.   
  
Within the subscriber organization, each copy of the DataSet has the same name, but different Dataset\_Id values. Each copy of the DataSet is tied to the specific publication it was published with.   
  
We recommend only publishing a given DataSet to a subscriber organization at one time in one publication.


Need Support?
-------------


If you still need support with your publication, contact us here: [support@domo.com](mailto:support@domo.com)


Include the following information in your request:  
• Domo environment(s) where the behavior is occurring  
• Publication Name  
• Description of behavior  
• Screenshot of behavior (if applicable)  
• Steps to recreate behavior (if known/applicable)

