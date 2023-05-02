

Intro
-------

Geocoder is a premium


 app that allows you to add geocoded data to any DataSet in your Domo instance. Select a DataSet, specify the address column, then set the update interval and method. The DataSet is then geocoded

,

and the results are written to a new DataSet.


 You can find Geocoder in the Appstore.


 This article describes the app and how to perform various tasks within it in the following topics:

 Landing page
* Job list
* Usage meter
* Job Details view
* Output DataSet
* Overview tab
* Editing a job
* Deleting a job
* Schedule tab
* History tab
* Creating a new job

Landing Page
----------------

When you open the app, the landing page displays. The landing page includes a list of Geocoder jobs, a search bar, a usage meter, and controls to create a new job and refresh. When you select
 **Refresh**
 , the entire list of jobs refreshes with the latest details and statuses.


 See

Creating a New Job

for instructions for creating a new job.


###


 Job List

The job list displays information about each existing job. This information includes the job's name, creator, rows, input DataSet, output DataSet, last status update, and status.


 The following actions can be performed in the job list:

 **Search for a job —**
 Enter keywords into the search bar to filter the list by name.
* **Change order of list —**
 Select the

*F**
**ilter Menu**
 at the top of the list to change the sort order of the list.
* **View/edit a job —**
 Select a job in the list to view its details and make edits.


###


 Usage Meter


 On the landing page, the usage meter displays the limit of monthly individual geocoding requests and how many requests have been made in the current month. Each job creates multiple requests. If the monthly limit is reached, jobs continue running and the excess bill is calculated at the end of the period. Below the usage meter, you can see when your package limit resets.


 If you need to upgrade your limit, contact your Customer Success Manager (CSM).


 Job Details View
--------------------

When you select a job from the list on the landing page, the job Details view displays. If the job has executed at least one time, the job Details view displays a link to the

output DataSet

for the job.

Select

*Back**
 to return to the landing page.


 In the job Details view, you can select
 **Run Now**
 to manually run the current job. Running the job adds an entry to its history, which you can view in the
 **History**
 tab.

*Note:**
 You can manually run your job even if it has a set update interval. Running a job manually does not affect the update schedule; the job will run at the end of the next update interval.

Select
 **Delete Job**
 to delete the current job.


 Admins can select
 **Claim Ownership**
 to claim ownership of the current job. This action is not reversible. A dialog displays to confirm the change of ownership. Select
 **Cancel**
 to cancel this action or
 **Claim**
 to proceed.

##


 Output DataSet

The output DataSet appends the following columns of geocoded data to the original input DataSet:


 Column
  |
 Description
  |
| --- | --- |
|
 \_DCG\_Status
  |
 The possible result of the geocoding process.


 Possible values include:
 * OK
* ACCESS\_NOT\_CONFIGURED
* MAX\_ELEMENTS\_EXCEEDED
* NOT\_FOUND
* ZERO\_RESULTS
* OVER\_DAILY\_LIMIT
* OVER\_QUERY\_LIMIT
* REQUEST\_DENIED
* INVALID\_REQUEST
* UNKNOWN\_ERROR
 |
|
 \_DCG\_Message


 |
 The resulting message of the geocoding process.
  |
|
 \_DCG\_From Cache
  |
 This field indicates whether we use the DOMO database result instead of the provider endpoint.

TRUE

for local results and

FALSE

for provider results.
  |
|
 \_DCG\_Place Id
  |
 Contains the unique ID for each result; a feature may have a commonly used identifier, either a unique string or number.
  |
|
 \_DCG\_Latitude
  |
 Contains the geocoded latitude.

This field is typically one of the most important for normal address lookups.
  |
|
 \_DCG\_Longitude
  |
 Contains the geocoded longitude.

This field is typically one of the most important for normal address lookups.
  |
|
 \_DCG\_Location Type
  |
 A list of feature types describing the feature. Most features have only one type, but if the feature has multiple types (for example, Vatican City is a country, region, and place), all applicable types are listed.
  |
|
 \_DCG\_Formatted Address
  |
 The house number for the returned address feature.
  |
|
 \_DCG\_Landmark
  |
 Specifies whether the feature is in the poi.landmark data type.

This data type is deprecated, and this property is present on all poi features for backwards compatibility reasons but is always

TRUE

.
  |
|
 \_DCG\_Text
  |
 A string representing the feature in the requested language, if specified.
  |
|
 \_DCG\_Category
  |
 Comma-separated categories for the returned poi feature. Points of interest can include restaurants, stores, concert venues, parks, museums, and more.
  |
|
 \_DCG\_Neighborhood
  |
 Colloquial sub-city features often referred to in local parlance. Unlike locality features, these typically lack official status and may lack universally agreed-upon boundaries.
  |
|
 \_DCG\_Region
  |
 Top-level sub-national administrative features, such as states in the United States or provinces in Canada or China.
  |
|
 \_DCG\_Country
  |
 Limits results to one or more countries. Permitted values are country names separated by commas.
  |
|
 \_DCG\_Country Short Code
  |
 Limits results to one or more countries. Permitted values are

ISO 3166 alpha 2

country codes separated by commas.
  |
|
 \_DCG\_Postcode
  |
 Postal codes used in country-specific national addressing systems.
  |
|
 \_DCG\_Place
  |
 Typically, these are cities, villages, municipalities, and so on. They’re usually features used in postal addressing, and are suitable for display in ambient end-user applications where current-location context is needed (for example, in weather displays).
  |
|
 \_DCG\_Place Name
  |
 Contains a detailed description of the place. Typically includes the city's name and country, depending on the feature type.
  |


###

Overview Tab

In the
 **Overview**
 tab of the job Details view, a label indicates the last time the current job ran successfully. A full historical log of all the executions for the current job can be accessed in the
 **History**
 tab.


####


 Editing a Job

In the
 **Overview**
 tab of the job Details view, the job owner can edit the job name, change the input DataSet, and update the address column. An app admin can view all jobs but needs to claim ownership of a job before being able to edit it.

###


 Deleting a Job

In the job Details view for a job, the job owner can delete the job by selecting
 **Delete Job**
 . An app admin can view all jobs but needs to claim ownership of a job before being able to delete it.

###


 Schedule Tab

In the
 **Schedule**
 tab of the job Details view, you can edit the update interval for the job.

###


 History Tab

In the
 **History**
 tab of the job Details view, you can access a historical log of the last 100 executions of the current job.


 You can view the following details for each entry:

 Started on
* Completed on
* Result
* Message

Creating a New Job
----------------------


**Note:**
 You can only create a job with DataSets that you have access to. The output DataSet copies the permissions (PDP) from the input DataSet. This means that only those who have access to the input DataSet for a job have access to the output DataSet of that job.

. Select
 **New Job**
 at the bottom right corner of the landing page.


 The
 **Save New Job**
 modal displays.


**Note:**
 New jobs are added to the list in alphabetical order.


*
* Enter a custom name to identify this job in the
 **Job name**
 field.
* In the
 **Dataset**
 field, search for the target DataSet by name. Then select the DataSet from the list of results.
* In the
 **Address column**
 field, search for and select a column from within the target DataSet. The data in this column is what is geocoded when the job runs.


**Note:**
 After you select a DataSet, you can switch to a different one by selecting the
 **(change)**
 link that displays next to the DataSet label. This also de-selects the current address column, if any was selected.


*
* Select an update interval from the list of options. The options are detailed below.


**Note:**
 Apart from Manual, all of the interval options are automated. When you configure jobs to be automated, they run as long as the geocoding service is available. This means that on rare occasions, there could be a small delay before the job triggers.


	+ **Manual —**
	 If you select
	 **Manual**

 , you must run the job manually. It never runs automatically.
	+ **Every hour —**
	 This option automatically runs the job every hour. If you want to restrict the window of time in which the job runs, select the
	 **Active hours**

 checkbox to configure the start and end times.
	+ **Every day —**
	 This option automatically runs the job once a day, seven days a week. Use the
	 **Start between**

 menu to select the time at which you want the job to run.

**Note:**
	 If when the job tries to run, the geocoding service is initially busy, an end time marks the window of time during which the job can run.
	+ **Every weekday —**
	 This option automatically runs the job once a day, but only Monday through Friday. The same
	 **Start between**

 criteria applies as with the

**Every day**

 option above.
	+ **Every week —**
	 This option automatically runs the job once a week. Use the
	 **On this day**


	 menu to select the day of the week on which you want the job to run. The same

**Start between**

 criteria applies as with the

**Every day**

 option above.
	+ **Every month —**
	 This option automatically runs the job once a month on the same day(s) every month. The
	 **On this day**

 menu allows you to select whether the job should run on the 1st, on the 1st

*and*

 15th, or on the last day of the month.

 The same
	 **Start between**

 criteria applies as with the

**Every day**

 option above.
* Select
 **Save**
 to create the new job.


