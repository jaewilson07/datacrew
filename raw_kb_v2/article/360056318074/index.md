

Intro
-------

The Domo Governance Datasets Connector provides information about the users, groups, DataSets, DataFlows, Pages, Cards, Beast Modes, and PDP policies in your Domo instance. Use this information together with data from DomoStats to find out how your organization is using Domo. Use the Domo Governance Datasets Connector to integrate your Domo Governance Datasets data in minutes.


 You import Domo Governance DataSets in the Data Center. This topic discusses the fields and menus that are specific to the Domo Governance Datasets connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To pull in Domo Governance DataSets using this connector, you need your Customer Name and Domo API Key.


 Connecting to Your Domo Governance Account
--------------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Domo Governance Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Domo Governance DataSets account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Customer
  |
 Enter your customer name. Your customer name is the part in the URL that before .

domo.com

. Ex: If your Domo instance is located at

https://some-customer.domo.com

, then your customer name is "some-customer".
  |
|
 Domo Access Token
  |
 Domo Access Token. See

Managing Access Tokens

for details.
  |

Once you have entered valid Domo Governance DataSets credentials, you can use the same account any time you go to create a new Domo Governance DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


**Important:**
 Using the Domo Governance DataSets will make the owner of the token show in the Activity Logs that they have visited every Card and Dashboard every day.

##
 Details Pane

This pane contains a primary
 ****Reports****
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Domo Governance DataSets report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Beast Modes
  |
 Contains the definitions of all beast modes in your Domo instance. The report is divided into two sections. The first section contains all beast modes saved to the dataset. The second section contains all beast modes that exist only on the card. If the beast mode is used in the card's summary number and also saved to the dataset, it will appear in this section as well.


****Fields****
 : Card ID, Card Title, Dataset ID, Dataset Name, Beast Mode ID, Beast Mode Name, Beast Mode Formula, Beast Mode Status, Beast Mode Saved to Dataset, Beast Mode Applied to Summary Number
  |
|
 Beast Modes with Fields
  |
 Similar to the Beast Modes report with an additional field. Contains the definitions of all beast modes in your Domo instance. The report is divided into two sections. The first contains all beast modes saved to the dataset. The second contains all beast modes that exist only on the card. If the beast mode is used in the card's summary number but is also saved to the dataset, it will also appear in this section. Field used indicates the field on which beast mode applied.


**Fields**
 : Card ID, Card Title, Dataset ID, Dataset Name, Beast Mode ID, Beast Mode Name,

Beast Mode Formula, Beast Mode Status, Beast Mode Saved to Dataset, Beast Mode Applied to Summary Number, Fields Used
  |
|
 Cards
  |
 Contains a listing of all cards in your Domo instance, who owns them, and what page(s) they reside on.


**Fields**
 : Card ID, Title, Card Type, Owner User ID, Owner Name, Page, Page ID, Last Modified Date/Time, Locked
  |
|
 Cards and Datasets
  |
 Contains a listing of all cards in your Domo instance, who owns them, and what page(s) they reside on. Also, tells you which datasets power the cards.


**Fields**
 : Card ID, Title, Card Type, Owner User ID, Owner Name, Page, Page ID, Last Modified Date/Time, Locked, Dataset ID, Dataset Name
  |
|
 Card Fields With Beast Modes and Drill Views
  |
 Contains a listing of all cards in your Domo instance, who owns them, and datasource on which cards are built and is beast mode applicable.


**Fields**
 : Card ID, Card Name, Owner ID, Owner Name, Description, Datasource ID, Datasource Name, Field Name, Is Beast Mode, Beast Mode Name, Field Type
  |
|
 Dataflow Details
  |
 Contains a listing of all dataflows, dataflow type, owner information, all input and output dataset information, and execution status. Also, contains input and output datasets.


**Fields**
 : Dataflow ID, Name, Description, Database ProcessingType, DAP Dataflow ID, Document Version, Owner ID, Owner, Run State, Last Execution Preview Rows, Last Execution DAP ID, Last Execution Begin Time, Last Execution End Time, Last Execution Last Updated Time, Last Execution Failed, Last Execution State, Last Execution Dataflow Version, Created Date/Time, Last Modified Date/time, Number of Inputs, Number of Outputs, Execution Count, Execution Success Count, Hydration State, Enabled, Editable, Draft, Restricted, Input Dataset ID, Input Dataset Name, Execute on Update, Output Dataset ID, Output Dataset Name
  |
|
 Dataflows
  |
 Contains a listing of all dataflows, dataflow type, owner information, all input and output dataset information, and execution status.


**Fields**
 : Dataflow ID, Name, Description, Database ProcessingType, DAP Dataflow ID, Document Version, Owner ID, Owner, Run State, Last Execution Preview Rows, Last Execution DAP ID, Last Execution Begin Time, Last Execution End Time, Last Execution Last Updated Time, Last Execution Failed, Last Execution State, Last Execution Dataflow Version, Created Date/Time, Last Modified Date/time, Number of Inputs, Number of Outputs, Execution Count, Execution Success Count, Hydration, State, Enabled, Editable, Draft, Restricted
  |
|
 Dataset Schemas
  |
 Contains column names and types for all datasets in Domo.


**Fields**
 : Dataset ID, Name, Row Count, Column Count, Owner ID, Owner Name, Dataset Created Date/Time, DataSet Last Touched Date/Time, DataSet Last Updated Date/Time,

Report Last Run, Type, Display ProcessingType, Data Provider ProcessingType, Description, Card Count, PDP Enabled, Column Name, Column Type, Column ID
  |
|
 Dataset Schemas with Tags
  |
 Contains column names and types for all datasets in Domo. Also, includes column description and column tags.


**Fields**
 : Dataset ID, Name, Row Count, Column Count, Owner ID, Owner Name, Dataset Created Date/Time, DataSet Last Touched Date/Time, DataSet Last Updated Date/Time,

Report Last Run, Type, Display ProcessingType, Data Provider ProcessingType, Description, Card Count, PDP Enabled, Column Name, Column Type, Column ID, Column Description,

Column Visible, Column Order, Columg Tags, Column Reference DataSource Id
  |
|
 Datasets
  |
 Contains information about datasets in Domo, including owner, number of rows, number of cards using the dataset, dataset type, etc.


**Fields**
 : Dataset ID, Name, Description, Row Count, Column Count, Owner ID, Owner Name, Dataset Created Date/Time, DataSet Last Touched Date/Time, DataSet Last Updated, Date/Time, Report Last Run,Type, Display ProcessingType, Data Provider ProcessingType, Card Count, PDP Enabled
  |
|
 Groups
  |
 Contains a listing of all groups in Domo and number of members in each group.


**Fields**
 : Group ID, Group Name, Number of Members, Default Group
  |
|
 Pages
  |
 Contains information about the pages in Domo, including owner, number of cards, parent page, and number of child pages.


**Fields**
 : Page ID, Title, Owner User ID, Owner Name, Number of Cards on Page, Parent Page ID, Parent Page Title, Number of Child Pages
  |
|
 Pages and Cards
  |
 Contains page information as well as information about the cards residing on each page.


**Fields**
 : Page ID, Title, Owner User ID, Owner Name, Number of Cards on Page, Parent Page ID, Parent Page Title, Number of Child Pages, Card ID, Card Title,

Collection, Collection ID, Number of Cards in Collection

|
|
 Pages and Users
  |
 Contains page information as well as the information about users and groups that have access to each page.


**Fields**
 : Page ID, Title, Owner User ID, Owner Name, Number of Cards on Page, Parent Page ID, Parent Page Title, Number of Child Pages, User ID, User Name, Group ID, Group Name
  |
|
 PDP
  |
 Lists the PDP policies applied for all datasets.


**Fields**
 : PDP Enabled, Dataset ID, Dataset Name, PDP Policy ID, PDP Policy Name, Filter Field Name, Filter Field Value, User ID, User Name, Group ID, Group Name
  |
|
 Users
  |
 Contains information about all users in Domo.


**Fields**
 : User ID, Name, Title, Security Profile, Email, Phone Number, Employee Number, Created Date, Last Updated Date
  |
|
 Users and Groups
  |
 Contains details about users and their group memberships.


**Fields**
 : Group ID, Group Name, Number of Members, Active, Default Group, User ID, User Name
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

