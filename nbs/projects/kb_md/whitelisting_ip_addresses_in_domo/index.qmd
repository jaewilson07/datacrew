---
title: Whitelisting IP Addresses in Domo
url: https://domo-support.domo.com/s/article/360043439173
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360043630093](https://domo-support.domo.com/s/article/360043630093)', '[https://domo-support.domo.com/s/article/360043439173](https://domo-support.domo.com/s/article/360043439173)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003021
views: 2,953
created_date: 2022-10-24 21:00:00
last updated: 2022-10-24 22:42:00
---



You can control access to Domo based on IP address by adding or removing IP addresses to a whitelist in Domo. You do this in **More >** **Admin > Network security > Whitelist**. You can only access this page if you have an "Admin" security profile or a custom role with "Manage All Company Settings" enabled. For more information about default security roles, see [Managing Custom Roles](/s/article/360043438973 "Security Role Reference").




 


**Important:**
* The whitelist is exclusive, *not* inclusive, meaning if you enter *any* IP addresses, then only users accessing Domo from those specified IP addresses are allowed to use Domo.
* Whitelist entries you add to this list are applied to publications.






**To register IP addresses in Domo,**


1. Click **More** **> Admin**.  
The Admin Settings appears.
2. Select **Network security > Whitelist**.
3. Click **Add address**, enter all of the IP addresses you want to exclusively allow for accessing and using Domo, then click **Add**.
4. (Optional) Add additional IP addresses.
5. When finished adding IP addresses, click **Save**.


For information about whitelisting IP addresses for database connectors, see [Whitelisting IP Addresses for Connectors](/s/article/360043630093 "Whitelisting IP Addresses for Connectors").

