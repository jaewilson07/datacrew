

Intro
-------


 WordPress is a free and open-source content management system used for website management and blogging. Use Domo's WordPress connector to retrieve data from

WordPress.org

, such as lists of posts, pages, users, comments, and so on.

To learn more about the WordPress API, visit their page (

https://codex.wordpress.org/WordPress\_APIs

).


**Note:**
 This connector is used to retrieve data from

WordPress.org

not*

WordPress.com

. The essential difference between these is that with

WordPress.org

, you host your own site, whereas with

Wordpress.com

, the hosting is done for you. For a more in-depth explanation of these differences, visit

https://ithemes.com/tutorials/wordpr...wordpress-org/

.


 You connect to your

WordPress.org

account in the Data Center. This topic discusses the fields and menus that are specific to the WordPress Self-Hosted connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your

WordPress.org

account and create a DataSet, you must have the following:

 The host URL of your WordPress blog
* The username and password for your WordPress site

Connecting to Your

WordPress.org

Account
------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the WordPress Self-Hosted Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

WordPress.org

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host URL
  |
 Enter the host URL of your

WordPress.org

site.
  |
|
 Username
  |
 Enter the username you use to log into your WordPress admin account.
  |
|
 Password
  |
 Enter the username you use to log into your WordPress admin account.
  |


 Once you have entered valid

WordPress.org

credentials, you can use the same account any time you go to create a new WordPress Self-Hosted DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a menu from which you select a WordPress Self-Hosted report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the WordPress Self-Hosted report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Categories
  |
 Returns a list of WordPress categories.
  |
|
 Comments
  |
 Returns a list of comments made on posts in your site.
  |
|
 Media
  |
 Returns a list of media in your site.
  |
|
 Pages
  |
 Returns a list of pages in your site.
  |
|
 Posts
  |
 Returns a list of your posts.
  |
|
 Posts Categories
  |
 Returns a list of post categories.
  |
|
 Posts Meta
  |
 Returns a list of meta fields for posts.
  |
|
 Posts Revision
  |
 Returns revision data for posts in your site.
  |
|
 Posts Tags
  |
 Returns a list of tags you have used in posts.
  |
|
 Posts Types
  |
 Returns a list of post types.
  |
|
 Statuses
  |
 Returns a list of statuses in your site.
  |
|
 Tags
  |
 Returns a list of tags used in your site.
  |
|
 Taxonomies
  |
 Returns a list of taxonomies.
  |
|
 Users
  |
 Returns a list of users in your site.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

