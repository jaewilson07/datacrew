---
title: Pipedrive QuickStart App
url: https://domo-support.domo.com/s/article/360043438533
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042927834](https://domo-support.domo.com/s/article/360042927834)', '[https://domo-support.domo.com/s/article/360043438533](https://domo-support.domo.com/s/article/360043438533)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004185
views: 1,092
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Pipedrive is a CRM and sales pipeline tool designed with small teams in mind. 


Usage
-----


* Business questions that can be answered:


	+ Where are most of my prospects are coming from?
	+ Who are my high performers / top talent?
	+ What can I do today to exceed my sales goals?
* Metrics included in the app:


	+ Average Sales Cycle
	+ Bottom Sales Rep Closers
	+ Bottom Salespeople
	+ Close Rate
	+ Leads, Wins and Losses
	+ Oldest Opportunities
	+ Open Opportunities
	+ Opportunities by Rep
	+ Org Wins
	+ Projected Sales
	+ Sales Funnel
	+ Sales Pipeline
	+ Sales Trend
	+ Top 10 Closers
	+ Top Salespeople
	+ Win Rate


Authentication
--------------


A Pipedrive API key is required to authenticate. To obtain your Pipedrive API Key:


1. Log in to your Pipedrive account.
2. Click on your name in the top left corner, then **Settings**.
3. Click on **Personal**, and then **API**,
4. Copy the API token.
5. Go back to the Pipedrive connector screen in Domo and paste in your API key in the **API Key** field.


QuickStart Reports and Configurations
-------------------------------------


For a list of Pipedrive reports, see [Pipedrive Connector](/s/article/360042927834 "Pipedrive Connector").


QuickStart Data
---------------


The Pipedrive QuickStart will provide the following data collections and cards:




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Pulse: 4 metrics you should check every morning. | Bottom Sales Rep Closers | BOTTOM SALES REP CLOSERS Ranks the 10 bottom performing sales reps by closed opportunities. Follow up with the reps to determine if they need additional training or other help to improve performance.  | Persons |
| Executive Pulse: 4 metrics you should check every morning. | Projected Sales | PROJECTED SALES Shows the amount of sales revenue over time and forecasts revenue for this period. Compare forecasts to your goals and make adjustments, as necessary. | Deals |
| Executive Pulse: 4 metrics you should check every morning. | Sales Pipeline | SALES PIPELINE Shows total open opportunity value by stage. Analyze deals in each stage of the pipeline for quantity and quality. | Deals |
| Executive Pulse: 4 metrics you should check every morning. | Top Salespeople | TOP SALESPEOPLE Displays the top 10 salespeople by their win rate. Identify leading performers and understand the secrets to their success.  Win Rate = Deals Won / Deals Closed | Persons |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Leads and Opportunities: See where most of your prospects are coming from. | Close Rate | CLOSE RATE Compares the close rate against the total leads and deals closed in the specified period. These metrics direct your focus so you can increase deals while maintaining a high close rate.  Close Rate = Deals Closed / Leads | Deals |
| Leads and Opportunities: See where most of your prospects are coming from. | Leads, Wins and Losses | LEADS, WINS AND LOSSES Shows the number of leads as a total of open, won and lost opportunities over the specified period. Identify trends in won deals to identify sales best practices. | Deals |
| Leads and Opportunities: See where most of your prospects are coming from. | Oldest Opportunities | OLDEST OPPORTUNITIES Displays your 10 oldest opportunities by their title. Consider closing stale opportunities or pushing them to resolution. | Deals |
| Leads and Opportunities: See where most of your prospects are coming from. | Open Opportunities | OPEN OPPORTUNITIES Tracks the number of open opportunities by pipeline stage in the specified period. Too many lagging opportunities can indicate an ineffective process. Consider prioritizing opportunities in the later stages to convert in the current period. | Deals |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Sales Reps: Recognize, reward and position your top talent for top performance. | Bottom Salespeople | BOTTOM SALESPEOPLE Ranks the 10 lowest performing sales reps by their loss rate. Follow up with the reps to determine if they need additional training or other help to improve performance.  Loss Rate = Deals Lost / Deals Closed | Persons |
| Sales Reps: Recognize, reward and position your top talent for top performance. | Opportunities by Rep | OPPORTUNITIES BY REP Ranks sales reps by the number of open opportunities.   Combine with opportunity stages and aging to identify reps who aren't managing their opportunity pipeline. Clean out stale opportunities and reassign quality opportunities that have been neglected to increase close rates. | Persons |
| Sales Reps: Recognize, reward and position your top talent for top performance. | Org Wins | ORG WINS Displays the number of won deals each organization has earned over the specified period. Identify the best practices of over-performing organizations and replicate their successes across your company. | Persons |
| Sales Reps: Recognize, reward and position your top talent for top performance. | Top 10 Closers | TOP 10 CLOSERS Ranks the top 10 performing sales reps by number of deals closed. Reward top performers and leverage their experience closing deals to help jumpstart stalled opportunities. Consider refocusing top closers to higher value deals to increase their revenue impact. | Persons |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Sales: What you can do today to exceed your sales goals. | Average Sales Cycle | AVERAGE SALES CYCLE Measures the average sales cycle length in days for deals closed. Decrease average sales cycle by training sales staff on messaging, positioning and on guiding prospects through a clear decisioning process. | Deals |
| Sales: What you can do today to exceed your sales goals. | Sales Funnel | SALES FUNNEL Shows total open opportunity value by stage. Analyze deals in each stage of the pipeline for quantity and quality. | Deals |
| Sales: What you can do today to exceed your sales goals. | Sales Trend | SALES TREND Tracks total sales and average sale size over the specified period. Increase revenue by keeping the sales team focused on target deal size. Combine this data with time spent per deal to prioritize higher value deals over smaller, time-consuming deals.  Average Sale Size = Total Sales Revenue / Number of Sales | Deals |
| Sales: What you can do today to exceed your sales goals. | Win Rate | WIN RATE Compares the win rate against the number of deals won and the number of deals lost over the specified period. Consider improving declining win rates by addressing common customer concerns and modifying sales rep performance incentives. Long-term declines can indicate problems with lead source and opportunity qualifying.  Win Rate = Wins / Deals Closed | Deals |


 

