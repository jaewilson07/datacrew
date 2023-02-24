---
title: Installing Salesforce's Domo Connector Package
url: https://domo-support.domo.com/s/article/360043437713
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360043437713](https://domo-support.domo.com/s/article/360043437713)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003161
views: 2,534
created_date: 2022-10-24 21:10:00
last updated: 2022-10-24 22:42:00
---



The "Domo Connector Package" found in Salesforce AppExchange allows Salesforce users to import their data into Domo. Follow the instructions in this article to download and install the Connector Package from the AppExchange.




 

**Note:** If the Managed Package is installed successfully, old and new Salesforce DataSets will work with no changes needed.



**To install Domo's Salesforce Managed Package,**


1. Log into Salesforce.
2. Navigate to the Salesforce AppExchange at [https://appexchange.salesforce.com](https://appexchange.salesforce.com "https://appexchange.salesforce.com") and search for "Domo Connector Package," then click on it.   
   
![sfmp_1.png](sfmp_1.png)  
   
 Alternatively, you can go directly to [https://appexchange.salesforce.com/a...A00000EcrsyUAB](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrsyUAB "https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrsyUAB").
3. Click **Get It Now**.  
   
![sfmp_2.png](sfmp_2.png)
4. Choose whether you want to install in a production environment or sandbox.  
   
![sfmp_3.png](sfmp_3.png)
5. Check the box reading "I have read and agree to the terms and conditions."
6. Click **Confirm and Install**.    
   
![sfmp_4.png](sfmp_4.png)
7. Click the **Install for All Users** tile.  
   
![sfmp_5.png](sfmp_5.png)


For more details, see Salesforce's documentation at [https://help.salesforce.com/articleV...ges.htm&type=5](https://help.salesforce.com/articleView?id=distribution_installing_packages.htm&type=5 "https://help.salesforce.com/articleView?id=distribution_installing_packages.htm&type=5"). 


### Verifying your Installation


Use Domo's Salesforce Managed Package Validator to verify that your Salesforce Managed Package has been installed correctly.


**To verify your installation,**


1. In the Connectors page in either the Data Center or Appstore in Domo, search for "Salesforce Managed Package" and double-click on on the icon.  
   
![sfmp_v1.png](sfmp_v1.png)
2. Click **Get the Data**.  
   
![sfmp_v2.png](sfmp_v2.png)
3. Under **Credentials**, select your Salesforce account name, then click **Next**.  
   
![sfmp_v3.png](sfmp_v3.png)
4. Under **Details**, click **Next**.  
   
![sfmp_v4.png](sfmp_v4.png)
5. In the **Update** menu, select **Manually**, then click **Next**.  
   
![sfmp_v5.png](sfmp_v5.png)
6. Give your DataSet a name, then click **Save**.  
   
![sfmp_v6.png](sfmp_v6.png)


The DataSet now runs. If everything has been set up correctly, the run will be successful, and a message will appear reading, "Validation Success: You have set up your Salesforce Managed Package correctly." 


![sfmp_v7.png](sfmp_v7.png)


If everything has *not* been set up correctly, the DataSet fails, and a message appears reading, "You have not installed Salesforce's Domo Connector Package," with a help link to this article. 


![sfmp_v8.png](sfmp_v8.png)

