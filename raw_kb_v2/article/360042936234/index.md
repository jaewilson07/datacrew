


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Analyzer (formerly Card Builder)

Introducing the new Analyzer—data exploration, powerful analytics, insights, and a self-guided experience all in one place. As data continues to flow into businesses like never before and the breadth of different data sources increases, the new Analyzer is an analytic heaven for analysts to explore, discover, slice and dice, and empower others to stop making decisions with their gut and start making decisions with data.


 All of the following new and updated features are now available:


**User Interface**
 . We’ve added a beautiful new design with additional flexibility so you can be the driver of your own workspace, using the analytic tools you want when you need them.

For more information about the Analyzer user interface, see

Analyzer Layout

.


**Period-over-Period**
 . With the powerful and flexible Period-over-Period experience in Analyzer, you’ll be able to compare numerous time periods to see trends and comparisons. No other BI tool has an easier Period-over-Period experience. All you need is a date range, and your options are endless: Year over Year, Quarter over Quarter, Past 30 days, and many other options. Want to see a growth trend in your sales performance for the past few years, and add a variance percentage line along with that? Done and done. Measure the past 30 days vs any previous days? Compare monthly sales to the same day 4, 8, 12, even 52 weeks ago? We've got you covered. Analyzer makes the visualization of trends even easier.


 For more information about implementing Period-over-Period chart, including use cases, see

Period-over-Period Charts

.


**Quick Filters**
 . Quick Filters are pre-defined filters that live on a card to help guide and focus management to see results in specific areas. As analysts explore their data and find important insights, they want to share these answers with management. With Quick Filters, you now can easily create a self-guided experience for others to explore data on a card and answer questions for themselves. Quick Filters you set will appear on cards in both the desktop and mobile versions of Domo.

For more information about Quick Filters, see

Adding Filters to Your Chart - Applying Quick Filters

.


**Data Lineage**
 . Trusting your data is critical. As you find answers and explore your data, you need to be confident all the data is up-to-date and running smoothly. Since Domo can effectively bring all your data into one place as no other tool can, you may need to see all your data is combining correctly for true peace of mind. With the new Data Lineage in Analyzer, you can see the data is flowing correctly and on time without having to check the Data Center.

For more information, see

Viewing the Lineage of a DataSet in Analyzer

.


**Conditional Colors**
 . As analysts explore their data, it’s often important to have consistent colors in order to highlight exceptions. If, for instance, you want a specific company to be blue or red on a DataSet to more easily identify those trends spanning many charts, you would need the Conditional Color in Analyzer. This new feature enables you to see exceptions and trends with a consistent color—making analysis even easier.

For more information, see

Setting Color Rules for a Chart

.


**Data Table**
 . The new Data Table in Analyzer allows you to see and manipulate the data in all columns you have applied to your chart, along with any other unused columns you want to show. Changes you make to the data in the Data Table are reflected in your chart preview. Likewise, when you make changes to the chart using other tools such as filters and sorting, the data in the table is updated.

For more information, see

Understanding the Data Table in Analyzer

.


**60+ New Chart Types and Improved Table Card**
 . The new Analyzer includes over 60 new chart types. We’ve also enhanced table cards with colors, % to total, and sub totals. All of these inclusions enables more analysis and less paralysis.


 New chart types include the following:

 Vertical and horizontal Marimekko graphs
* Vertical and horizontal Overlay graphs
* Vertical Line graphs
* Vertical and horizontal Lollipop graphs
* 19 new Area graphs
* Data Science graphs (Predictive Modeling, Forecasting, Outliers, and XY Line)
* Nautilus & Nautilus Donut graphs
* Nightingale Rose graph
* Stream & Stream Funnel graphs
* 4 new maps—Italy, South Korea, Switzerland, and Indonesia

Here are screenshots of just a few of the new chart types available in Analyzer:

*Vertical Line Graph**


**Vertical Grouped Lollipop Graph**

*Predictive Modeling Graph**

*Nightingale Rose Graph**

*Improved Table (with subtotal rows)**

To watch a series of videos about the new chart types and properties included in this release, visit

August 2017 Analyzer Release -- New Chart Types and Properties Videos

.

##
 Snapshot Annotation

Let’s face it, data is messy. It's easy to feel overwhelmed and lost when trying to decipher data visualizations. Now you can clarify the chaos with the new Snapshot Annotation feature. Pictures are worth a thousand words, and probably more when working with data. Snapshot Annotations makes analytic life easier for everyone.


 With the Snapshot Annotation feature, you don’t need to use thousands of words to call out trends and insights. When you see a spike or trends in your data, you can now annotate on any card. Specifically, you can now draw free-form, place shapes, write text, and highlight, on any card— both on the web and on your mobile device. Then, once you’ve made things more clear, sharing annotated cards is seamless in Buzz. Everyone now can spend less typing and more time making business decisions.


 Analysts, Managers, Senior Execs, and all data consumers need tools to help craft their data story or to visually call attention to important trends and differences on their charts. Having annotation tools makes analytic life easier for everyone because it's more efficient to communicate with visual tools to help educate others.


 For more information about this feature, see

Taking Snapshots of Cards

.

##
 New Self-Service Connectors

This month we have polished and released another 18 connectors that are now available to all customers in their Domo account. These connectors are self-service, so you no longer need to contact support to get help powering them up. Here are the new connectors:


 Connector
  |
 Link to Knowledge Base article
  |
| --- | --- |
|
 Base CRM
  |
 Base CRM Connector
  |
|
 DataSet via Email (described in more detail below)
  |
 DataSet via Email Connector
  |
|
 Docebo
  |
 Docebo Connector
  |
|
 Dotmailer
  |
 Dotmailer Connector
  |
|
 GradLeaders
  |
 GradLeaders Connector
  |
|
 Indeed
  |
 Indeed Connector
  |
|
 Infusionsoft
  |
 InfusionSoft Connector
  |
|
 Kafka
  |
 Kafka Connector
  |
|
 Klaviyo
  |
 Klaviyo Connector
  |
|
 Mavenlink
  |
 Mavenlink Connector
  |
|
 Paydirt
  |
 Paydirt Connector
  |
|
 PostgreSQL SSH
  |
 PostgreSQL SSH Connector
  |
|
 Silverpop
  |
 Silverpop Connector
  |
|
 SmartRecruiters
  |
 SmartRecruiters Connector
  |
|
 Sportradar
  |
 Sportradar Connector
  |
|
 Teradata via ODBC
  |
 Connecting to ODBC Data in Workbench 5
  |
|
 The Trade Desk
  |
 The Trade Desk Connector
  |
|
 Treasure Data
  |
 Treasure Data Connector
  |


####
 DataSet via Email Connector

The Dataset via Email connector enables you to get your data into Domo quickly and easily by capturing and processing .xls, .xlsx, and .csv files that have been included as attachments to an email. When you configure this connector, it generates a unique email address that corresponds to your Dataset via Email DataSet in Domo. Once the email address is created, you can send the spreadsheet as an attachment to that email address. The connector will then process the email and update your data accordingly.


 For more information, see

DataSet via Email Connector

.

##
 Workbench UI Improvements


####
 List View

Workbench now includes a list view that allows you to search and sort DataSet jobs, see upcoming schedules, and organize jobs by status, giving better visibility into jobs to facilitate job management in an instance.


####
 Status Panel

The new Status Panel in Workbench provides you with better insights around when jobs are being run and allows you to make changes, pause, cancel and run jobs. The Status Panel will be visible from every job details page to give real-time information about job status.


###
 Rank & Window Functions in Magic ETL

Domo's Magic ETL tool now includes Rank & Window functions. These new functions enable you to rank and compare data without having to be familiar with complex SQL functions and syntax. These functions are available in Magic ETL in a new action tile called
 **Rank & Window**
 , which can be found in the
 **Edit Columns**
 section.


 The new Rank & Windows functions include all of the following:

 Rank
* Dense Rank
* Row Number
* Avg
* Count
* Sum
* Lag
* Lead


 For detailed information about each of these functions and step-by-step instructions for using them, see

ETL Actions: Rank and Window

.

##
 Self-Service Payments

Beginning August 10th, existing Domo customers will be able to add and pay for licenses right from within the Domo product. With this change, please be aware of the following:

 This will be rolled out over time, so some customers may not see this change right away.
* The price you see is based on your current contract.
* Tax is applied to the purchase price in the product.


###
 Mobile Page Filters

We have taken the powerful and complex page filters tool and released it to the mobile platform in an accessible and intuitive way. Any business user can immediately gain value. Whether you're an executive walking into one of your retail stores or a manufacturing manager looking at a specific product line, you can quickly filter your full page to find the story.


 Try it out for yourself. Navigate to any of your pages in Domo on mobile, tap into the menu, and filter away.


###
 Mobile Card/Page Sharing

Domo has introduced a simple way to collaborate even more easily while on your phone. Have an important card or page you need to share with an individual or your team? Do it now from your phone. As of today you can tap into any card or page and easily share it with others.

##
 Page API

With Domo’s Page public API, users can now automate the creation or duplication of pages and seamlessly update the page’s content. The ability to manage pages through the API gives you the ability to create systems and processes to easily share existing information and content inside a Domo page that can be tailored to any situation that arises.


 To begin developing with Domo’s Pages API requires little effort. Once you create authentication tokens in the developer portal’s

client section

, you can then explore the Page API functionality by following the steps within the

Page API Quickstart

guide or by downloading pre-built Page API examples from any of Domo’s official

SDK libraries

.

##
 Developer Sandbox

By obtaining a sandbox, developers can now quickly explore, iterate, and accelerate their development cycles on Domo’s APIs. A developer sandbox also empowers developers with a self-service tool to simulate scenarios with APIs to better understand and handle certain error conditions. This ultimately enables the creation of more resilient applications that can be confidently introduced into production environments.


 The option to obtain a developer sandbox is now available in Domo’s Developer portal,

https://developer.domo.com/dev-sandbox-request

.  After you submit a request for your sandbox, a new Domo instance is created automatically, and an invitation is sent to your email to activate your login.


 Once you activate your account, you will then be able to explore specific developer links in your Sandbox as well as leverage pre-built sample data, cards, and content to begin developing solutions.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

*> Help Center**
 .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://www.domo.com/university
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal, by sending a Buzz message to

\support

, or by emailing

support@domo.com

.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

*> Feedback**
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

