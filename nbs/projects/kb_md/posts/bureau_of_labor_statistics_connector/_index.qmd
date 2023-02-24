---
title: Bureau of Labor Statistics Connector
url: https://domo-support.domo.com/s/article/360043435353
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043435533](https://domo-support.domo.com/s/article/360043435533)', '[https://domo-support.domo.com/s/article/360043435353](https://domo-support.domo.com/s/article/360043435353)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003380
views: 2,128
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


The Bureau of Labor Statistics (BLS) is a unit of the United States Department of Labor. It is the principal fact-finding agency for the U.S. government  in the broad field of labor economics and statistics and serves as a principal agency of the U.S. Federal Statistical System. The Domo Bureau of Labor Statistics connector allows you to extract headlines from BLS publications in RSS Feed (XML) format.


The Bureau of Labor Statistics connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You create a Bureau of Labor Statistics DataSet in the Data Center. This topic discusses the fields and menus that are specific to the Bureau of Labor Statistics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


To learn about BLS Unemployment public-facing datasets, see [Public Datasets Connectors](/s/article/360043435533 "Public DataSet Connectors").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to...* View consumer price index (CPI) trends
* View college enrollment trends
* View employment trends
 |
| **Primary Metrics** | * Unemployment numbers/percentages
* Consumer price index trends
* Employee wage trends
* Employee cost indices
* Real average hourly earnings
 |
| **Primary Company Roles** | HR directors |
| **Average Implementation Time** | A few minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 1 |


Best Practices
--------------


It is helpful to review the BLS report types and definitions to identify where appropriate data can be obtained.


Prerequisites
-------------


There are no prerequisites for this connector unless you plan to run the "Local Area Unemployment Statistics" report, in which case a registration key is required. Otherwise no credentials are necessary.


To obtain a registration key, go to the BLS Public Data API 2.0 [registration page](http://data.bls.gov/registrationEngine/), and enter your email address and organization name. Complete the CAPTCHA. You will receive an email from [labstat@bls.gov](mailto:labstat@bls.gov) with your registration key. 


Creating a Bureau of Labor Statistics DataSet
---------------------------------------------


This section describes how to create a Bureau of Labor Statistics DataSet in the Bureau of Labor Statistics Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Details Pane


This pane contains a single menu in which you select a Bureau of Labor Statistics report type.


The following table describes all of the predefined reports you can create using the Domo Bureau of Labor Statistics connector.




|  |  |
| --- | --- |
| **Menu** | **Description** |
| Access to and Use of Leave | Returns headlines about American wage and salary workers' access to leave, use of leave, and ability to adjust their work schedules. |
| American Time Use Survey | Returns headlines from the American Time Use Survey. |
| Census of Fatal Occupational Injuries | Returns headlines from the Census of Fatal Occupational Injuries. |
| College Enrollment and Work Activity of High School Graduates | Returns headlines about college enrollment and work activity of high school graduates in the United States.  |
| Consumer Expenditures Midyear Update | Returns headlines about spending by American consumers.  |
| Consumer Expenditures Survey (Annual) | Returns headlines about spending by American consumers. |
| Consumer Price Index | Returns monthly headlines on changes in the prices paid by American urban consumers for a representative basket of goods and services. |
| County Employment and Wages | Returns headlines about U.S. counties with the largest percentage increases in average weekly wages. |
| Employee Benefits in the United States | Returns headlines about the percentage of American employees receiving benefits. |
| Employee Tenure | Returns headlines about the median number of years that wage and salary workers in the U.S. have been with their current employer. |
| Employer Costs for Employee Compensation | Returns headlines about the average hourly costs for employee compensation in the U.S.  |
| Employment Characteristics of Families | Returns headlines about the percentages of families in the U.S. with employed and unemployed members, working single mothers or fathers, etc. |
| Employment Cost Index | Returns headlines about employment costs for civilian, private industry, and state and government workers in the U.S. |
| Employment Experience of Youths: Results from a Longitudinal Survey | Returns headlines about work experience for young adults in the U.S. |
| Employment Projections | Returns headlines about employment projections in the U.S. |
| Employment Situation  | Returns headlines about total nonfarm payroll employment in the U.S.  |
| Employment Situation of Veterans  | Returns headlines about employment among U.S. Armed Forces veterans.    |
| Extended Mass Layoffs (Quarterly)  | Returns quarterly headlines about the number of mass layoff events in the U.S.   |
| Green Goods and Services  | Returns headlines about the percent change of jobs associated with the production of Green Goods and Services (GGS). |
| Green Technologies and Practices  | Returns headlines from the Green Technologies and Practices (GTP) survey, a special survey of business establishments designed to collect data on establishments' use of green technologies and practices and the occupations of workers who spend more than half of their time involved in green technologies and practices. (Note: The Green Technologies and Practices program has been eliminated.) |
| International Comparisons of Hourly Compensation Costs in Manufacturing  | Returns headlines about U.S. compensation costs compared to those of various other nations. (Note: The International Labor Comparisons program has been eliminated.) |
| Job Openings and Labor Turnover Survey  | Returns headlines about changes in the number of job openings in the U.S. per month.  |
| Labor Force Characteristics of Foreign-Born Workers  | Returns headlines about the unemployment rate for native and foreign-born workers in the U.S.  |
| Local Area Unemployment Statistics | Returns monthly and annual data about employment, unemployment, and labor force. 
To use this report, you *must* enter a registration key in the **Credentials** pane. For more information, see "Prerequisites," above. |
| Major Work Stoppages (Annual)  | Returns annual headlines about the number of strikes and lockouts in the U.S. |
| Mass Layoffs (Monthly)  | Returns monthly headlines about mass layoff actions in the U.S. (Note: The Mass Layoff Statistics program has been eliminated.)   |
| Metropolitan Area Employment and Unemployment (Monthly)  | Returns monthly headlines about employment and unemployment in U.S. metropolitan areas.  |
| Multifactor Productivity Trends  | Returns the percent change in private nonfarm business sector multifactor productivity in the U.S.   |
| Multifactor Productivity Trends for Detailed Industries  | Returns headlines about changes in productivity trends in the U.S.  |
| Multifactor Productivity Trends in Manufacturing  | Returns the percent change in multifactor productivity in the manufacturing sector in the U.S.  |
| Number of Jobs, Labor Market Experience, and Earnings Growth  | Returns headlines about the number of jobs held by U.S. workers during specific ranges of years.  |
| Occupational Employment and Wages  | Returns headlines about occupations in the U.S., such as the occupations with the largest employment, mean wages across the U.S., the highest paying occupational groups, etc. |
| Occupational Employment and Wages in Green Goods and Services  | Returns headlines about U.S. occupations in establishments that receive all their revenue from Green Goods and Services (GGS).  |
| Occupational Injuries and Illnesses (Annual)  | Returns annual headlines about the number of injuries and illnesses occurring in the workplace in the U.S.  |
| Occupational Outlook Handbook  | Returns publication information for the BLS' Occupational Outlook Handbook.  |
| Persons with a Disability: Labor Force Characteristics  | Returns headlines about employment for individuals with a disability in the U.S. |
| Producer Price Index  | Returns headlines about the average change over time in the selling prices received by domestic producers for their output in the U.S. |
| Productivity and Costs  | Returns quarterly headlines about changes in nonfarm business sector labor productivity in the U.S. |
| Productivity and Costs by Industry: Manufacturing  | Returns annual percent change data for productivity in the manufacturing industry in the U.S.  |
| Productivity Costs by Industry: Selected Service-Providing and Mining Industries  | Returns annual percent change data for productivity in service-providing and mining industries in the U.S.  |
| Productivity Costs by Industry: Wholesale and Retail Trade, Food Services, and Drinking Places  | Returns annual percent change data for productivity in wholesale and retail trade, food services, and drinking establishments in the U.S.  |
| Quarterly Data Series on Business Employment Dynamics  | Returns headlines generated from the Quarterly Census of Employment and Wages program. These quarterly data series consist of gross job gains and gross job losses statistics from 1992 forward. These data help to provide a picture of the dynamic state of the labor market.   |
| Real Earnings  | Returns percent change data for real average hourly earnings for all employees in the U.S.   |
| Regional and State Employment and Unemployment (Monthly)  | Returns monthly employment and unemployment comparison data for U.S. states and regions.  |
| Regional and State Employment and Unemployment (Annual)  | Returns annual employment and unemployment comparison data for U.S. states and regions.   |
| Summer Youth Labor Force  | Returns annual percent change data for youth employment during the months of April to July in the U.S.   |
| U.S. Import and Export Price Indexes  | Returns monthly percent change data for U.S. imports and exports.   |
| Union Membership (Annual)  | Returns annual percent change data for union membership rates in the U.S.  |
| Usual Weekly Earnings of Wage and Salary Workers  | Returns median weekly earnings of full-time wage and salary workers by quarter in the U.S.  |
| Volunteering in the United States  | Returns annual percent change data for the volunteer rate in the U.S.  |
| Work Experience of the Population (Annual)  | Returns annual headlines about work experience in the U.S., including the proportion of workers who worked full time, the number of individuals who looked for work but could not find it, unemployment rate, etc.  |
| Worker Displacement  | Returns headlines about the number of workers displaced from their jobs.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  


Best Practices
--------------


This connector provides predefined metrics of well-known and common reports from the BLS. It is helpful to review the BLS report types and definitions to identify where appropriate data can be obtained.


Troubleshooting
---------------


If running the "Local Area Unemployment Statistics" report, make sure your API key is valid.


FAQ
---


##### How can I view other reports without a registration key?


You do not need a registration key to view other reports. Click Connect to skip adding a registration key.


##### Can this connector pull custom fields?


No.


##### How frequently will my data update?


As often as needed.

