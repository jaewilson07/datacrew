

Intro
-------

WordPress is a blog web hosting service provider used by more than 40% of Internet bloggers. Use Domo's WordPress connector to retrieve data on blog posts, comments, likes, followers, and more. To learn more about the WordPress API, visit their page (

https://developer.wordpress.com/docs/api/

).


**Note:**
 This connector is used to retrieve data from

WordPress.com

,
 *not*

WordPress.org

. The essential difference between these is that with

WordPress.org

, you host your own site, whereas with

Wordpress.com

, the hosting is done for you. For a more in-depth explanation of these differences, visit

https://ithemes.com/tutorials/wordpress-com-vs-wordpress-org/

.


 You connect to your WordPress account in the Data Center. This topic discusses the fields and menus that are specific to the WordPress connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Connector

.


 Prerequisites
---------------


 To connect to your WordPress account and create a DataSet, you must have the username and password you use to log into WordPress. Alternatively, you can login using your Google or Apple credentials.

Connecting to Your WordPress Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the WordPress Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Connector

.

##
 Credentials Pane

The Domo WordPress connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing WordPress accounts in Domo) to open the WordPress OAuth screen where you can enter your WordPress credentials. Once you have entered valid WordPress credentials, you can use the same account any time you go to create a new WordPress DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into WordPress when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of WordPress.


###
 Details Pane


 This pane contains a primary

*Metrics**

menu, along with various other menus which may or may not appear depending on the metric type you select.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the WordPress

metric

you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Blog Following Status
  |
 Indicates whether the specified WordPress blog is following your blog.
  |
|
 Freshly Pressed Posts
  |
 Returns a list of Freshly Pressed posts.
  |
|
 Information on a Single Category
  |
 Returns information for a given category slug within a specified blog.
  |
|
 Information on a Single Tag
  |
 Returns information for a given tag slug within a specified blog.
  |
|
 Likes for a Post
  |
 Returns the number of likes for a given post in a given blog.
  |
|
 List of a Site's Categories
  |
 Returns a list of categories for a given blog.
  |
|
 Matching Posts
  |
 Returns a list of matching posts for a given blog.
  |
|
 Notification
  |
 Returns a list of your most recent notifications.
  |
|
 Posts from a Tag
  |
 Returns posts for a given tag slug.
  |
|
 Reblog Status for a Post
  |
 Returns the reblog status for a post within a given blog.
  |
|
 Recent Comments
  |
 Returns a list of recent comments for a given blog.
  |
|
 Recent Comments for a Post
  |
 Returns a list of recent comments for a post within a given blog.
  |

|
|
 Blog Address
  |
 Enter the URL of the blog you want to retrieve information for.
  |
|
 Slug Name
  |
 Enter the name of the category or tag slug you want to retrieve information for.
  |
|
 Post Title
  |
 Enter the title of the post you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Connector

.

