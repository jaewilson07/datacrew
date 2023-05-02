

Intro
-------

To learn more about the Tumblr API, visit their page (

https://www.tumblr.com/docs/en/api/v2

).


 You connect to your Tumblr account in the Data Center. This topic discusses the fields and menus that are specific to the Tumblr connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Retrieve usage and traffic metrics for your Tumblr account.
  |
|
**Primary Metrics**
 | * Followers
* Posts
* Likes
 |
|
**Primary Company Roles**
 | * Social media roles
* Analysts
 |
|
**Average Implementation Time**
 |
 A few minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------


###
 Scheduling Recommendations

The following reports work best with "Append" selected:

 Blog Info
* Blog Followers
* Blog Likes
* User Info
* All "Posts" reports

The following reports work best with "Replace" selected:

 All "Published Posts" reports


###
 Report Accessibility

The following reports can be accessed for any Tumblr page as long as you have Tumblr credentials:

 Blog Info
* Posts-Tagged
* All "Published Posts" reports.

The following reports can be accessed only for pages you own:

 Blog Followers
* Blog Likes
* Posts-Drafts
* Posts-Queued
* Posts-Submission
* User Info

Prerequisites
---------------

To connect to your Tumblr account and create a DataSet, you must have your Tumblr username and password.


 Connecting to Your Tumblr Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Tumblr Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Tumblr connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Tumblr accounts in Domo) to open the Tumblr OAuth screen where you can enter your Tumblr credentials. Once you have entered valid Tumblr credentials, you can use the same account any time you go to create a new Tumblr DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Tumblr when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Tumblr.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the (third-party connector) report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Blog-Followers
  |
 Retrieves a blog's followers.
  |
|
 Blog-Likes
  |
 Retrieves the publicly exposed likes from a blog.
  |
|
 Posts-Draft
  |
 Retrieves draft posts.
  |
|
 Posts-Queued
  |
 Retrieves queued posts.
  |
|
 Posts-Submission
  |
 Retrieves submission posts.
  |
|
 Posts-Tagged
  |
 Retrieves posts with tag.
  |
|
 Published Posts-All
  |
 Retrieves published posts.
  |
|
 Published Posts-Answer
  |
 Retrieves information for answer posts, such as blog name, URL, question and answer.
  |
|
 Published Posts-Audio
  |
 Retrieves information for audio posts, such as caption, player, plays, artist and more.
  |
|
 Published Posts-Chat
  |
 Retrieves information for chat posts, such as title, body and dialogue.
  |
|
 Published Posts-Link
  |
 Retrieves information for link posts, such as, title, URL, author and more.
  |
|
 Published Posts-Photo
  |
 Retrieves information for photo posts, such as, photos, captions, and more.
  |
|
 Published Posts-Quote
  |
 Retrieves information for quote posts, such as text and source.
  |
|
 Published Posts-Text
  |
 Retrieves information for text posts, such as title and body.
  |
|
 Published Posts-Video
  |
 Retrieves information for video posts, such as caption and player.
  |
|
 User Info
  |
 Retrieve the user's account information that matches the OAuth credentials submitted with the request.
  |


 |
|
 Host Name
  |
 Enter the unique host name of the Tumblr blog site you want to retrieve information for. Do
 *not*
 prefix with

http://

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Check your credentials
* Ensure there is sufficient activity in your Tumblr account to provide metrics.


