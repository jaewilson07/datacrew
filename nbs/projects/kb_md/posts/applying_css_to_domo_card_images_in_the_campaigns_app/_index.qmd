---
title: Applying CSS to Domo Card Images in the Campaigns App
url: https://domo-support.domo.com/s/article/000005091
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/000005091](https://domo-support.domo.com/s/article/000005091)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000005091
views: 1,070
created_date: 2023-01-03 20:55:00
last updated: 2023-01-03 20:56:00
---



Intro
-----


You can apply CSS styling to cards embedded in the email body of your campaigns. This article describes the process.


To learn more about creating a campaign, see our article on the [Domo Campaigns App](http://domo-support.domo.com/s/article/360042933494).


### Known Limitations


The following are known limitations of this feature.


* Supported components include:  
 · cards
* You can only add one CSS class per component
* Adding the class tag to the following card fields makes no change to the card's styling:  
 · Title  
 · Summary Number  
 · Description  
 · Alert  
 · Comment  
 · Unsubscribe
* Adding the CSS tag to the fields listed above does not generate an error, but the tag is not added in the HTML node.


Adding CSS to a Card
--------------------


1. In the Campaigns app, select a campaign to open it.
2. In the **Email Body** tab, locate the **Email Body Editor**.
3. Switch to HTML mode by selecting  ![Screen Shot 2023-01-03 at 2.07.55 PM.png](Screen Shot 2023-01-03 at 2.07.55 PM.png) **Change mode**in the toolbar.
 ![change mode.png](change mode.png)
4. Add an HTML style tag at the top of the editor: <style>
5. Inside the style tag, write your custom CSS class. Make sure to close the style tag: </style>
6. Select **Add Card** to add a card to the email.
7. Edit the card tag and add a class tag followed by the name of your custom class. 
 ![applying css examples.png](applying css examples.png)
8. Select **Save** to save your changes.


When the card is rendered, the CSS class is applied to the component. 

 