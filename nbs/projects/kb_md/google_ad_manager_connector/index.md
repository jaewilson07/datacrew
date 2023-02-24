---
    title: Google Ad Manager Connector
    url: https://domo-support.domo.com/s/article/360043431133
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431133](https://domo-support.domo.com/s/article/360043431133)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003775
    views: 2,213
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----






Google Ad Manager (formerly DoubleClick for Publishers) offers publishers a complete ad revenue engine, helping publishers streamline operations and capture the most value for every impression. To learn more about the API, visit their page ([https://developers.google.com/ad-manager/api](https://developers.google.com/ad-manager/api "https://developers.google.com/doubleclick-publishers/docs/start")).  






You connect to your Google Ad Manager account in the Data Center. This topic discusses the fields and menus that are specific to the Google Ad Manager Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Google Ad Manager account and create a DataSet, you must have a Google account with a username and password.


Connecting to Your Google Ad Manager Account
--------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Ad Manager Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most Connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google Ad Manager Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google Ad Manager accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Google Ad Manager report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Networks | Returns the list of Network objects the authenticated user has access to. |
| Activity Group by Statement | Returns a list of [activity groups](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityGroupService#getActivityGroupsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityGroupService#getActivityGroupsByStatement") broken down by statement.  |
| Activity by Statement | Returns a list of [activities](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityService.html#getActivitiesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityService.html#getActivitiesByStatement") broken down by statement.  |
| Ad Exclusion Rule by Statement | Returns a list of [ad exclusion rules](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AdExclusionRuleService.html#getAdExclusionRulesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AdExclusionRuleService.html#getAdExclusionRulesByStatement") broken down by statement.  |
| Ad Rules by Statement | Returns a list of [ad rules](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AdRuleService#getAdRulesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AdRuleService#getAdRulesByStatement") broken down by statement.  |
| AdUnits by Statement | Returns [AdUnits](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService") objects broken down by statement. |
| Audience Segments by Statement | Returns a list of [audience segments](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#getAudienceSegmentsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#getAudienceSegmentsByStatement") broken down by statement.  |
| Base Rates by Statement | Returns a list of [base rates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/BaseRateService.html#getBaseRatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/BaseRateService.html#getBaseRatesByStatement") broken down by statement. |
| Company by Statement | Returns a list of [companies](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CompanyService "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CompanyService") broken down by statement.  |
| Contacts by Statement | Returns a list of [contacts](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContactService.html#getContactsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContactService.html#getContactsByStatement") broken down by statement.  |
| Contents by Statement | Returns a list of [contents](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentService.Content "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentService.Content") broken down by statement.  |
| Creatlives by Statement | Returns a list of [creatives](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeService.html#getCreativesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeService.html#getCreativesByStatement") broken down by statement.  |
| Creative Sets by Statement | Returns a list of [creative sets](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeSetService#getCreativeSetsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeSetService#getCreativeSetsByStatement") broken down by statement.  |
| Creative Templates by Statement | Returns a list of [creative templates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeTemplateService#getCreativeTemplatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeTemplateService#getCreativeTemplatesByStatement") broken down by statement.  |
| Creative Wrappers by Statement | Returns a list of [creative wrappers](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#getCreativeWrappersByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#getCreativeWrappersByStatement") broken down by statement.  |
| Custom Fields by Statement | Returns a list of [custom fields](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomFieldService.Statement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomFieldService.Statement") broken down by statement.  |
| Custom Targeting Keys by Statement | Returns a list of [custom targeting keys](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#getCustomTargetingKeysByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#getCustomTargetingKeysByStatement") broken down by statement.  |
| Exchange Rates by Statement | Returns a list of [exchange rates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ExchangeRateService#getExchangeRatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ExchangeRateService#getExchangeRatesByStatement") broken down by statement.  |
| Labels by Statement | Returns a list of [labels](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#getLabelsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#getLabelsByStatement") broken down by statement.  |
| Line Items Creative Associations by Statement | Returns a list of [line item creative associations](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#getLineItemCreativeAssociationsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#getLineItemCreativeAssociationsByStatement") broken down by statement.  |
| Line Items by Statement | Returns a list of [line items](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemService "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemService") broken down by statement.  |
| Line Item Templates by Statement | Returns a list of [line item templates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemTemplateService.html#getLineItemTemplatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemTemplateService.html#getLineItemTemplatesByStatement") broken down by statement.  |
| Live Stream Events by Statement | Returns [live stream events](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LiveStreamEventService#getLiveStreamEventsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LiveStreamEventService#getLiveStreamEventsByStatement") objects broken down by statement. |
| Mobile Applications by Statement | Returns a list of [mobile applications](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService.html#getMobileApplicationsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService.html#getMobileApplicationsByStatement") broken down by statement. |
| Native Styles by Statement | Returns a list of [native styles](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NativeStyleService.html#getNativeStylesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NativeStyleService.html#getNativeStylesByStatement") broken down by statement. |
| Orders by Statement | Returns a list of [orders](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/OrderService "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/OrderService") broken down by statement.  |
| Packages by Statement | Returns a list of [packages](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#getPackagesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#getPackagesByStatement") broken down by statement.  |
| Placements by Statement | Returns a list of [placements](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService.html#getPlacementsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService.html#getPlacementsByStatement") broken down by statement.  |
| Premium Rates by Statement | Returns a list of [premium rates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PremiumRateService.html#getPremiumRatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PremiumRateService.html#getPremiumRatesByStatement") broken down by statement.  |
| Product Package Items by Statement | Returns a list of [product package items](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductPackageItemService.html#getProductPackageItemsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductPackageItemService.html#getProductPackageItemsByStatement") broken down by statement.  |
| Product Packages by Statement | Returns a list of [product packages](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductPackageService.html#getProductPackagesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductPackageService.html#getProductPackagesByStatement") broken down by statement.  |
| Products by Statement | Returns a list of [products](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductService.html#getProductsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductService.html#getProductsByStatement") broken down by statement.  |
| Product Templates by Statement | Returns a list of [product templates](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductTemplateService.html#getProductTemplatesByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProductTemplateService.html#getProductTemplatesByStatement") broken down by statement.  |
| Proposal Line Items by Statement | Returns a list of [proposal line items](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService.html#getProposalLineItemsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService.html#getProposalLineItemsByStatement") broken down by statement.  |
| Proposals by Statement | Returns a list of [proposals](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalService.html#getMarketplaceCommentsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalService.html#getMarketplaceCommentsByStatement")broken down by statement.  |
| Rate Cards by Statement | Returns a list of [rate cards](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/RateCardService.html#getRateCardsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/RateCardService.html#getRateCardsByStatement") broken down by statement.  |
| Reconciliation Line Items by Statement | Returns a list of [reconciliation line items](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService.html#getReconciliationOrderReportsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService.html#getReconciliationOrderReportsByStatement") broken down by statement.  |
| Reconciliation Orders by Statement | Returns a list of [reconciliation orders](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService.html#getReconciliationOrderReportsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService.html#getReconciliationOrderReportsByStatement") broken down by statement.  |
| Reconciliation Report Rows by Statement | Returns a list of [reconciliation report rows](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportRowService.html#getReconciliationReportRowsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportRowService.html#getReconciliationReportRowsByStatement") broken down by statement.  |
| Reconciliation Reports by Statement | Returns a list of [reconciliation reports](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportService.html#getReconciliationReportsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportService.html#getReconciliationReportsByStatement") broken down by statement.  |
| Saved Query | Runs and downloads a saved query using the [ReportS](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReportService "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReportService")[ervice.](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReportService)





**Important:** If you receive an error saying "ReportError.START\_DATE\_MORE\_THAN\_THREE\_YEARS\_AGO", then delete the saved queries from your Google Ad Manager account that have the start date older than 3 years.


 |
| Suggested AdUnits by Statement | Returns a list of [suggested AdUnits](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/SuggestedAdUnitService.html#getSuggestedAdUnitsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/SuggestedAdUnitService.html#getSuggestedAdUnitsByStatement") broken down by statement. |
| Teams by Statement | Returns a list of [teams](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/TeamService.html#getTeamsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/TeamService.html#getTeamsByStatement") broken down by statement.  |
| Users by Statement | Returns a list of [users](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/UserService.html#getUsersByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/UserService.html#getUsersByStatement") broken down by statement.  |
| User Team Associations by Statement | Returns a list of [user team associations](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/UserTeamAssociationService.html#getUserTeamAssociationsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/UserTeamAssociationService.html#getUserTeamAssociationsByStatement") broken down by statement.  |
| Workflow Requests by Statement | Returns a list of [workflow requests](https://developers.google.com/doubleclick-publishers/docs/reference/v201802/WorkflowRequestService.html#getWorkflowRequestsByStatement "https://developers.google.com/doubleclick-publishers/docs/reference/v201802/WorkflowRequestService.html#getWorkflowRequestsByStatement") broken down by statement.  |

 |
| Network Code | Select the network you want to retrieve information for. |
| AdUnit ID (optional) | Enter the ID for the AdUnit object you want to retrieve information for. |
| AdUnit Name (optional) | Enter the name of the AdUnit object you want to retrieve information for (255-character max). |
| AdUnit Code (optional) | Enter the code for the AdUnit object you want to retrieve information for. |
| AdUnit Status (optional) | Select a status to filter by, either **Any Value**, **Active, Archived,** or **Inactive**. |
| Last Modified Date (optional) | Select a last modified date in the date picker to filter by. |
| Company ID (optional) | Enter the ID of the company you want to retrieve information for. |
| Company Name (optional) | Enter the name of the company you want to retrieve information for. This field supports % wildcard characters. |
| Company Type (optional) | Select the type of company you want to retrieve information for. |
| ID (optional) | Enter the ID of the list item you want to retrieve information for. |
| Group ID (optional) | Enter the ID of the group you want to retrieve information for. |
| Name (optional) | Enter the name of the list item you want to retrieve information for. This field supports % wildcard characters. |
| Order IDs (optional) | Enter a comma-separated list of order IDs to retrieve information for. For example: 1234,9876,4565 |
| External ID (optional) | Enter the external ID of the list item you want to retrieve information for. This field supports % wildcard characters. |
| Is Missing Creatives (optional) | Select **Yes** if the content you want to retrieve information for is missing creatives. |
| Is Set Stop Box Enabled (optional) | Select **Yes** if the set stop box is enabled for the content you want to retrieve. |
| Delivery Rate Type (optional) | Select the delivery rate type for the content you want to retrieve. |
| Cost Type (optional) | Select the cost type for the content you want to retrieve. |
| Line Item Type (optional) | Select the line item type for the content you want to retrieve. |
| Status (optional) | Select the status for the content you want to retrieve. |
| Creation Date Time (optional) | Select the date of creation in the date picker for the content you want to retrieve. |
| Duration (optional) | Select whether you want to pull data for a specific date, a date range, or not at all. |
| Report Date (optional) | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date (optional) | Select the date for the report.  |
| Days Back (optional) | Enter the number of past days that should appear in the report.   |
| Start Date (optional) | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date (optional) | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date (optional) | Select the first date in your date range.  |
| Select Specific End Date (optional) | Select the second date in your date range.  |
| Days Back to Start From (optional) | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At (optional) | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Order ID (optional) | Enter the ID of the Order object you want to retrieve information for. |
| Order Name (optional) | Enter the name of the Order object you want to retrieve information for. This field supports % wildcard characters. |
| Advertiser ID (optional) | Enter the ID of the advertiser you want to retrieve information for. |
| Salesperson ID (optional) | Enter the ID of the salesperson you want to retrieve information for. |
| Trafficker ID (optional) | Enter the ID of the trafficker you want to retrieve information for. |
| Order Status (optional) | Select an order status to filter by. |
| Saved Query (optional) | Select the saved query you want to run. |
| Impressions Look Back (optional) | Enter the number of days (1 to 30) for which you want to retrieve view-through conversions for users who have viewed a DFP ad. |
| Clicks Look Back (optional) | Enter the number of days (1 to 30) for which you want to retrieve click-through conversions for users who have clicked on a DFP ad. |
| Priority (optional) | Enter the priority value for which you want to retrieve data. You can enter any value between 1 and 1000, with 1 being the highest priority. |
| Rate Card ID (optional) | Enter the ID of the rate card you want to retrieve data for. |
| Master Creative ID (optional) | Enter the ID of the master creative you want to retrieve data for. |
| Ordering  | Select how you want your wrappers to be ordered. |
| Entity Type | Select the type of entity you want to retrieve data for. |
| Visibility | Select the visibility filter you want for your data. |
| Refresh Rate | Select the refresh rate you want to retrieve data for. |
| Direction | Select the direction for your data. |


### FAQs


#### I successfully created a Google Ad Manager account for pulling data from Google, but later got an alert: "SOMETHING WENT WRONG GETTING DATA!" in the SAVED QUERY field. It shows getting "Domo is ready, but Google Ad Manager requires a start date of fewer than 3 years ago." error. Why is this happening and what can I do about it?


The reason for this is that there are reports with a Start Date older than 3 years stored in the Google Ads Manager Console.


This error can be avoided by manipulating the Ads Manager Console and removing reports with a Start Date older than 3 years.


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  

