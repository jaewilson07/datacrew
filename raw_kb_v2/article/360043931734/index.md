


####
 [2.191] - 2020-02-27


#####
 Added


* `disable-report`
 disables a scheduled report
* `enable-report`
 enables a scheduled report
* `list-page`
 lists all pages
* `list-report`
 lists all scheduled reports and their IDs


#####
 Fixed


* `move-page`
 error that was causing it to fail


####
 [2.190] - 2020-02-20


#####
 Added


* `delete-version`
 deletes a specified dataset version


####
 [2.189] - 2020-02-20


#####
 Changed


* Introduction message updated
* `upload-snowflake`
 can now upload data without indexing
* `upload-snowflake`
 now accepts the driver file as a parameter instead of having to include the driver in the classpath on invocation


#####
 Fixed


* `upload-snowflake`
 error where columns with null values were incorrectly output in the CSVs


