---
title: Marketo Dashboard App
url: https://domo-support.domo.com/s/article/360042933894
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042933894](https://domo-support.domo.com/s/article/360042933894)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004183
views: 2,168
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Marketo provides tools for modern marketers, including automation, engagement, personalization, and budget management. The Marketo Dashboard gives you a quick look at key marketing activities and metrics, including lead trends, overall clickthrough rate, conversions, email opens, sends, bounces, and engagement.


Requirements and Notes
----------------------


Marketo REST API required.  
Account credentials requirements:


* Client ID
* Client Secret
* Endpoint URL
* Identity URL


Daily API Quota: 10,000 API Calls.  
Rate Limit: 100 API calls in a 20 second window.  
Pulls available data for the last 30 days.


Usage
-----


* Executive Pulse: A few metrics to stay informed


	+ Lead Priority
	+ Click-Through Rate
	+ Emails
	+ Leads Trend
	+ Conversions
* Deliveries and Bounces: Grow your email list without hurting your deliverability


	+ Deliveries
	+ Bounce Rate
	+ Top 20 Bounced Emails
	+ Top 10 Engaging Emails
	+ CTOR
	+ Opens
	+ Most Clicked Links
	+ Form Fills
	+ Unsubscribes
* Lead Breakdown: Where are your leads coming from?


	+ Leads by Industry
	+ Leads by Job Title
	+ Leads by Source
	+ Leads by State
	+ Leads Details


Authentication
--------------




| Credential | Description |
| --- | --- |
| Client ID | This is the Marketo Client ID generated during the creation of your custom service. |
| Client Secret | This is the Client Secret generated during the creation of your custom service. |
| Endpoint URL | This is the "rest" endpoint URL provided when you created a custom service. For example: [https://100-AEK-913.mktorest/com/rest](https://100-AEK-913.mktorest/com/rest "https://100-AEK-913.mktorest/com/rest") |
| Identity URL | This is the the "identity" URL provided when you created a custom service. For example: [https://100-AEK-913.mktorest.com/identity](https://100-AEK-913.mktorest.com/identity "https://100-AEK-913.mktorest.com/identity") |


Dashboard Reports
-----------------


For report descriptions, see Marketo Connector.




| Report | Schedule Update Setting | Parameters | Selection |
| --- | --- | --- | --- |
| Leads by Date (Standard Fields) | Replace | Report | Leads by Date Modified (with standard Marketo fields) |
| Days Back | 30 |
| Clicks, Bounces, Opens, Form Fills, Sends | Replace | Report | Leads’ Activities |
| Activity Type | Click Email, Click Link, Click Sales Email, Click Shared Link, Email Bounced, Email Bounced Soft, Email Delivered, Fill Out Form, Open Email, Send Email |
| Days Back | 30 |
| Unsubscribes | Replace | Report | Leads’ Activities |
| Activity Type | Click Email, Convert Lead, Email Delivered, Open Email, Unsubscribe Email |
| Days Back | 30 |


