

Intro
-------


 Data.gov

is the home of the U.S. government's open data. You can use Domo's

Data.gov

connector to compile reports containing freely available government data. To learn more about the

Data.gov

API, visit their page (

https://www.data.gov/developers/apis/

).


 The

Data.gov

connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your

Data.gov

account in the Data Center. This topic discusses the fields and menus that are specific to the

Data.gov

connector user interface. General information for adding data sources, setting update schedules, and editing data source information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

Because

Data.gov

data is freely available, you do not need to create an account in Domo to access it. Hence, you do not need to enter credentials in the

Data.gov

connector page. However, there are many report types that require you to enter a

Data.gov

API key. You can obtain a free API key by going to

https://api.data.gov/signup/

and entering your first name, last name, and email address. The API key then appears on the screen. You can copy and paste this key as necessary in the Domo

Data.gov

connector interface.


 Creating a

Data.gov

report
----------------------------------

This section enumerates the options in the
 **Details**
 pane in the

Data.gov

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your Data Source**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 The Details pane contains a primary menu,
 **Report**
 , along with various other menus which may or may not appear depending on the report type you select.

Menu

|

Description

|
| --- | --- |
|

Report

|

Select a

Data.gov

report. The following reports are available:

  |  |
| --- | --- |
|

Agency Priority Goal

|
 Returns a list of agency priority goals.
  |
|
 Amber Waves
  |
 Returns a list of articles related to farming and food production.
  |
|
 Agency
  |
 Returns detailed information about government agencies.
  |
|

Agencies

|
 Returns a list of names of government agencies.
  |
|
 ARMS
  |
 Returns valid survey codes for ARMS (Agricultural Resource Management Survey).
  |
|
 App & Technologies
  |
 Returns a list of accessible apps and assistive technologies.
  |
|
 Auctions
  |
 Returns data about GSA auctions.
  |
|
 Authors
  |
 Returns information about authors of government publications.
  |
|
 Average Wait Time Until Hearing Held
  |
 Returns the average time (in months) from the hearing request date until a hearing is held for claims pending in the Office of Disability Adjudication and Review's hearing offices. Allows users to estimate the amount of time they may

have to wait for a hearing to be held.
  |
|
 Broadband Providers
  |
 Returns information about broadband providers.
  |
|
 Building Systems
  |
 Returns information about building systems such as lighting, HVAC, etc.
  |
|
 Business Articles
  |
 Returns information about articles available for users of BusinessUSA.
  |
|
 Business Data
  |
 Returns information about different data assets users can access on BusinessUSA.
  |
|
 Business Events
  |
 Returns information about events users can view on BusinessUSA.
  |
|
 Business License Permits
  |
 Returns permits, licenses, and registrations needed to run a business.
  |
|
 Business Program
  |
 Returns information about programs users can access through BusinessUSA.
  |
|
 Business Services
  |
 Returns information about services users can access through BusinessUSA.
  |
|
 Business Success Stories
  |
 Returns information about success stories featured on BusinessUSA.
  |
|
 Business Tools
  |
 Returns information about tools featured on BusinessUSA.
  |
|
 Charts
  |
 Returns information about government charts, including chart names and URLs.
  |
|
 Content Pages
  |
 Returns information about content pages on Data.gov.
  |
|
 Convenience Contact Information
  |
 Returns convenience contact information for service providers, equipment manufacturers, schools and universities, and national and international

organizations.
  |
|
 Content
  |
 Returns content for fact sheets and User Voice questions.
  |
|
 Disability Types
  |
 Returns a list of disabilities, including the disability type name, ID, and description.
  |
|
 Drug Adverse Events
  |
 Returns information about undesirable effects of drugs reported to the FDA,

including serious side effects, product use errors, product quality problems, and

therapeutic failures.
  |
|
 Drug Labeling
  |
 Returns information about drug product labeling, such as ID, indications, recommended dosage, etc.
  |
|
 Drug Enforcement
  |
 Returns information about drug product recalls.
  |
|
 Device Adverse Events
  |
 Returns information about undesirable effects of medical devices reported to the

FDA.
  |
|
 Device Enforcement
  |
 Returns information about medical device recalls.
  |
|
 Data Products
  |
 Returns information about data products on Data.gov.
  |
|
 Events
  |
 Returns a list of past and upcoming disability-related events.
  |
|
 Foods Enforcement
  |
 Returns information about food recalls, including reason, distribution pattern,

product quantity, etc.
  |
|
 Food Dollar
  |
 Retrieves a collection of valid food dollar data table names and numbers.
  |
|
 Federal Contacts
  |
 Returns a list of federal agencies that provide accessibility-related services or information.
  |
|
 Hearing Office Workload Data
  |
 Returns information about pending, receipts, dispositions, and average processing time for each hearing office in the Office of Disability Adjudication and Review (ODAR).
  |
|
 Hearing Office Average

Processing Time Ranking Report
  |
 Returns ranking information for the Office of Disability Adjudication and Review (ODAR) hearing offices by the average number of days until the final disposition of the hearing request.
  |
|
 Indicators
  |
 Returns performance indicators for government agencies.
  |
|
 Loans Grants Search
  |
 Returns information about financial assistance programs for small businesses.
  |
|
 Materials
  |
 Returns a list of names and descriptions of building materials.
  |
|
 Opportunities
  |
 Returns information about grant opportunities for a given search query.
  |
|
 PCC Award
  |
 Returns information about PCC (Publicity Club of Chicago) Awards for a given state, zip code, or coordinates.
  |
|
 Products Mobile Devices
  |
 Returns information about mobile devices, such as brand, maker, model number, etc.
  |
|
 Products Manufacturer Mobile Devices
  |
 Returns a list of manufacturers of mobile devices.
  |
|
 Products Details Mobile Devices
  |
 Returns a list of accessibility features (with name and description) that are supported by a particular mobile device.
  |
|
 Products Features Mobile Devices
  |
 Returns a list of accessibility features (with name and description) that may be

supported by various mobile devices.
  |
|
 Products Regions Mobile Devices
  |
 Returns a list of regions where mobile devices may be available.
  |
|
 Products Search Mobile Devices
  |
 Returns a list of mobile devices based on a given search query (manufacturer, brand, or model).
  |
|
 Publications
  |
 Returns information about the last 100 publications posted on

Data.gov

, ordered by descending release date.
  |
|
 Petitions
  |
 Returns a list of petitions, with title, body, signature threshold, number of signatures needed, etc.
  |
|
 Products
  |
 Returns a list of products, with name, purchase URL, etc.
  |
|
 Real Property - Total Domestic

Office and Warehouse Square

Feet
  |
 Returns total domestic office and warehouse square footage for government agencies.
  |
|
 Real Property - Freeze the

Footprint Projects
  |
 Returns "Freeze the Footprint" data for government agencies.
  |
|
 Recalls
  |
 Returns information about product recalls.
  |
|
 Strategic Goal
  |
 Returns strategic goals for government agencies.
  |
|
 Strategic Objective
  |
 Returns strategic objectives for government agencies.
  |
|
 SAM Registrations
  |
 Returns public data about SAM registrations.
  |
|
 Services
  |
 Returns a list of services, with name, description, required products, etc.
  |
|
 States
  |
 Returns a list of states by which convenience contacts can be grouped.
  |
|
 Topics
  |
 Returns a list of topics on Data.gov.
  |
|
 Tags
  |
 Returns a list of search tags on Data.gov.
  |
|
 USA Jobs
  |
 Returns information about employment opportunities found on commercial job boards, mobile applications, and social media sites.
  |
|
 Video Programming Distributor
  |
 Returns contact information for various video programming distributors.
  |
|
 Workspaces
  |
 Returns a list of workspaces, including name and overview information.
  |
|
 White House Policy

Snapshots
  |
 Returns information about work the president has done since taking office and his/her plans for continuing progress.
  |


 |
|
 Agency Acronym
  |
 Enter the acronym for the agency for which you want to retrieve data. Example:

DHS

|
|
 Agency ID
  |
 Enter the ID for the agency for which you want to retrieve data. Example:

550

|
|
 API Key
  |
 Enter your

Data.gov

API key. For information about obtaining a

Data.gov

API key, see "Prerequisites" above.
  |
|
 Brand
  |
 Enter the brand name for which you want to retrieve data. Example:

Sony
  |
|
 Business Type
  |
 Select the business type for which you want to retrieve data.
  |
|
 Category
  |
 Select the category for which you want to retrieve data.
  |
|
 Content Type
  |
 Select the content type for which you want to retrieve data.
  |
|
 Country
  |
 Enter a country to retrieve information specific to that country. Example:

Germany
  |
|
 Data Source
  |
 Select the data source for which you want to retrieve data.
  |
|
 Date
  |
 Select the date for your report. The report will return records for this date only.
  |
|
 Disability ID
  |
 Enter the disability ID for which you want to retrieve data. Example:

3
  |
|
 End Date
  |
 Select the end date for your report. The report will return records created on or before this date. Pair with
 **Start Date**
 to include a range of dates in your report.
  |
|
 Entity Type
  |
 Select the entity type for which you want to retrieve data.
  |
|
 Group by State
  |
 Specify whether the list items should be broken down by state.
  |
|
 ID
  |
 Enter the ID for the entity for which you want to retrieve data. Example:

8
  |
|
 Job Title
  |
 Enter a job title to return job announcements with the specified title. Example:

Technical Writer
  |
|
 Latitude
  |
 Enter the latitude of the location for which you want to retrieve data. Example:

34.876011
  |
|
 Longitude
  |
 Enter the longitude of the location for which you want to retrieve data. Example:

-83.400856
  |
|
 Max Salary
  |
 Enter a maximum salary to return all jobs that have that salary or lower. Example:

72,000

. Pair with
 **Min Salary**
 to return data for the given range.
  |
|
 Min Salary
  |
 Enter a minimum salary to return all jobs that have that salary or higher. Example:

15,500

. Pair with
 **Max Salary**
 to return data for the given range.
  |
|
 Name
  |
 Enter the name of the entity for which you want to retrieve data. Example:

HVAC
  |
|
 Organization
  |
 Select the organization for which you want to retrieve data.
  |
|
 Petitions Created After
  |
 Select a date for your report. The report will return petitions created on or after this date. If you select a date here, you should not select a date for
 **Petitions Created Before**
 .
  |
|
 Petitions Created Before
  |
 Select a date for your report. The report will return petitions created on or before this date. If you select a date here, you should not select a date for
 **Petitions Created After**
 .
  |
|
 Product ID
  |
 Enter the ID of the product for which you want to retrieve data. Example:

716
  |
|
 Query
  |
 Enter a keyword or phrase to use to filter the data in your report.  Example:

bioinformatics
  |
|
 Radius
  |
 Enter the radius length in whole numbers from the specified latitude-longitude coordinates. Example:

2
  |
|
 Recall Query
  |
 Enter a query term to filter the data in your report. This filter handles word variants. For example, if you entered the term

choke

, the report would return items with the query term

choking hazard

.
  |
|
 Region
  |
 Enter the world region for which you want to retrieve data. You can choose from any of the following:


* Africa
* Asia Pacific
* Europe
* Latin America
* Middle East
* North America
 |
|
 Registration ID
  |
 Enter the registration ID for which you want to retrieve data. Example:

1459697830000
  |
|
 Request By
  |
 Specify how the report data is to be broken down.
  |
|
 Search Term
  |
 Enter a search term (manufacturer, brand, or model) to filter the data in your report.
  |
|
 Show Closed
  |
 Select whether closed items should be shown in your report.
  |
|
 Show Incomplete
  |
 Select whether incomplete items should be shown in your report.
  |
|
 Start Date
  |
 Select the start date for your report. The report will return records created on or after this date. Pair with
 **End Date**
 to include a range of dates in your report.
  |
|
 State Abbreviation
  |
 Enter the two-letter abbreviation of the U.S. state for which you want to retrieve data.
  |
|
 Type
  |
 Select a type to retrieve information specific to that type.
  |
|
 VPD Type
  |
 Select a VPD type to retrieve information specific to that VPD type.
  |
|
 Zip Code
  |
 Enter the 5-digit zip code for the location for which you want to retrieve data.

Example:

84765
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

