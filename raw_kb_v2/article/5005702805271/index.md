


###
 What is happening?

Google will sunset their Adwords API on April 27
 th
 2022 in favor of their Google Ads API (

https://ads-developers.googleblog.com/2021/04/upgrade-to-google-ads-api-from-adwords.html

). As a result, Domo will deprecate its Google Ads connector (com.domo.connector.adwords.oauth) which relies on The Adwords API. Customers will need to recreate their datasets on a new Google Ads connector that uses the Google Ads API before April 27
 th
 2022 to continue to import Google Ads data.

##
 How do I know if my datasets are affected?

Your Google Ads datasets are affected if they have the following icon:

Your Google Ads datasets are
 **not**
 affected if they have the following icon:

Datasets using the Google Ads Big Query Service Connector, or the Google Ads Big Query connector are
 **not**
 affected.  These connectors have the following icons:


###
 What do I need to do?

If you do not have an affected dataset, you do not need to take any action.


 If you have an affected dataset, but you no longer need the dataset, you do not need to take any action. However, you may want to disable the dataset before April 27, 2022 to avoid getting dataset update failure notices.


 If you have an affected dataset and you need to keep pulling data, you will need to do the following before April 27, 2022:

. Recreate your datasets using the version of the Google Ads connector, located at
 *https://<your

domo instance>.

domo.com/appstore/connectors/com.domo.connector.googleads*
2. Update any assets using the older datasets, such as cards, alerts, Beast Modes and dataflows, to use the new datasets you have created.


###
 What’s the difference between the two Google Ads connectors?

The Google Ads connector found at
 *https://<your

domo instance>.

domo.com/appstore/connectors/com.domo.connector.adwords.oauth*
 uses the AdWords API which will be sunsetted on April 27
 th
 2022.


 The Google Ads connector found at
 *https://<your

domo instance>.

domo.com/appstore/connectors/com.domo.connector.googleads*
 uses the Google Ads API instead.


 Both Google Ads connectors allow you to pull the same data. However, the available report names and the field names differ between the two APIs. The following page contains a mapping of report and field names between the two APIs:

https://developers.google.com/google-ads/api/docs/migration/mapping

You can use the information on the page above to select the appropriate reports and data fields.

##
 Why do I have to recreate my datasets?

Domo makes every effort to make changes in connectors as a result of API updates transparent to its customers. In this case, the schema of the reports differ enough that we cannot migrate datasets.

##
 What happens if I don't recreate my datasets?

On April 27, 2022, datasets using the API version that will be sunsetted will start failing with an error indicating that the API is no longer available.

##
 How do I find the appropriate Google Ads connector?

You can find the appropriate connector in one of two ways:

. Access the connector directly at
 *https://<your

domo instance>.

domo.com/appstore/connectors/com.domo.connector.googleads*
 , or
2. Log in to your instance and navigate to the AppStore. Once there, search for “Google Ads,” and select the tile with the following icon:

##
 How do I know which Google Ads datasets need to be recreated?

Datasets using the version of the connector that will be deprecated will have the following icon:


###
 How do I know which assets need to be updated?

Domo provides the following features to help you determine which assets need to be updated or may be impacted:

. Beast Mode Manager (BMM) in the Data Center will allow you to determine which Beast Modes have been saved to a Google Ads dataset that needs to be migrated. To find BMM, navigate to the Data Warehouse in the Data Center, and click on the Beast Mode Manager icon on the left. For more information on using BMM, please click

here

.
2. The Data Lineage feature will allow you to see all downstream Cards, DataFlows and Alerts attached to a particular dataset. You can access this feature by going to the “Details” view of any dataset, and clicking on the ‘Overview’ card or the ‘Lineage’ card. For more information on how to use the Data Lineage feature, please click

here

.


###
 How do I get help?

If you need any assistance recreating your dataset or associating new datasets with existing assets, please contact Domo Support.


 For a mapping of reports and fields from the old connector to the new one, please visit:

https://developers.google.com/google-ads/api/docs/migration/mapping


