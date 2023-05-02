

If you plan to bring the data Google Analytics is tracking for your app(s) into Domo, follow these steps for setting up a connector and report that will pull in the most helpful data:

. Click
 **Plus/Add**
 at the top of the interface.
2. Select
 **Data**
 .
3. Select
 **Cloud app**
 .
4. In the Data Connectors page, search for "Google Analytics."
5. Select the Google Analytics connector.
6. Select
 **Get the Data**
 .
7. If you haven’t connected a Google Analytics account already, select
 **Connect**
 and then go through the process of adding that account.
8. Select the desired account from the list and select
 **Next**
 .
9. In the
 **View**
 category of the
 **Data Selection**
 tab, open the dropdown list and select your app (e.g.
 **Modocorp > My Training App**
 …).
10. In the
 **Report**
 category dropdown, select
 **Custom Report**
 . At this point, you have a number of metrics or dimensions you can choose from to add to your report or DataSet. Below are some recommended metrics or dimensions you might consider, with the priority options in bold.


**Note:**
 Custom variables must first be added in Google Analytics. See this article for instructions on how to add custom variables:

Setting Up a Google Analytics Report in Domo for your Training App


 .


	* **Custom Variables or Columns:**
	 App Name, Instance, User ID
	* **Page Tracking:**
	 Pageviews, Time on Page, Unique Pageviews, Page
	* **Session:**
	 Sessions, Bounces, Session Duration (Metric), Session Duration (Dimension)
	* **Time:**
	 Date
	* **User:**
	 New Users, Number of Sessions per User
	* **Event Tracking:**
	 Unique Events, Event Action, Event Category, Event Label
11. Select your preferred range for the data (e.g. 60 days).
12. Select
 **Run Test**
 , and then select
 **Next**
 .
13. Schedule the date/time you’d like your data to refresh.

Within a few moments, your new Google Analytics DataSet should load. From here, you can create cards to visualize, for example, who has visited your app, what page they visited, and for how long.

