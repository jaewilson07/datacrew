---
    title: Specifying Authorized Domains for Invited Users
    url: https://domo-support.domo.com/s/article/360042934534
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360042934534](https://domo-support.domo.com/s/article/360042934534)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003023
    views: 2,378
    created_date: 2022-10-24 21:00:00
    last updated: 2022-10-24 22:42:00
    ---



In the **Network security** tab of theAdmin Settings, you can specify the domains from which new users can be invited. For example, if you only want users with your company's email domain added to Domo, preventing personal email domains such as gmail, yahoo, etc. then you would add your company's email domain to the list. You can only access this tab if you have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled. For more information about default security roles, see [Managing Custom Roles](/s/article/360043438973 "Security Role Reference").


If no domains are specified:


* Domo places no restrictions on sending invitations to people whose email address does not contain an authorized domain.
* Users can invite anyone to join Domo.


If any domains are specified:


* Domo restricts sending invitations to people whose email address contains an authorized domain.
* Users can only invite people whose email address contains an authorized domain.  
When inviting someone to join Domo, an error message appears if the domain in the email address is not authorized (and the email address is properly formed).


**To create or update a list of authorized domains,**


1. Click **More** **> Admin**.  
The Admin Settings appears.
2. Under **Network S****ecurity**, click **Authorized domains (for invites)**.
3. In the **Domain name** box, do one of the following:


	* To not restrict any domains and allow anyone to be invited, delete all domains from the box.
	* To restrict domains and who can be invited, enter all authorized domains, separated by commas. For example:  
	`[domain1.com](http://domain1.com),[domain2.com](http://domain2.com)`
4. Click **Add**.
