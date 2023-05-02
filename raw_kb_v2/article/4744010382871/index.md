

Intro
-------

ManageEngine ServiceDesk Plus is a comprehensive help desk and asset management software that provides help desk agents and IT managers an integrated console to monitor and maintain the assets and IT requests generated from their end users. ServiceDesk Plus connector in Domo lets you fetch request and change dataset from ServiceDesk Plus Cloud and project it to DOMO, where you can visualize datasets as per your requirements. Please note that this connector is supported only in the Enterprise edition of ServiceDesk Plus. In this guide, we will discuss the prerequisites for using the connector, best practice, and steps to connect to ServiceDesk Plus account.


 Prerequisites
---------------

You will need the ServiceDesk Plus login username and password for authenticating via OAuth 2.0.


 Best Practices
----------------

Schedule reports at frequent intervals to maintain an accurate and latest data of request and change details.


 How to connect to ServiceDesk Plus
------------------------------------

This section enumerates the options in the Credentials and Details panes in the ServiceDesk Plus Connector page.

This c


 onnector uses OAuth to connect, so there is no need to enter credentials within Domo.


* After logging into Domo, go to the
 **AppStore**
 in your Domo instance and search for
 **SDP Cloud Connector**
 .
* Click on the
 **Service DeskPlus Connector**
 as it appears in the search result.
* Click

*Connect**

to open the


 OAuth screen.


 The credentials pane opens up. Enter credentials for your SDP account.


* Once your account is selected in the credentials pane, click
 **Next**
 .


###
 Details Pane

Under the Details Pane, select Request or Change report.

##
 Dataset Schedule

Select a schedule for the data fetch. You have two options: Basic and Advanced.

 Under Basic scheduling, you can set the
 **Update**
 interval to
 **Every Hour**
 ,
 **Every Day**
 ,
 **Every Weekday**
 ,
 **Every Week**
 ,
 **Every Month**
 , or
 **Manually**
 . You can also set a specific time for the schedule.
* In the update method, you can choose either
 **Replace**
 or
 **Append**
 . The
 **Replace**
 option replaces all the data in the application with the new data that is being added. The
 **Append**
 option compares and adds only the differential data on top of the existing data.


 Under the
 **Advanced**
 option, you get to schedule the data update in the following ways:

 Once a day, More than once a day, Every day, Specific days of the week, Specific days of the month, Every Month, and Specific months. Select the schedule you require and set the time.

###
 Error Handling


* Select how the data update failure should be handled. You can choose between the options, "Do not retry when update fails" and "Always retry when an update fails".
* Once you have configured the scheduling, click
 **Next**
 .


###
 Name and Description for Dataset


* Enter a Dataset Name and Description. The name you select here will be displayed for your dataset under
 **Data**
 in Domo.

 Click
 **Save and Run**
 . The dataset will be render.

##
 Fetched Data Entities


####
 Requests

Request ID, Subject, Description, Template, Status, Technician, Created Time, Mode, Site, Group, Level, Approval Status, and etc.

###
 Changes

Change Display ID, Title, Description, Template, Urgency, Status, Impact, Priority, Reason for Change, Stage, Created time, Item, and etc.


 Shown below is a sample request data set fetched in Domo.


###
 Service Desk Support Contact Information

Email :

servicedeskplus-cloud-support@manageengine.com

For more information visit -

https://www.manageengine.com/products/service-desk/support.html?cloud


