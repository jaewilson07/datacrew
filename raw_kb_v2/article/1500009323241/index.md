

Intro
-------

Thank you for your interest in the Scheduler app! This guide will help you prepare and connect your data to the app. The main purpose of the Scheduler app is to allow for a broad variety of scheduling use-cases, as opposed to other offerings in the market which are targeted towards very specific business needs. Follow the steps below to prepare your data for the app and how to set up the app in the Admin set-up section. The app will need to be connected to DataSets output by the Scheduler, as well as the Form Builder app.


###
 ExternalAppointments DataSet

The
 **ExternalAppointments**
 DataSet, output by the Scheduler app, is a list of end-users that should be allowed to use the app to book a follow-up appointment using their customer ID. This DataSet is not utilized for initial appointments, but even if a Scheduler only offers initial appointments this DataSet mapping should still be configured. The
 **ExternalAppointments**
 DataSet includes the following column IDs:

. customerId
2. questionnaireSessionId
3. startDateTime
4. endDateTime
5. serviceId
6. serviceName
7. locationId
8. locationName
9. resourceId
10. resourceName

These will be used later on to map the DataSet to your Scheduler app.


 For follow-up appointments, the customerId field is validated against the list of customer IDs in the mapped DataSet. If a customer ID is entered but is not loaded in the
 **ExternalAppointments**
 DataSet, then the end-user will not be able to proceed to the next step.


###
 MaskedCustomerInfo DataSet

This DataSet is a companion to the
 **ExternalAppointments**
 DataSet and will return the masked first and last name of the customer Id entered into the Scheduler. The
 **MaskedCustomerInfo**
 DataSet is taken from the
 **ExternalAppointments**
 DataSet and then put into a Beast Mode to mask the first and last name, an example of this Beast Mode will be shown below. The
 **MaskedCustomerInfo**
 DataSet should include the following column IDs:

. customerId
2. firstName
3. lastName

These will be used later on to map the DataSet to your Scheduler app.


 If a customer ID is entered but is not loaded in this DataSet then the end-user will not be able to proceed to the next step in the Scheduler.

Here is a sample Beast Mode to generate the masked first and last names:


**firstName:**


 CONCAT(left(`firstName`, 1), left(REGEXP\_REPLACE(`firstName`,'.','\*'),LENGTH(`firstName`)-1))


**lastName:**


 CONCAT(left(`lastName`, 1), left(REGEXP\_REPLACE(`lastName`,'.','\*'),LENGTH(`lastName`)-1))

##
 InviteCodes DataSet

This DataSet maps the invite codes, which allows only invited end-users to schedule their appointments. This applies to initial appointments only and is enabled through the Admin set-up.

When enabled, the Scheduler will only allow codes that are populated in the
 **inviteCodes**
 column of the DataSet.

The
 **InviteCodes**
 DataSet includes the following column:

. inviteCode

This will be used later on to map the DataSet to your Scheduler app.


 Wiring Your Data to the App
-----------------------------

After the data is ready for the app, you can now deploy the app from the Appstore and connect your data. If you have access to the app asset, deploy the asset from the Asset Library to the desired page in Domo. If the app has been deployed for you with sample data, navigate to the app, click on the wrench icon in the top right corner of the app, and select
 **Edit Card**
 .


 On the
 **Edit Card**
 screen, that you will get to from one of the two methods explained above, you can re-name the app at the top of the screen. Scroll down below the app and you should see a series of tabs that represent each of the DataSets the app needs in order to run. The first tab
 **EXPORTCOLUMNS**
 will come from your output Form Builder DataSet, be sure to match up all of the correct column IDs from the DataSet. Repeat this same step for the
 **EXPORTFILTERS**
 ,
 **EXPORTSFORMS**
 ,
 **EXPORTGROUPS**
 ,
 **EXPORTITEMS**
 ,
 **EXPORTSECTIONS**
 ,
 **EXPORTSUBMITTEDUSERS**
 , and
 **EXPORTTAGS**
 tabs, being sure to match up all of the correct columns IDs from the DataSets. The following DataSets will be output from the Scheduler and mapped to the app:
 **ExternalAppointments**
 ,
 **MaskedCustomerInfo**
 , and
 **InviteCodes**
 . Each of these should have corresponding tabs in the
 **Edit Card**
 screen, while setting these up be sure to match up all of the correct column IDs from the DataSets. Scroll up to the top and click
 **Save & Finish**
 and your app should now be ready to set up.


 Embedding the Scheduler App
-----------------------------

Follow these steps to set up the Scheduler app in embed:

. Create a new Role in the Domo instance called
 **Embed User**
 with
 **only**
 the following three grants enabled:

1. Embed Content
	2. Use AppDB
	3. View DomoApps
2. Create an account in Domo and assign it to the ‘Embed User’ role.

1. Remove grants from this user for everything
	 **except**
	 for the Scheduler app.
3. Log in as the
 **Embed User**
 .
4. Enable the Domo Everywhere link on the asset using the
 **Embed User**
 .

Domo Groups and Permissions
-----------------------------

A list of groups and the permissions needed will be outlined below. Each of these groups will need to be added to your Domo instance.

 \_FB\_CreateForms\_

+ For Form Builder creation access.
* \_FB\_CreateTemplate\_

+ For Form Builder Template creation access.
* \_Scheduler\_Admin\_

+ For accessing the Admin section of the Scheduler.
* \_SMS\_ADMIN\_

+ Campaigns Admin.
* \_SMS\_USER\_

+ Campaigns user.
* Embed User Group

+ Add the
	 **Embed User**
	 to this group, the
	 **Embed User**
	 is used to create the public embed links.
	+ **Only**
	 the
	 **Embed User**
	 should be in this group.
	+ Share the Schedulers that need public embed links with this group.

Admin Set-up
--------------


###
 List-View

The Admin portion of the app can be accessed by selecting the
 **Admin**
 option from the landing screen. The default Admin view is the
 **Manage Schedule**
 or list-view, the
 **New Item**
 button will take you back to the landing page, while the
 **Admin Settings**
 button will take you to the app set-up.


 The list-view has four options: today, this week, this month, or past. Your appointments will be shown from soonest to furthest (i.e., a 4/1/21 appointment will be shown before a 4/21/21 one). Search for an appointment by first and last name, email, and phone number. You can also filter your list-view using the filter by location, service, and/or resource options. A list of pre-populated locations, services, and resources can be filtered on—these are dependent upon your set locations, services, and resources in the
 **Admin Settings**
 portion of the Scheduler.


 Delete appointments by selecting the ‘trashcan’ icon next to a line-item. Appointments can be re-scheduled by going through the formal scheduling process from the app landing screen.


###
 Admin Settings

The Admin Settings screen has nine different set-up options:
 **Set up Workflow**
 ,
 **Edit Locations**
 ,
 **Edit Services**
 ,
 **Edit Resources**
 ,
 **Edit Availability**
 ,
 **Edit Inventories**
 ,
 **Add Questionnaire**
 ,
 **Customize Confirmation**
 , and
 **Customize Settings**
 . Each of the options provides you with the ability to have complete control over the way your Scheduler app functions and looks to end-users.


###
 Set up Workflow

Control the order that your Location, Service, and Resource appears in the app by dragging and dropping each item as you want desire. Hide options by selecting or un-selecting the checkbox next to each title. Choose to include a Form Builder questionnaire in your workflow, if desired. The
 **show any**
 slider, when turned on, will show end-users all of the available options included (i.e., all locations will be shown). Limit who has access to the Scheduler by checking the
 **Invitations required for appointment scheduling**
 ; this will only allow users who have a unique ID, generated by the app, to schedule an appointment.


###
 Edit Locations

Add new locations to your Scheduler by selecting the ‘Add New Location’ button from the upper right-corner of the screen. Locations include the name of the location, address, associated resources, and associated resources. Locations are required to have both a resource and service, incomplete items will be marked with a red incomplete tag and will not be visible to users in the app.


 Edit existing locations by selecting the down arrow on a line-item and delete locations by selecting the trashcan icon. If changes are made in the Edit Locations screen, a save and reset button will appear at the bottom of the page prompting you to either reset or save your changes. Hide locations that you do not want to appear for users by selecting the ‘hide’ checkbox on each line-item.


 Set a location as private by selecting the ‘Private’ checkbox. Once this checkbox has been selected, you should be able to see an Invite ID, this is how users will be able to schedule for that private location in the app.


 Note that a location will be hidden in the Scheduler app once all of its associated inventory has been used up.

Admins also have the ability to preview the availability by location. Select the ‘eye’ icon in the expanded location view. The calendar view will be shown as well the max # of appointments.


###
 Edit Services

Add new services to your Scheduler by selecting the
 **Add New Service**
 button from the upper right-corner of the screen. Services include the service name, description of the service, estimated service duration, booking type, inventory, inventory usage, associated resources, and associated locations. The estimated service duration is how long the service will take for each appointment (i.e., 1.5 equals 1 hour and 30 minutes). The booking type can be set as either an initial or follow-up appointment, follow-up appointments are only available if the user has already completed/scheduled their initial appointment. If you are setting the service up as a follow-up, three additional options will be shown: follow-up at least, follow-up at most, and follow-up parent services. Follow-up at least is the follow-up appointment must be scheduled
 **this**
 number of days after the initial; follow-up at most is the max number of days that a follow-up appointment can be scheduled after the initial. The follow-up parent services are the associated services that can be scheduled according to the selected initial service. The inventory is the associated inventory set in the
 **Edit Inventories**
 screen. The inventory usage is how many items from the inventory the service requires per booking. Services are required to have both a resource and location, incomplete items will be marked with a red incomplete tag and will not be visible to users in the app.


 Edit existing services by selecting the down arrow on a line-item and delete services by selecting the trash icon. If changes are made in the
 **Edit Services**
 screen, a save and reset button will appear at the bottom of the page prompting you to either reset or save your changes. Hide services that you do not want to appear for users by selecting the
 **hide**
 checkbox on each line-item.


###
 Edit Resources

Add new resources to your Scheduler by selecting the
 **Add New Resource**
 button from the upper right-corner of the screen. Resources include the resource name, description of the resource, double booking, associated locations, and associated services. Double-booking is the max concurrent number of bookings allowed for the resource. Resources are required to have both a location and service, incomplete items will be marked with a red incomplete tag and will not be visible to users in the app.


 Edit existing resources by selecting the down arrow on a line-item and delete resources by selecting the trash icon. If changes are made in the
 **Edit Locations**
 screen, a save and reset button will appear at the bottom of the page prompting you to either reset or save your changes. Hide resources that you do not want to appear for users by selecting the ‘hide’ checkbox on each line-item.


###
 Edit Availability

Add company availability to the Scheduler through default or custom schedules. Default schedules will apply to all users who are not added to custom schedules. Custom schedules will override default schedules and will only apply to users added to it. Add a new schedule by selecting the ‘Add Schedule’ button from the upper-right corner of the screen and choose to either add a new default or custom schedule.


 Start and end dates can be set—this will define the periods of time in which appointments will be available to end-users. If this is left blank, all dates will be available.


 Select what time zone you’d like all appointments to be available in: Alaskan, Arizona, Central, Eastern, Hawaiian, Mountain, or Pacific time.


 The Time Slot Interval selection determines the time allocated to each time slot which users can select when booking an appointment. For example, an interval of 15 minutes on a schedule that runs between 8am and 9am will present these options: 8:00am, 8:15am, 8:30am, and 8:45am.

Default schedules include the schedule name, the
 **repeats weekly on**
 days, blackout periods, and available hours. Default schedules can be edited at any time and deleted by selecting the
 **trash**
 icon on the line-item.

Blackout periods define whether days before or after certain dates are excluded for booking appointments. Select the
 **Everything Before**
 checkbox and the date to make everything
 **before**
 the selected date unavailable. Select the
 **Everything After**
 checkbox and the date to make everything
 **after**
 the selected date unavailable. Custom blackout dates include periods or single days, for example I could make just April 19, 2021 unavailable in the Scheduler or I could make April 19-April 21 unavailable; multiple periods and days can be added. All of the blackout dates will appear in the bottom of the modal.

Custom schedules are set up almost exactly the same way as default schedules, but any added custom schedules will override existing default schedules in the Scheduler. The
 **Schedule Resources**
 field is available for custom schedules; this is where you can add and restrict resources that will be included. Add users to the schedule by searching for their name and then selecting their name from the search results.


###
 Edit Inventories

Add new inventories to your Scheduler by selecting the
 **Add Inventory**
 button from the upper-right corner of the screen. Inventories include the inventory name, inventory description, the current inventory (based on the number of users scheduled with that inventory item and added inventory amount), and the modify inventory amount which allows you to add or remove from the current inventory. Inventories can be edited at any time and deleted by selecting the trash icon from the line-item. Services can also be associated with inventories; select the ‘+’ button next to Services and add the service and the amount per location.


###
 Edit Languages

Additional languages can be enabled in the ‘Edit Languages’ screen. The currently available language options include English, Spanish, Haitian Creole, and Japanese. One language can be set as the default, using the single-select button, and multiple languages can be enabled in the app. Select a language and begin translating the fields to the associated text fields in the app. The areas that will need to be translated include Buttons, InviteLabels, FollowUpLabels, InformationLabels, DateTimeLabels, ConfirmationLabels, BookingErrors, Titles, and Descriptions. Once a text field has been updated, the language you have made the change will show a warning indicator letting admin users know that a field(s) have been changed. The other enabled languages will also show the number of fields that were changed, in case they need to be updated according to your changes.


###
 Add Questionnaire

New questionnaires can be added by selecting the
 **Add a New Form Builder DataSet**
 button on the screen; from here you’ll be able to select an output DataSet from your Form Builder app that contains the questionnaire you want included in the app.

Once you’ve selected a DataSet, you’ll be able to preview what the questionnaire will look like to end-users in the Scheduler app.


###
 Customize Settings

Customize the way the app appears to end-users in the Scheduler app including adding a logo, customizing the color palette, and editing the app name.


 Upload a new logo to be displayed in the app by selecting the ‘Upload’ button in the Add/Edit Logo section. Customize the color palette by selecting a primary and secondary color and primary and secondary font color; you’ll see a preview of the colors. Add or edit the app name that’s displayed throughout the app as well.


###
 Other Settings

Enable the address auto-complete functionality in the Scheduler in the ‘Other Settings’ tab. In order for this to be enabled, you will need to have a Mapbox token. Copy and paste your token into the text box, this feature will allow users to show suggestions when entering their address and allow them to select an option to autocomplete the additional address fields.

Using the App
---------------

Once you’ve gone through the Admin set-up, you should now be able to allow end-users to schedule appointments either in Domo or using private embed.

