---
    title: Specifying Default Overview Content for Users
    url: https://domo-support.domo.com/s/article/360043439153
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoGGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoGGAS)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360042933074](https://domo-support.domo.com/s/article/360042933074)', '[https://domo-support.domo.com/s/article/360043438913](https://domo-support.domo.com/s/article/360043438913)', '[https://domo-support.domo.com/s/article/360043439153](https://domo-support.domo.com/s/article/360043439153)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoGGAS/specifying-company-settings](https://domo-support.domo.com/s/topic/0TO5w000000ZaoGGAS/specifying-company-settings)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003054
    views: 2.222
    created_date: 2022-10-24 21:09:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


You can specify the cards that users see in the Overview page by setting the default overview content for each group. You do this in the Admin Settings. You can only access this page if you have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled. For more information about default security roles, see [Managing Custom Roles](/s/article/360043438973 "Default Security Role Reference").


When users view the Overview page, what they see depends on the default overview content specified for the groups they are a member of.




 


**Notes:**
* The content that appears in the Overview page for a user consists of the default overview content specified for the groups that the user is a member of, either at the time they join Domo or after manually resetting the default overview content of the user.
* The Overview page is not updated automatically for a user when the user is added to or removed from a group but when the default overview content of the user is manually reset.






For information about sharing content, see [Sharing Access to Content](/s/article/360042933074 "Sharing Access to Content").


Specifying the default overview content for a group
---------------------------------------------------


You can specify the cards that appear in the Overview page for users by specifying the cards to be in the **Default Overview Content** section for each group.




 


**Note:** The Overview page is not updated automatically for a user when the user is added to or removed from a group but when the default overview content of the user is manually reset. 



**To specify default content for a group,**


1. Click **More** **> Admin**.  
The Admin Settings appears.
2. Select **Governance >** **Groups**.
3. Select the group in the list that you want to add default content to.  
If the group does not exist yet, you need to create it. For more information, see [Creating and Managing User Groups](/s/article/360043438913 "Creating and Managing User Groups").
4. Click the ![Share_Icon.png](Share_Icon.png) icon.
5. Enter the name of a Card into the field.  
The top results for your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.
6. Select a Card from the list.
7. (Optional) Add additional cards to the default overview content for this group by repeating the previous two steps.
8. (Optional) Remove a card from the field by clicking the "x" to the right of the name of that card.
9. Click **Add** to add all cards in the field into the default overview content for the group.


The specified cards are added to the default overview content for this group. Any Domo users who are members of the group see these cards in the Overview page. If a user is added to or removed from the group, you must reset the default overview content for the user to see it.  


Resetting the default overview content for a user
-------------------------------------------------


You can manually reset the cards that appear in the Overview page.




 


**Important:**Resetting the default overview content removes any cards in the Overview page that are not specified as default overview content for the groups the user is a member of. After the overview content is reset, the user can re-add cards that were removed (if accessible).



**To reset the default overview content for a user,**


1. Click **More** **> Admin**.  
The Admin Settings appears.
2. Select **Governance >** **People**.
3. In the user list, select the user you want.
4. Click the ![Reset_Content.png](Reset_Content.png) icon.  
The user sees the reset Overview Page when refreshing or after signing in to Domo.
