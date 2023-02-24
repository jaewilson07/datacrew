---
title: Salesforce Pardot QuickStart App
url: https://domo-support.domo.com/s/article/360043438673
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042927214](https://domo-support.domo.com/s/article/360042927214)', '[https://domo-support.domo.com/s/article/360043438673](https://domo-support.domo.com/s/article/360043438673)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004172
views: 1,097
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


As a service, Salesforce Pardot provides quality reporting on marketing automation. The Pardot QuickStart with Domo provides a quick summary view of web visitor volume and engagement, measurements of prospect volume, sources and regions, open opportunity volume and win rates.


Usage
-----


* Business questions that can be answered:


	+ What you can do today to hit your sales goals?
	+ Where are most of your prospects are coming from?
	+ How are your customers interacting with your website?
* Metrics included in the app:


	+ Average Sales Cycle
	+ Lead Generation
	+ Open Opportunities
	+ Page Engagement
	+ Page View Sources
	+ Prospect Activity
	+ Prospect Sources
	+ Sales and Forecast
	+ Sales Funnel
	+ Sales Trend
	+ Top 10 Wins
	+ Top Prospecting Countries
	+ Top Prospecting States
	+ Visitor Behavior
	+ Visitors
	+ Win Rate
	+ Won vs Lost Deals


Authentication
--------------


Username, password, and User Key are required. To find these, do the following: 


1. Log into your Salesforce Pardot account at Pardot.com.
2. Click the arrow next to the username on the top right-hand corner of the screen.
3. Copy the User Key and paste it in the **User Key** field in the **Credentials** pane for the Salesforce Pardot connector.
4. Click **Settings**.   
 You will be redirected to the **My User Information** screen.


QuickStart Reports
------------------


For report descriptions, see [Salesforce Pardot Connector](/s/article/360042927214 "Salesforce Pardot Connector").


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as followed:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| Campaign |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Lifecycle History |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Lifecycle Stage |   | None |   |
| List |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Membership List |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Opportunity |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Prospect |   | Date Filter; Duration;
 
 
 
 
Report Date | Select whether to filter by created date, updated date or date of last activity; Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Prospect Accounts |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Tag |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Tag Object |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| User |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Visit |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Visitor |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Visitor Activity |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |
| Visitor Page Views |   | Duration; Report Date | Select the duration for the report (a Single Date, or a Date Range); Select report date using relative or specific dates.
  |


QuickStart Data
---------------


The Pardot QuickStart will provide the following data collections and cards:




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Pulse: 4 metrics you need to track daily. | Lead Generation | LEAD GENERATION Measures the total number of leads generated for each prospect source. Reallocate resources to grow strategic sources or take advantage of highly profitable prospects. | Prospects |
| Executive Pulse: 4 metrics you need to track daily. | Sales and Forecast | SALES AND FORECAST Shows the amount of sales revenue over the specified period. Compare forecasts to your goals and adjust them accordingly. | Opportunities |
| Executive Pulse: 4 metrics you need to track daily. | Sales Funnel | SALES FUNNEL Shows total open opportunity value by stage. Analyze deals in each stage of the pipeline for amount and quality. Maintain a healthy pipeline by focusing on shrinking stages. To achieve current period growth, focus on high probability sales in the later stages of the pipeline. | Opportunities |
| Executive Pulse: 4 metrics you need to track daily. | Visitor Behavior
  |   | Visits |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Opportunities and Sales: What you can do today to hit your sales goals. | Average Sales Cycle | AVERAGE SALES CYCLE Measures the average sales cycle length in days for deals closed. Decrease average sales cycle by training sales staff on messaging, positioning and on guiding prospects through a clear decisioning process. | Opportunities |
| Opportunities and Sales: What you can do today to hit your sales goals. | Open Opportunities | OPEN OPPORTUNITIES Tracks the number of open opportunities by pipeline stage in the specified period. Opportunities in the later stages should be prioritized to convert in the current period. Too many lagging opportunities can indicate an ineffective process. | Opportunities |
| Opportunities and Sales: What you can do today to hit your sales goals. | Sales Trend | SALES TREND Tracks total sales and average sale size over the specified period. Increase revenue by keeping the sales team focused on target deal size. Combine this data with time spent per deal to prioritize higher value deals over smaller but time-consuming deals.  Average Sale Size = Total Sales Revenue / Number of Sales | Opportunities |
| Opportunities and Sales: What you can do today to hit your sales goals. | Top 10 Wins | TOP WINS Ranks the top 10 performing opportunities by won revenue. Increase revenue growth by focusing on higher value deals. | Opportunities |
| Opportunities and Sales: What you can do today to hit your sales goals. | Win Rate | WIN RATE Compares the win rate against the number of deals won and the number of opportunities over the specified period. Attack declining win rates with targeted objection handling and performance incentives. Long-term declines can indicate problems with lead source and opportunity qualifying.  Win Rate = Wins / Opportunities | Opportunities |
| Opportunities and Sales: What you can do today to hit your sales goals. | Won vs Lost Deals | WON VS LOST DEALS Measures the number of closed deals that were won compared to the number of closed deals that were lost by selected period. Monitor the sales trend and identify trends that may be adversely affecting sales. | Opportunities |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Prospects: See where most of your prospects are coming from. | Prospect Activity | PROSPECT ACTIVITY Measures the number of prospects by activity for the specified period. Predict future prospect volume and determine where you can improve lead quality.
  | Prospects |
| Prospects: See where most of your prospects are coming from. | Prospect Sources |   | Prospects |
| Prospects: See where most of your prospects are coming from. | Top Prospecting Countries |   | Prospects |
| Prospects: See where most of your prospects are coming from. | Top Prospecting States |   | Prospects |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Visitors: Discover how your customers are interacting with your website. | Page Engagement |   | Visits |
| Visitors: Discover how your customers are interacting with your website. | Page View Sources |   | Visits |
| Visitors: Discover how your customers are interacting with your website. | Visitors |   | Visits |


 


 

