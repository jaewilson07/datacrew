

FAQs
------


#####
 Is there an easy way to capture the current state of a DataSet and copy it into a new, independent DataSet?

There are 3 solutions to this problem:

 Use Domo's DataSet Copy Connector. This Connector lets you copy DataSets within your instance or across instances. You will need a username, password, access token, and DataSet ID to create a copy of the DataSet. You may need to work with your MajorDomo to generate an access token for your instance. For more information about this Connector, see

DataSet Copy DataSet Connector

.
* Set your DataFlow to just append rows. You will then get a "snapshot" for each time the DataSet updates. This will lead to a lot of duplicate data, which you can easily filter out for analysis by filtering on either \_BATCH\_ID\_ (a running counter of how many times that DataSet has been updated) or \_BATCH\_LAST\_RUN\_ (the date field of the last update time). Any analysis using a filter on these would always use the same data and you would have the bonus of getting a snapshot every day. So the DataSet would change, but any new data added would not affect your snapshot.
* Recreate the Connector configuration with the "Append" setting and you will have a completely independent DataSet (not just one connected in a DataFlow). (If you simply change the update settings of the existing Connector, you will have to filter for the most recent batch in all connected Cards so you do not get inflated numbers.)


#####
 Is it possible to "snapshot" data on a daily basis to run point-in-time reports?

Yes. Domo lets you create "append chains" across DataSets in order to snapshot. To do this, when configuring the
 **Update Settings**
 for the Connector, simply select
 **Append**
 instead of
 **Replace**
 . From there, you can use the "BATCH\_LAST\_RUN" value (a column Domo adds when a DataSet runs) as your snapshot date.


 Note that by taking this approach, you must be careful when using this DataSet for non-snapshot use cases since it automatically counts all historical values instead of the latest snapshot. You can run this kind of DataSet through an ETL or SQL DataFlow to add a "Latest" column that flags the records that came in as part of the last run. You can then use that column as a filter for Cards that satisfy a current, not snapshot, use case.

####
 I am not seeing a particular field (column) in a report when I import data using a certain Connector. Can Domo add this field for me?

If you would like to have a certain field, value, etc. added to a Connector, you can submit an enhancement request to our Product team using the
 **Feedback**
 option in the
 **More**
 menu in your Domo instance and let them know which field you would like added to the Connector. Our Product team reviews every enhancement request submitted this way and will contact you if the field can indeed be added.

####
 I can't find a Connector I need in the Domo Appstore. Can I build a custom Connector?

Domo has hundreds of pre-built Connectors and is always adding more to the list. In the event that you find yourself needing to get data into Domo from a system or writeback data from Domo to a system, and a Connector for this purpose does not already exist, contact your Account Executive or Customer Success Manager to discuss the option of creating a new Connector or updating an existing Connector.


 If you're a little more technical, you can use our Connector IDE to build your own to any custom Connector. To get started, see our

Developer Portal

. For a list of all of our third-party custom Connectors currently available, see

Available Custom Connectors

.

####
 Is it possible to refresh my data faster than every 15 minutes?

Yes, in order to do this, please reach out to your account team for evaluation.

####
 Is there a limit to the number of columns that can be imported using a Connector?

Yes, Connectors allow for up to 1,500 columns in a DataSet.


 General Troubleshooting
-------------------------

If one of your Connectors stops working, we recommend that you first try to discover and resolve the error yourself by doing the following:

. Select
 **Data**
 in the toolbar at the top of the screen.
2. Select
 **DataSets**
 in the left-hand menu.
3. Search for the broken DataSet.


 Broken DataSets are indicated using a red exclamation point icon, while DataSets that need attention are indicated using an orange exclamation point icon. You can filter to show all of the broken DataSets in your instance by clicking
 **Add Filter**
 , selecting
 **Status**
 , then choosing the desired status.

. In the details view of this DataSet, select the
 **History**
 tab.


 At this point, you should be able to see a running list of scheduled updates and which updates were successful or failed.
5. In the right-hand
 **Result**
 column, identify the error message(s) associated with the failed update(s).


 Some of these messages provide you with information that you can act on to resolve the error and get the Connector working again, as in this example.

However, if the error is not an issue that you can resolve on your own, contact Domo Support.

For information on how to contact Support, please see

Getting Help

.

Troubleshooting Specific Errors
---------------------------------


#####
 Cloudflare is preventing me from connecting.

If you have Cloudflare running, be aware that this may prevent the Domo Connector from connecting to your server. If this is the case, you will need to configure Cloudflare to allow access to the Connector. This page explains how to do this:

https://support.cloudflare.com/hc/en-us/articles/200171806-Error-1010-The-owner-of-this-website-has-banned-your-access-based-on-your-browser-s-signature


#####
 I get the error message "FTP is not supported" when configuring the CSV Advanced/XML Advanced/JSON Connector.

Due to security concerns, Domo no longer permits uploading data using FTP. If necessary, please update your server settings to support SFTP instead of FTP.

####
 I've configured my Netsuite connection correctly as shown in

Connecting to NetSuite Data in Domo

, but I keep getting an "Unexpected Error" message.

Check your Netsuite column names for invalid characters such as apostrophes, quotation marks, backslashes, etc.


 Connector Best Practices
--------------------------


* Know your data. Have a vision for the data you expect to pull and how it will be used.
* Think about the range of data, and pull in data according to what you will use. Only bring in the data you need.
* Think about scheduling, especially with regards to the following:

+ How is the data structured?
	+ How will the data be viewed?
	+ Be mindful of resources (look at associated DataSets).
	+ Remember data runs in UTC time!


