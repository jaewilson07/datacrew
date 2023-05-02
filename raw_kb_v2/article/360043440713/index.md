


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Domo Everywhere: Public Embed

With the new Domo Everywhere: Public Embed feature, Domo card creators can publish their visualizations on public websites and social platforms. This opens the door for many companies who want to scale their data on other websites for others to self-serve themselves by answering business questions and getting access to data they never had before. You can also show off your data insights on blogs and social sites. Who doesn’t love interesting and beautiful content? With Domo Everywhere: Public Embed, data will never look so cool to so many people, whether on their mobile device or on the web.

If for security reasons you do not

want this functionality available to your employees, you can turn it off by going into
 **Admin Settings > Company Settings > Company Overview**
 then unchecking the box for "Publicly embed cards."

For paying customers, there is a 30-day trial when using this feature.


 Also be aware of the following when using this feature:

 Titles, drilldown, summary number, and the chart picker are all available when embedding cards publicly; however, filters are not yet available.
* For security reasons, the end-of-card table view is not available with this feature.
* Currently, KPI cards and custom apps can be publicly embedded. Other types of cards (notebook, document, etc.) also cannot be publicly embedded.

For more information, see

Sharing Cards Outside of Domo

.

##
 Domo Everywhere Screen in Admin Settings

In the Admin Settings, as an Admin-level user you can also keep track of all cards in your instance that have been publicly embedded. You do this in the new
 **Domo Everywhere**
 screen. In this screen you can view all of the following:

 The names of all publicly embedded cards
* The card owners
* The users who embedded the cards
* The embed links
* The link access, either public or disabled
* The number of public views
* The creation date of the embed links

This screen also includes an options menu from which you can update the link access for one or more links as well as change card owners.

For more information, see

Admin Settings Layout

.

##
 User-Level Languages

Domo has just released a User Language setting that enables users to use Domo in their preferred language. This brings yet another level of personalization to the already highly-customizable platform.


 With the addition of the User Language setting, new and existing users can easily work within Domo in the language that they feel the most comfortable. With this feature, managers and team leaders can improve their teams' overall operational efficiency and get even more value out of using Domo.


 Domo is launching the User Language feature with full support for five written languages: English, French, German, Japanese and Simplified Chinese. The Domo platform is prepared to scale to any number of languages to support Domo's steady international expansion.

For more information, see

Configuring Languages in Domo

.

##
 Connectors Details Pages in Appstore

Each connector now includes an Appstore details page that shows you the version number, release notes, details on what is needed to authenticate, a rating on how difficult it is to configure, a list of the reports with a description of what each one contains, common questions with answers, and any related apps, Quickstarts, or other connectors. There is even a place for you to input reviews of a connector and share information about your experience with others. This interface gives you the ability to self-serve connectors like never before and start feeling good about your data in Domo from the moment you connect.


 Using this new feature is as easy as using the Appstore. Log in to Domo, open the Appstore and search for a connector. Once you find the one you want, as soon as you click on the results in your search you will see all the new details for the connector.

For more information, see

Appstore Layout - Connectors Tab

.

##
 Alert Sharing with Social Users

Sharing alerts helps you create business alignment by providing a common understanding on critical data conditions. With no added cost to the business, you can now share any alert with team members who don't yet have a license in Domo to get everyone on the same page.


 By adding someone to an alert, Domo will now automatically create a free social user license and notify that person whenever the alert is triggered.

When an alert is triggered, you need enough context to make decisions.  A new Alert view for free social users helps everyone get the information needed to take action.


###
 Smart Alerts

With smart alerts, you can now be notified when outliers appear in your data, without having to constantly change your alert criteria. These alerts can provide a greater understanding of the possible risks in your business.


 All of the following statistical alerts are now available:

 Sum
* Average
* Minimum
* Maximum
* Standard deviation
* Variance
* Kurtosis
* Skewness

You can apply any of these options to any category or series item on the card and then specify a condition and value as usual. For example, if you wanted an alert to trigger whenever the variance of the "West Region" category increased by 5%, you would select
 **Variance of**
**> West Region**
 in the
 **Metric**
 menu and
 **Increases by (+%)**
 in the
 **Meets this condition**
 menu, then enter

5

in the
 **For this value**
 menu.

For more information about creating alerts, see

Creating a Custom Alert for a KPI Card

.

##
 File Upload Connector

Use the File Upload connector to pull both Excel and CSV spreadsheet data into Domo and begin making decisions faster. This connector combines all of the functionality of our existing Excel and CSV connectors into a single simple-to-use interface.

For more information, see

File Upload Connector

.

##
 Help Results in Search

With the new Global Search Help results feature, you can quickly find relevant help articles in one central location. Simply enter a keyword for a feature or topic you want to know more about, and if any Knowledge Base articles have been written on that topic, they will pop up in your results, under the "Help Center" category. From there, all you have to do is click on the desired result, and the article will open directly in Knowledge Base.

For more information, see

Searching in Domo

.

##
 Send Emails to Buzz

With the new Send Email to Buzz capability, you can now easily move slow-moving, long email threads to Buzz and take advantage of the clear context visibility and speed to collaborate that Buzz provides. You don't have to wait for responses in a slow-moving email chain anymore. Now you can forward any email thread to Buzz and have all the collaborators, context, and attachments be used to kickstart a real time conversation. They simply obtain a unique email address for themselves from Buzz and use it as they Reply To or Forward any email thread from their inbox.

For more information, see

Importing an Email Thread into Buzz

.

##
 Improved Appstore Power-Up Experience

The deploy process for apps in the Appstore has been updated to provide a quicker and more pleasing experience. New improvements include the following:

 New options available after you set up an app with sample data:
 **Assign to Data Specialist**
 and
 **Do It Yourself**
 . If you choose
 **Assign to Data Specialist**
 , you can select a user in your company's Domo and send them an email to inform them about the new assignment.
* Progress gauges for the deployment. Two new graphics show you how close you are to getting your data connected.
* Simplified process for powering up Card Builder apps. One pane lists all of the columns in your selected DataSet and another shows the columns necessary to power the app. You simply drag columns from the DataSet pane onto the matching columns in the app pane. That's all there is to it. If data types do not match between columns, those columns cannot be matched.

For more information, see

Deploying Apps from the Appstore

.

##
 New Self-Service Connectors

This month we have polished and released another 103 connectors that are now available to all customers in their Domo account. These connectors are self-service, so you no longer need to contact support to get help powering them up. A partial list of these connectors is as follows:

 Dr. Chrono
* Tout
* Simply Measured
* Sprinklr
* Reddit
* Huffington Post Pollster
* Jive
* Box Governance
* Informix SSH
* Github
* Hipchat
* Cybase SSH
* Oracle SSH
* Mist
* Openfire
* Changepoint
* 10k'
* Sugar CRM OAuth

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

