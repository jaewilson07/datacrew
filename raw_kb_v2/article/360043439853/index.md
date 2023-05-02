

New features and enhancements
-------------------------------

Features and enhancements in this release include the following:

##
 New Data Center Enhancements

Domo's updated Data Center makes it easy to find, organize, manage, and clean up all your data, giving users—especially Major Domos—clarity and control over their data.

 Find the DataSets you're looking for so you can understand and take action on them. Use search facets such as date, number of cards, and owner. Use our new sort-by menu to sort by Name, Number of Cards, Update Date, and Status. And by choosing to sort either Ascending or Descending, you can quickly find that DataSet you need, or maybe all those old, unused DataSets you want to delete.
* Use our new tagging functionality to really up your organizational game. Once you have DataSets tagged to get a better understanding of your DataSets, you can find them quickly and easily. Use tags to show which DataSets are works-in-progress and which are marked to be deleted at a future date.
* Take bulk actions on DataSets. When you hover over an item, select the checkbox that appears on the left. Once you have them selected, you can delete, run, tag, or change owner on these DataSets in bulk. Try holding down the Shift key to select many DataSets at once.

Welcome to the new Data Center. Managing data has never been this much fun.


 For more information, see

Data Center Layout

.

##
 SSO for Everyone

Domo now includes tools that enable customers to quickly set up Single Sign-on (SSO) in their instance. SSO is widely considered the best way to access enterprise applications because it simplifies login, while improving management and security. But because of the complexity of SAML 2.0, managing organizational processes, and configuring Domo itself, setup can take a very long time. Now, with Domo's new SSO setup tools, you can confidently roll out SSO in a fraction of the time you could before. The two new tools are...

 **Metadata upload**
 . Using Metadata Upload, you can enter the URL for your identity provider. Domo then automatically retrieves its configuration information and digital certificate. Domo can provide information back to the identity provider as well. This is the easiest and most reliable way to configure your SSO.
 *Be aware that not all identity providers offer this service.*
* **Wizard**
 . A new wizard interface guides you through the difficult jargon and details of SSO configuration. The wizard offers context-based instructions for a number of leading identity provider services, including Okta, Ping, Microsoft Azure, Salesforce, and more.

For more information about SSO, see

Understanding and Configuring Domo Single Sign-On

.

##
 Date Annotations

You can add now add annotations to date items in any chart to provide the proper context for activity that took place on those dates. For example, you could add date annotations to a chart to help you remember why you had that great day of sales or how you were able to drive so much traffic over a particular weekend. These date annotations stay with their associated dates so your company knowledge stays with the data.


 Each annotation appears in an
 ****Annotations****
 sidebar, with a colored flag that allows users to quickly match the annotation with its associated data point.


 This functionality is available
 **only**
 for charts containing date/time data.

For more information, see

Adding Date Annotations

.

##
 Updated Licensing Manager

The
 **Licenses**
 page in the Admin Settings now gives you a quick view of the licenses you've already paid for as well as the number of "courtesy licenses"—the number of users in your company using Domo in excess of your paid license count. You can now pay for these courtesy licenses right from Domo by clicking the
 **Pay for Licenses**
 button. This opens the self-service payments flow, where you can pay using a credit card or request an invoice from Domo.


 From the
 **Licenses**
 page, you can also view all of the Social users in your instance. If you want to upgrade these users, you can do so right from this view. To help inform your decisions, Domo provides information about when these users last logged in, who they report to, and their department and job titles. Because social users can request upgrades to full licenses of Domo, you can also view the list of social users who have requested licenses. You can easily approve or deny any of these requests and specify the Domo role each person receives. You can also email requesters about your decisions.


 These new license management features help you get all your people collaborating in Domo—for the good of the company.

For more information about licensing, see

Adding User Licenses in Domo

.

##
 Mobile Help Center

To provide better self-service for mobile users of Domo, we have added a Help Center within our iOS and Android applications. From the Help Center you can access any of our help resources—Domo University, Dojo, Knowledge Base, Developer Portal, or Domo Support—without ever having to leave your mobile applications. To access the Help Center, simply swipe right from the home screen and tap on
 **Help Center**
 .

##
 Mobile Alert Details

To provide you with more context and information when sharing and viewing alerts, we have added a details screen for alerts on our iOS and Android applications. When viewing any alert on your mobile app you can tap into the alert to see the full details for that alert. You will be able to see who created the alert, the description, trigger history and alert criteria set for the alert.


###
 DataFlows Explain Plan

SQL explain plans are now available for both MySQL and Redshift DataFlows. Get a better understanding about how your SQL queries run on the server, allowing you to optimize your queries for the best possible performance. To show the explain plan for SQL in a transform or output DataSet, you simply open up that transform or output DataSet and select
 **Explain SQL**
 in the menu in the bottom right corner.

Use of explain plans is recommended for advanced SQL users only, as the generated steps are highly technical and complex.


 For more information about SQL DataFlows, see

Creating an SQL DataFlow

.

##
 Summary Number Alert Suggestions

Alerts help you unlock the full power of Domo. Now, alert suggestions in Analyzer make creating those alerts even easier. When you save a card with a summary number in Analyzer, you are prompted to set an alert on that summary number. This way, you are always informed on your business and updates in your data.

Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

***> Help Center****
 .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://university.domo.com
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal or by sending a Buzz message to

\support

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

