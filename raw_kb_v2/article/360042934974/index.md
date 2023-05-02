


 New Features and Enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Certified Content

The more people you bring into Domo, the more people you have in your company making good business decisions. But how can you be sure that the content you're all looking at is the same? How do you know if you brought in the right data? Introducing certified content in Domo.


 Using the power of Certification Center, you can now certify your cards so your users know which content has been approved, just by looking at the card. Certified content gives your business the flexibility to customize certification to the specific needs of your company. This means that when your users see a certification badge, it’s been through a unique process tailored to your unique needs.


 Certifying a card is as easy as choosing
 **Request certification**
 from the wrench menu, selecting the appropriate certification process, and clicking
 **Submit**
 .


 While a card is in the approval process, a badge will appear on the card so users can check the status of the certification. Because it’s powered by Certification Center, anyone in the approval chain can send the request back if any changes need to be made. Once the card has been through the approval process, it will receive a certification badge so everyone knows they can and should make business decisions based off this card.


 Certified content in Domo. Not just content, but data you can bet your company on.

For more information, see

Certifying Content

.

##
 Data Science and Scripting Actions in ETL

Data Science actions are now available by request in ETL. Domo has made it possible for every data owner to leverage powerful data science functions in their DataFlows without the need to be an expert in data science modeling languages. This means you can enhance your data with powerful analytics just by adding the desired ETL action.


 The following data science functions/methods are available:

 Classification (including Random Forest Classification and Naive Bayes)
* Clustering (including K Means and K Median)
* Forecasting (including ARIMA)
* Multivariate
* Outlier Detection (including Standard Deviation and Mean Absolute Deviation)
* Prediction (including Linear Regression and Random Forest)

In addition to all of the above, Python and R scripting actions are also available.

Due to their complexity, Data Science and Scripting actions are currently available only by request. Please reach out to your CSM if you are interested in adding these actions to your company Domo instance.


 For more information, see

ETL Actions: Scripting

.

##
 Workbench 5 Beta Release

We are excited to announce that a brand new version of Workbench is going into an OPEN BETA release on October 23rd. This version will provide a cleaner, easier-to-navigate user interface and a
 **Home**
 screen that shows you the status of all of your jobs (shown below).

For more information, see

Connecting to Data Using Workbench 5

.

##
 Insights and NLG Analysis

Businesses collect massive amounts of data to inform their decision making. Using the story that the data tells them, business leaders are able to make critical decisions that impact their business. However, trying to find that story gets increasingly difficult as the size of the data grows at exponential rates, and the data changes every second.


 Now Domo makes it easier than ever to find insights in your data.

 NLG (Natural Language Generation) Analysis uses natural language to tell you what is interesting or exceptional about your data. Where analysts have had to review data using statistical tools and write summaries as data changes, Domo’s narratives automatically expose statistical information and interesting trends about your data, no matter the size of the DataSet or the frequency of updates, delivered in a language every business user can understand.
* With the new Insights feature, you can now view a number of automatically-generated alerts for any given card. Insights may be based on anomaly detection, discovered correlations, distribution mapping, and so on.

Both of these features are now available in a new
 **Insights**
 feed that appears on the right side of the Details view for any KPI card. You can tailor your feed to show you the most meaningful Insights and NLG Analyses by rating each one using a "thumbs up" or "thumbs down" icon.

For more information, see

KPI Card Details View

.

##
 Alert Improvements


####
 Contextual Alerts

Using Personalized Data Permissions is a great way to filter your data for different users. But just because it's useful doesn't mean it needs to be complex. With Contextual Alerts, by default any Alert you create automatically analyzes all the PDP policies that apply to the subscriber and notifies them accordingly. You no longer have to select specific policies to apply.

For more information, see

PDP and Alerts

.

###
 Filter Support for Alerts

Now when you set filters on either a page or card, those filters are honored when you go to create an alert on that page or card. A new option appears in the Create Alert Wizard that lets you choose whether or not to set the alert on the filtered view of the card. You can find this option selected by default when you create an alert from a card or page on which filters have been applied.

For more information, see

Creating a Custom Alert for a KPI Card

.

###
 Disabled Alerts

Instantly learn when alerts are broken as well as how to correct the problem and get those alerts back up and running again. When an alert gets into a broken state, it becomes disabled and shows up in red. It also gives you clear directions on how to solve the problem.

##
 Payment Method Management

Users can now instantly gain access to the full features of Domo simply by entering their billing information in Domo. This feature enables trial users to upgrade to full Domo and also enables existing customers to add Domo licenses at will. Domo accepts any form of payment card as well as corporate invoicing from directly in the product.


 Self-service payment is now available for all users and all platforms. Freemium users can access the feature by clicking on the
 **Buy Full Domo**
 button or by clicking on any of the locked features. Administrators of existing instances can add users to their instance by clicking on
 **Licenses**
 in the Admin Settings.

##
 Help Center Updates

,The following improvements have been made to our Help Center:

 To enable you to more quickly find the Domo University resources, videos, Knowledge Base articles, and Dojo content you need, the Domo Help Center icon has been moved out of the

menu and into the top navigation bar.
* The navigation tiles in the Help Center have been updated to provide a cleaner and simpler experience. In addition, in the interest of making it easier to access our Video Library, a new "How-to Videos" tile has been added.

For more information, see

Getting Help

.

##
 JSON Webhooks

Our new JSON Webhook connector allows you to connect to data sources that push JSON-formatted data, such as IFTTT, Github,and Fitbit. Using JSON Webhooks, you can get access to real-time data from weather devices, vending machines, wearables, and more. The Webhook link includes a long-living single use token so anyone with the link can publish data to your DataSet.


 For more information, see

JSON Webhook Connector

.

##
 Ability to Disable Chart Preview

Save time editing your cards by turning off the new
 ****Auto preview****
 toggle in Analyzer. By default, any changes you make to a card in Analyzer are reflected instantly in the preview for that card. When you turn off
 ****Auto preview****
 , the card preview does not refresh until you click the
 ****Run Preview****
 button. Because you have control over when you refresh, you can choose when to apply your changes, resulting in a more efficient card-building experience.

For more information, see

Analyzer Layout

.

##
 DataFlow Scheduling

DataFlow scheduling allows you to schedule a day and/or time when a DataFlow will run. DataFlows that are configured with a schedule will only run when the scheduled time is due. Scheduling cannot be combined with the "run automatically" option.

For more information, see

DataFlow Schedules

.

##
 Mobile Instance Switching

Domo is pleased to announce another tool to ensure an uninterrupted experience when running your business from your phone: mobile app instance switching. Now no matter how big your company is or how many Domo accounts you have, you can easily access them all while on the go from the palm of your hand without having to log out and back in.


 Update to the latest version of the Domo iOS or Android application and you're all set.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking by clicking

in the top navigation bar .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://university.domo.com
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal or by sending a Buzz message to

/support

.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

***> Feedback****
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

