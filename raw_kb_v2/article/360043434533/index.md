

Intro
---------

Meetup is an online social networking portal that facilitates offline group meetings in various localities around the world. Use Domo's Meetup connector to retrieve data about all aspects of Meetup meetings, including groups, ratings, topics, events, and so on. To learn more about the Meetup API, visit their page (

http://www.meetup.com/meetup\_api/

).


 The Meetup connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Meetup account in the

Data Center

. This topic discusses the fields and menus that are specific to the Meetup connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector helps you facilitate group meetings in various locations and find and join groups.
  |
|
**Primary Metrics**
 | * Events
* Ratings
* Followers
* Engagements
 |
|
**Primary Company Roles**
 | * Public relations
* Social media reps
* Recruiting
 |
|
**Average Implementation Time**
 |
 2 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------

This connector works best with the "Replace" update method if you are interested in recent data.


 Prerequisites
---------------

To connect to your Meetup account and create a DataSet, you must have the following:

 The email address you entered when you signed up for Meetup
* Your Meetup password

Alternatively, you can log into your Meetup account using your Facebook or Google credentials.


 Connecting to Your Meetup Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Meetup Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Meetup connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Meetup accounts in Domo) to open the Meetup OAuth screen where you can enter the email address you entered when you signed up for Meetup, along with your Meetup password. You can also connect using Facebook or Google credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Meetup DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Meetup when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Meetup.


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
 Select a Meetup report. The following reports are available:


|  |  |
| --- | --- |
|
 Activity Feed
  |
 Retrieves the activity feed for the user's groups. All parameters are optional.
  |
|
 Categories
  |
 Returns a list of Meetup group categories.
  |
|
 Cities
  |
 Returns a list of Meetup cities. All parameters are optional. If you run this report without entering location information, it returns information about the authenticated user's location.
 * **Latitude**
 and
 **Longitude**
 parameters must be used in combination, with or without
 **Radius**
 .
* If a
 **State**
 is entered, you must also enter a
 **Country**
 .
 |
|
 Comments
  |
 Returns comments for a group. One of the two parameters is required.
  |
|
 Dashboard
  |
 Returns a dashboard of aggregated Meetup information for the authenticated user.
  |
|
 Discussion Boards
  |
 Returns discussion board information for a given group. The
 **GroupURL**
 parameter is required.
  |
|
 Events
  |
 Returns a list of events.
 *One*
 of the following parameters is required:
 * **Event ID**
* **Group ID**
* **Group URLName**
* **Member ID**
* **RSVP**
* **Venue ID**
 |
|
 Group Venues
  |
 Returns venues a group has recently hosted events at. The
 **Group URL**
 parameter is required.
  |
|
 Groups
  |
 Returns a list of groups based on specified criteria. At least one of the following parameters or combinations of parameters is required:
 * **Country, City, State**
* **Group ID**
* **Group URLName**
* **Latitude and Longitude (with Radius optional)**
* **Member ID**
* **Organizer ID**
* **Zip**
 |
|
 Members
  |
 Returns members of a specified group. At least one of the following parameters is required:
 * **Group ID**
* **Group URLName**
* **Member ID**
* **Service**
 |
|
 Open Events
  |
 Returns recent and upcoming public events hosted by Meetup groups. The search window is the past month through the next three months. Only Meetups with three or more RSVPs are included. At least one of the following parameters or combinations of parameters is required:
 * **Category**
* **Country, City, State**
* **Latitude and Longitude**
 (with
 **Radius**
 optional)
* **Text**
* **Topic**
* **Zip**
 |
|
 Open Venues
  |
 Returns a list of open venues matching the specified criteria. At least one of the following parameters or combinations of parameters is required:
 * **Country, City, State**
* **Group URLName**
* **Latitude and Longitude**
 (with
 **Radius**
 optional)
* **Text**
* **Zip**
 |
|
 Photo Albums
  |
 Returns photo albums associated with Meetup groups. At least one of the following parameters is required:
 * **Event ID**
* **Group ID**
* **Photo Album ID**
 |
|
 Photo Comments
  |
 Returns comments on Meetup photos. The
 **Photo ID**
 parameter is required.
  |
|
 Photos
  |
 Returns photos matching the specified criteria. At least one of the following parameters is required:
 * **Event ID**
* **Group ID**
* **Group URLName**
* **Member ID**
* **Photo Album ID**
* **Photo ID**
* **Tagged**
 |
|
 Profiles
  |
 Returns member profile information. At least one of the following parameters or combinations of parameters is required:
 * **Group ID**
* **Group URLName**
* **Member ID**
 |
|
 Ratings
  |
 Returns event ratings. The
 **Event ID**
 parameter is required.
  |
|
 Recommended Group Topics
  |
 Returns recommended topics based on a text search or other topics. At least one of the following parameters is required:
 * **Text**
* **Other Topics**
 |
|
 Recommended Venues
  |
 Returns venues Meetup finds relevant to you. All parameters are optional. If you run this report without entering location information, it returns information about the authenticated user's location.


 The
 **Latitude**

and
 **Longitude**
 parameters must be used in combination, with or without
 **Radius**
 .
  |
|
 RSVPs
  |
 Returns RSVPs by event. The
 **Event ID**
 parameter is required.
  |
|
 Topics
  |
 Returns Meetup topics. All parameters are optional.
  |
|
 Venues
  |
 Returns a list of venues matching specified criteria. At least one of the following parameters is required:
 * **Event ID**
* **Group ID**
* **Group URLName**
* **Venue ID**
 |


 |
|
 Country
  |
 Enter the two-letter ISO code for the country you want to retrieve information for. For a list of current ISO codes, see

https://countrycode.org/

.
  |
|
 Event ID
  |
 Enter the ID numbers of events you want to retrieve information for, separated by commas. You can find the ID for a specific event by running the
 **Events**
 report.
  |
|
 Group ID
  |
 Enter the ID numbers for groups you want to retrieve data for, separated by commas. You can find the ID for a specific group by running the
 **Groups**
 report.
  |
|
 Group URLName
  |
 Enter the URLName for the group you want to retrieve data for. This is the name of the group as it appears in its Meetup URL. For example, for the Meetup URL


 www.meetup.com/Fiction-Writers-Group/


 , the

Group URLName

is "Fiction-Writers-Group." You can pull data for multiple groups by entering all of the URLNames separated by commas.
  |
|
 Latitude
  |
 Enter the latitude of the location you want to retrieve data for. The latitude must be in signed degrees format:

DDD.dddd.

Example:

40.63

. Compass directions and degree symbols (º) are not allowed. This parameter
 *must*
 be combined with a longitude (in the
 **Longitude**
 field) to work.


 When you enter latitude and longitude coordinates, by default all locations within 50 miles are returned. For example, if you entered the coordinates for Washington, D.C. (38.91 and -77.02), the search would also return results for Baltimore, Maryland (39.29 and -76.62). You can change this default behavior by entering the desired number of miles in the
 **Radius**
 field.
  |
|
 Limited Events
  |
 Select
 **true**
 to include limited event information for private groups that wish to expose only a small amount of information about their events. Otherwise select
 **false**
 .
  |
|
 Longitude
  |
 Enter the longitude of the location you want to retrieve data for. The longitude must be in signed degrees format:
 `DDD.dddd.`
 Example:

-77.02.


 Compass directions and degree symbols (º) are not allowed. This parameter
 *must*
 be combined with a latitude (in the

Latitude

field) to work.


 When you enter latitude and longitude coordinates, all locations within 50 miles are returned. For example, if you entered the coordinates for Washington, D.C. (38.91 and -77.02), the search would also return results for Baltimore, Maryland (39.29 and -76.62). You can change this default behavior by entering the desired number of miles in the
 **Radius**
 field.
  |
|
 Min Groups
  |
 Enter the minimum number of groups that have hosted locations at this venue.
  |
|
 Member ID
  |
 Enter the IDs of the members you wish to retrieve information for, separated by commas. You can find this by clicking the member's username in the member list. The long number that appears at the end of the URL is the user ID. For example, in the URL


 http://www.meetup.com/Fiction-Writer...rs/1304972618/


 , the member ID is "1304972618."
  |
|
 Organizer ID
  |
 Enter the organizer ID number of the group you want to retrieve information for.
  |
|
 Other Topics
  |
 Enter a comma-separated list of other topics to inform recommendations.
  |
|
 Photo Album ID
  |
 Enter the ID numbers of photo albums you want to retrieve information for, separated by commas.  You can find this by opening the photo album in Meetup. The long number that appears at the end of the URL is the photo album ID. For example, in the URL


 www.meetup.com/Fiction-Writers-Group/photos/1208034


 , the photo album ID is "1208034."
  |
|
 Photo ID
  |
 Enter the ID numbers of photos you want to retrieve information for, separated by commas. You can find this ID number by opening a photo in Meetup. The long number that appears at the end of the URL is the photo ID. For example, in the URL

http://photos3.meetupstatic.com/phot...\_20619228.jpeg

, the photo ID is "20619223."
  |
|
 Query
  |
 Enter a search term to retrieve filtered data for that search term. For example, if you entered
 **Phoenix**
 , the report would retrieve data that includes the term
 **Phoenix**
 .
  |
|
 Radius
  |
 Enter the number of miles from a specified latitude-longitude location to retrieve data for. For example, if you specified the coordinates for Dallas, Texas in the
 **Latitude**
 and
 **Longitude**
 fields, then entered

75

for
 **Radius**
 , your report would return data for all locations within 75 miles of Dallas. If you leave this field blank, a default radius of 50 miles is used.
  |
|
 Role
  |
 Select
 **Leaders**
 if you want to return only profiles for leaders; otherwise select
 **All**
 .
  |
|
 RSVP
  |
 Select the RSVP status of events you want to retrieve information for.
  |
|
 Search
  |
 Enter a search string to return topics related to that search string. Separate search keywords with
 **+**
 .
  |
|
 Service
  |
 Enter the name of a service, specified as
 **servicename:identifier**
 . This matches users by the external services they've linked to their member accounts. For example,
 **service=twitter:@MeetupAPI**
 locates any member account that lists @MeetupAPI as its Twitter name. You can enter multiple services separated by commas. Facebook identifiers should be provided as numeric values.
  |
|
 Status
  |
 For the
 **Events**
 report, select the event status to retrieve information for. For the
 **Profiles**
 report, select the member status to retrieve information for.
  |
|
 Subdivision
  |
 Enter the ISO 3166-2 country subdivision code for the region you want to retrieve data for. For the United States, states are the subdivision, so 2-letter state codes would be used (such as
 `TX`
 for Texas); for Canada, two-letter province codes are used (i.e.
 `ON`
 for Ontario; and so on.


 For listings of ISO 3166-2 codes for all countries, go to

https://en.wikipedia.org/wiki/ISO\_3166

then click the link for the desired country in the ISO 3166-2 section near the bottom of the topic.
  |
|
 Tagged
  |
 Enter the ID numbers of tagged members you want to retrieve information for, separated by commas. You can find a member's ID number by clicking his or her username in the member list. The long number that appears at the end of the URL is the member ID. For example, in the URL


 http://www.meetup.com/Fiction-Writer...rs/1304972618/


 , the member ID is "1304972618."
  |
|
 Text
  |
 Enter text to retrieve results containing that text. By default, text strings are separated by OR. For groups with combined terms, use
 **AND**
 . For example:
 **Fiction AND Writers**
 to return groups containing the term "Fiction Writers."
  |
|
 Text Format
  |
 Select the desired text format, either plain or HTML.
  |
|
 Topic
  |
 Enter the topic you want to retrieve data for.
  |
|
 Topic Name
  |
 Enter a topic name to return topics that match that name (e.g.

Digital Photography

).
  |
|
 Venue ID
  |
 Enter the ID numbers of venues you want to retrieve information for, separated by commas. You can find the ID for a specific venue by running the
 **Venues**
 report.
  |
|
 Zip
  |
 Enter a zip code to retrieve data for that area.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Check your authentication and configuration settings.

