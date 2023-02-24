---
title: Shopify Dashboard App
url: https://domo-support.domo.com/s/article/360043438713
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360043438713](https://domo-support.domo.com/s/article/360043438713)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004173
views: 1,098
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Shopify provides tools to help sell products or services anywhere. The Shopify Dashboard provides business owners the ability to view geographic revenue distribution, sales performance, and important inventory trends like stockouts and canceled orders.


Usage
-----


Business questions that can be answered:


* Do you have the right product when you need it?
* How are your sales performing?
* Where are you generating the majority of your revenue?


Metrics included in the app:


* Bottom 10 SKUs
* Bottom 10 States
* Canceled Orders
* Current Inventory
* Customer Orders
* Customer Revenue
* Inventory Profile
* Inventory Types
* Items In Stock
* Monthly Web Sales
* Order Traffic
* Orders Trend
* Price and Discounts
* State Revenue
* Stockouts
* Top 10 Revenue Items
* Top 10 SKUs
* Top 10 States


Authentication
--------------


The following are required to authenticate:


* Shop Name  
Enter the name of your shop as it appears in your Shopify URL. For example, in the Shopify URL [domo.shopify.com](http://domo.shopify.com), the shop name would be “domo.”
* Shopify Email
* Shopify Password


Dashboard Reports
-----------------


For report descriptions, see Shopify Connector.


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as follows:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| All Articles |   | Created after; created before; published after; published before; updated after; updated before; published status; blog name |   |
| All Application Charges |   | None |   |
| All Blogs |   | None |   |
| All Collections |   | None |   |
| All Comments |   | Created after; created before; published after; published before; updated after; updated before; status; published status |   |
| All Countries |   | None |   |
| All Custom Collections |   | Published after; published before; updated after; updated before; published status; title |   |
| All Customers |   | Created after; created before; updated after; updated before |   |
| All Customer Saved Searches |   |  
None |   |
| All Checkouts |   | Created after; created before; updated after; updated before; status |   |
| All Fulfillments |   | Order name |   |
| All Orders |   | Created after; created before; updated after; updated before; status; fulfillment status; financial status |   |
| All Order Sub Report |   | Sub report; Created after; created before; updated after; updated before; status; fulfillment status; financial status | \*See sub reports below  |
| All Pages |   | Created after; created before; published after; published before; updated after; updated before; published status; title; handle |   |
| All Products |   | Created after; created before; published after; published before; updated after; updated before; published status; vendor; handle; product type |   |
| All Products All Variants |   | Created after; created before; published after; published before; updated after; updated before; published status; vendor; handle; product type |   |
| All Provinces of Country |   | Country Name |   |
| All Recurring Application Charges |   |   |   |
| All Redirects |   |   |   |
| All Script Tags |   | Created after; created before; updated after; updated before |   |
| All Smart Collections |   | Published after; published before; updated after; updated before; published status; title |   |
| All Themes |   |   |   |
| All Transactions for Order |   | Order |   |
| All Variants For Product |   | Product Name |   |
| Get Application Charge |   | Application Charge Name |   |
| Get Article |   | Blog Name; Article Name |   |
| Get Assets in a Theme |   | Theme Name |   |
| Get Blog |   | Blog Name |   |
| Get Comments on Article |   | Blog Name; Article Name |   |
| Get Comments on Blog |   | Blog Name |   |
| Get Country |   | Country Name |   |
| Get Custom Collection |   | Custom Collection Name |   |
| Get Customer |   | First Name; Last Name |   |
| Get Customer Saved Search |   | Customer Saved Search Name |   |
| Get Order |   | Order Name |   |
| Get Page |   | Page Title |   |
| Get Product |   | Product Name |   |
| Get Product Variant |   | Product Variant Name |   |
| Get Recurring Application Charge |   |  
Recurring Application Charge Name |   |
| Get Risks for Order |   | Order Name |   |
| Get Smart Collection |   | Smart Collection Name |   |
| Get Theme |   | Theme Name |   |
| Search Customers |   | First Name |   |
| Shop |   | None |   |
| Webhooks  |   | Created after; created before; updated after; updated before |   |


### Sub Reports




| Sub Report | Description |
| --- | --- |
| Discount Codes | Returns information about order discount codes for each order. |
| Fulfillments | Returns information about fulfillments for each order. |
| Line Items | Returns information about an order's Line Items for each order. |
| Line Item Properties | Returns information about an order's Line Item's Properties for each order. |
| Note Attributes | Returns all order's note attributes. |
| Order Adjustments | Returns all order's adjustments. |
| Payment Gateway Names | Returns all order's payment gateway names. |
| Refund Line Items | Returns information about a refund's line items. |
| Refunds | Returns all order's refunds. |
| Shipping Lines | Returns all order's shipping lines. |
| Tax Lines | Returns all order's tax lines |
| Refund Transactions | Returns all order's refund transactions |


Dashboard Data
--------------


The Shopify Dashboard will provide the following data collections and cards:




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Pulse: 6 metrics you should monitor daily. | Customer Orders | CUSTOMER ORDERSDisplays the number of items sold and any discounts that have been applied. View individual customers to see who is taking advantage of discounts and plan future discount strategies. | All Orders |
| Executive Pulse: 6 metrics you should monitor daily. | Inventory Profile | INVENTORY PROFILEShows the total items sold out, available or back ordered by quarter. Use this information to manage your inventory levels. | All Products All Variants |
| Executive Pulse: 6 metrics you should monitor daily. | Items In Stock | ITEMS IN STOCKDisplays a visual representation of all items currently in stock and the number of units that are available.  Monitor inventory levels and match them to customer purchases. | All Products All Variants |
| Executive Pulse: 6 metrics you should monitor daily. | Monthly Web Sales | MONTHLY WEB SALESTracks the trend in total revenue generated to the total number of orders over the period of interest. Identify patterns in the trend to better forecast future demand.  | All Orders |
| Executive Pulse: 6 metrics you should monitor daily. | Orders Trend | ORDERS TRENDContrasts the number of orders made in each month before and after the current date (i.e. the 9th of the month).  Find cycles of buying behavior to plan your marketing activity. | All Orders |
| Executive Pulse: 6 metrics you should monitor daily. | State Revenue | STATE REVENUEShows the concentration of orders, by state, with accompanying dollar amounts. Use this information to increase marketing efforts in high performing states and analyze sales in states that are low performing. | All Customers |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Inventory Management: Do you have the right product when you need it? | Canceled Orders | CANCELED ORDERSShows all orders that have been canceled in the time period, by reason. Determine if there are any order processing issues in your supply chain.   | All Orders |
| Inventory Management: Do you have the right product when you need it? | Current Inventory | CURRENT INVENTORYDisplays the SKUs in stock and available units for sale. Evaluate your inventory and determine when to reorder items. | All Products All Variants |
| Inventory Management: Do you have the right product when you need it? | Inventory Types | INVENTORY TYPESShows the product types that currently are in stock and the number of units available for sale. Identify high and low inventory items to plan your future purchases. | All Products All Variants |
| Inventory Management: Do you have the right product when you need it? | Stockouts | STOCKOUTSDisplays the number of SKUs according to when they are projected to run out. Use this information to help manage inventory levels and to plan purchases. | All Products All Variants |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Orders: How are your sales performing? | Bottom 10 SKUs | BOTTOM 10 SKUSRanks the bottom 10 SKUs based on total revenue. Evaluate the potential effects of removing these SKUs from your inventory. | All Orders |
| Orders: How are your sales performing? | Price and Discounts | PRICE AND DISCOUNTSShows the trend in total price and discounts on all orders in a given period. Modify your discount program depending on positive or negative sales growth. | All Orders |
| Orders: How are your sales performing? | Top 10 Revenue Items | TOP 10 REVENUE ITEMSDisplays the items that are top sellers based on the total selling price of the items. Use this information to quickly identify the top revenue generating items.  | All Orders |
| Orders: How are your sales performing? | Top 10 SKUs | TOP 10 SKUSRanks the Top 10 most productive SKUs based on total revenue. Consider focusing marketing and sales efforts on these SKUs. | All Orders |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Revenue: Where are you generating the majority of your revenue? | Bottom 10 States | BOTTOM 10 STATESShows the bottom 10 revenue generating states. Consider making adjustments to your marketing strategy in these states.  | All Orders |
| Revenue: Where are you generating the majority of your revenue? | Customer Revenue | CUSTOMER REVENUELists all customers who have visited the site and registered with an email account, ordered by the amount they have spent. Use this information to market to and analyze users. | All Customers |
| Revenue: Where are you generating the majority of your revenue? | Order Traffic | ORDER TRAFFICDisplays the number of browsers, operating systems and devices that generate the most order traffic to the website. Optimize your content for the customers' buying experience and consider changes to low performing experiences. | All Orders |
| Revenue: Where are you generating the majority of your revenue? | Top 10 States | TOP 10 STATESRanks the Top 10 most productive revenue generating states. Consider focusing marketing and sales efforts on these states. | All Orders |


 

