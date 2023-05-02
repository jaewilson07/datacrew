


 Dojo Becomes the Community Forums
------------------------------------

With the March 2023 release, we introduce the

Community Forums

, replacing what was known as the Dojo.


 You can find the Community Forums located within Help in Domo Central. With this rebrand, we've refreshed the UI and UX to make it easier to find


 the content you're looking for.

Social Groups

and recent

Event Recordings

are now available in the Community Forums.

New Features
---------------

These features are part of the March 2023 release.

##
 Microsoft Office Add-ins

The Domo add-ins for Microsoft 365 allow you to integrate your Microsoft Office products with Domo. Instead of manually moving data, you can now efficiently transfer data between Excel, Outlook, PowerPoint, Word, and Domo. For example, you can use the add-ins to import cards and DataSets into a Word document, or you can import data from an Excel spreadsheet into Domo.


 You can download

Domo for Office

(Excel, PowerPoint, and Word) and download

Domo for Outlook

by following these links. For more information, see the

Domo Add-ins for Microsoft 365 Installation Guide

and the

Domo Add-ins for Microsoft 365 Desktop Apps User Guide

.


 Enterprise customers can deploy the new Domo add-ins to their organization, allowing users to access the add-ins directly from their Microsoft 365 apps without having to install them. For more information, see the

Domo Add-ins for Microsoft 365 Enterprise Installation Guide

.


###
 Custom Attributes and List Attributes for Groups

In the
 **Governance**
 section of the
 **Admin Settings**
 , you can now use attributes to control dynamic group membership, such as assigning all users in a certain department or location to be part of a group that receives access to certain types of content. Domo admins can import the attributes from their organization's IdP to help automatically assign users to the correct groups.


 To learn more, see

Attributes

.

##
 Table Calculations

Table calculations allow you to display a value in the table as a percent of column total, part of a running total, or how it ranks against other values in the column, all without using Beast Mode calculations or DataFlows. Table calculations are available for Mega Tables and Pivot Tables.


 To learn more about table calculations, see

Table Chart

.

##


 New Chart Types


####
 Circular Sankey Chart

The circular Sankey chart builds on the original Sankey chart by capturing recursive concepts, which require flows that circle back to previous nodes. For more information, see our

Circular Sankey Chart

article.


####
 Slope Chart

A slope chart is a simple line visualization of a time period based on the period’s start and end points. This easy-to-read chart eliminates the clutter of intermediate points, allowing you to focus on the insights that matter. For more information, see our

Slope Chart

article.


####
 Variance Chart

Variance charts allow you to highlight the differences between two sets of data. For more information, see our

Variance Chart

article.


###


 New Domo Bricks

The following new Domo Bricks (formerly DDX Bricks) are available in the

Appstore

:

 Beast Mode Sample Brick
* Calendar with Input
* Four Widgets
* Gantt Brick
* HTML Organization Chart
* Phoenix All Columns Mega Table
* SugarForce
* To-Do Brick

New Premium Features
------------------------


###
 Domo Everywhere


####
 Publications


* Auto-subscriptions allow subscribing organizations to subscribe to all publications from a specified publishing organization and receive any published content automatically without having to accept publications individually.
* In conjunction with auto-subscriptions, new Default Sharing Rules allow a subscribing organization to push all publications from a specified publishing organization automatically to any number of users or groups.
* New sorting functionality allows you to see at a glance when you last updated a publication. You can also see if a publication has an error status and for which subscribers.


 To learn more, see

Publish Content to a Subscriber Organization

*.**

Programmatic DataSet switching is now available. For more information, see

DataSet Switching

in the developer portal.


 Domo Everywhere now supports publishing Domo Bricks.

##
 Cloud Amplifier

Cloud Amplifier (formerly Multi-Cloud) now integrates with the following third-party data warehouses at the listed levels:

 Snowflake - Read/Write
* Dremio - Read only


 See

Cloud Amplifier

in the Beta Features section below to see which other platforms we are working to integrate.

For more information about Cloud Amplifier and how to integrate Domo with your data warehouse, see the following articles:

 Cloud Amplifier Overview
* Register Snowflake with Cloud Amplifier
* Register Dremio with Cloud Amplifier


 Beta Features
------------------

These features are in beta as of the March 2023 release.

##
 Subset Processing

Subset Processing is in open beta. This feature is inside of Magic ETL and allows you to update only certain subsections of your data when needed, instead of the whole DataSet, saving time and increasing efficiency. You can create partitions in your data and select which partitions to update during processing.


 To learn more, see

Subset Processing in Magic ETL

.


 Follow this link to

join the beta

.

##
 Workflows

Workflows powerfully leverages other new products, including Code Engine, Queues, and Forms (all in open beta), to allow you to design and implement executable workflow processes with low code capabilities. You can start a workflow manually, through an Alert, through an approval flow, or on a timer. With Workflows, you can act on your data to solve for process automation, intelligent data pipelines, power app actions, and manual task management without relying on developers.


 To learn more, see our

Workflows Overview

.


###
 Code Engine

Code Engine is a Domo-native runtime environment that can execute JavaScript or Python code and interact with any feature inside or outside


 of Domo. Domo provides a general library of packages and functions for common integrations and services, but you can also create your own functions to use in your Domo instance. You can use a function from Code Engine in Workflows without having to write any code.


 To learn more, see

Code Engine

.


###
 Forms

The new Form Editor allows you to create and publish forms for customized manual interactions. You can integrate forms with a workflow so that when a workflow requires a manual task, a form generates automatically and renders to an end user. You can also send data to a workflow using a form, which allows you to reference the information on other steps.


 To learn more, see

Forms

.


###
 Queues

Queues allows you to organize manual tasks into different queues and control who can access them. You can configure a queue to display tasks for an individual or a group. Each task is associated with a form generated by a workflow. You can filter queues to view tasks by assignee or status, monitor queue volume, and customize layouts.


 To learn more, see

Queues

.


###


 Cloud Amplifier

In beta, Cloud Amplifier now supports the following third-party data warehouses at the listed levels:

 BigQuery - Read only
* Databricks - Read only
* Redshift - Read only


###
 Cards DomoStats Report

The new Cards DomoStats report allows you to view information about all cards in your instance including card type, description, whether it is locked, and the date it was last modified. To access the report, contact your CSM or AE to join the beta.


*If you are interested in joining the Beta for a specific feature, please reach out to your Domo Customer Success Manager (CSM) or Account Executive (AE). If you do not have contact information for your representative, contact Domo Support by email at

support@domo.com

.*

*Note:**
 Depending on the feature, you may be required to complete training before you can use it.

Need Support?
----------------

You can access the following resources:

 Search for a topic in the

Help Center

.
* Train in

Domo University

.
* Search for training apps in the

Appstore

.
* Get answers from the

Community Forum

.
* Contact Technical Support by entering a help ticket in the

Domo Support Portal.
* Reach out to your Domo Customer Success Manager (CSM) or Technical Consultant.

If you have feedback, please send it from within Domo.


 In the navigation header, select
 **More**
 >
 **Feedback**
 . In the modal that displays, choose
 **Product feedback**
 .

For more information about getting help, see

Getting Help

.

