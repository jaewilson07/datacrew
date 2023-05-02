

Intro
-------

ExactTarget (now known as Salesforce Marketing Cloud) is a provider of digital marketing automation and analytics software and services. It develops marketing automation and analytics software for email, mobile, social and online marketing. Use Domo's ExactTarget connector to compile reports about accounts, groups, and email activity.  For more information about the ExactTarget API, visit their website. (

https://developer.salesforce.com/doc...index-api.html

— SOAP only)


 The Salesforce ExactTarget connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your ExactTarget account in the Data Center. This topic discusses the fields and menus that are specific to the ExactTarget connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Domo's ExactTarget connector lets you track social media engagement, e-mail marketing campaigns, and mobile (SMS) marketing. You can also get pre-aggregated social media metrics from across platforms.
  |
|
**Primary Metrics**
 | * Impressions
* Engagement
* Retweets
* Likes
* Sends
* Opens
 |
|
**Primary Company Roles**
 | * Marketing Director
* Marketing Manager
 |
|
**Average Implementation Time**
 |
 Could take several hours, especially if you are requesting a lot of data, as the API requests data at only 2500 rows at a time. If the connector times out, use date filtering to request less data.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 6
  |

Best Practices
----------------

For best results, make sure you have verified your credentials and have list IDs if you plan to pull Send reports for specific lists.


 Prerequisites
---------------

To connect to your ExactTarget account and create a DataSet, you must have the following:

 Your ExactTarget username
* Your ExactTarget password
* Your SOAP service endpoint

Your SOAP Service Endpoint is located either under the
 **Account Settings in Setup**
 or under the
 **User Settings in Cloud Preferences**
 .


 Example:

https://mc563885gzs27c5t9-63k636ttgm.soap.marketingcloudapis.com/Service.asmx

Additionally, you must configure API access in ExactTarget for the user who will be connecting in Domo. You can do this by following these steps:

. In your ExactTarget instance, navigate to
 **Email > Admin > My Users**
 .
2. Check the box the user you want to enable access for.
3. Click
 **Manage Roles**
 .
4. Click
 **Edit Permissions**
 .
5. Expand
 **Automation Studio > Automation**
 .
6. Check the box to the right of
 **Execute (API)**
 .
7. Return to the
 **Users**
 listing and click the name of the user.
8. Click
 **Edit**
 .
9. Check the box for
 **API User**
 .

Connecting to Your ExactTarget Account
----------------------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the ExactTarget Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your ExactTarget account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your ExactTarget username.
  |
|
 Password
  |
 Enter your ExactTarget password.
  |
|
 SOAP Service Endpoint
  |
 Enter your SOAP service endpoint here. See "Prerequisites" for more information.
  |

For information about obtaining a ExactTarget (Salesforce Marketing Cloud) account, visit

www.exacttarget.com.

Once you have entered valid ExactTarget credentials, you can use the same account any time you go to create a new ExactTarget DataSet. You can manage connector accounts in the

*Accounts**

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a
 **Report

s**
 menu in which you can select from one of dozens of different ExactTarget report types. The following table lists and describes these reports:


 Report
  |
 Description
  |
| --- | --- |
|
 Account Report
  |
 Returns information about the account, such as creation date, account type, contact information, etc.
  |
|
 Account User Report
  |
 Returns information about users of the account, such as contact information, user ID, etc.
  |
|
 Automation Report
  |
 Returns information about automations that exist within Automation Studio for the account.
  |
|
 Bounce Event Report
  |
 Returns SMTP and other information pertaining to the specific event of an email message bounce.
  |
|
 Business Unit Report
  |
 Returns information about units within a larger Enterprise or Enterprise 2.0 account.
  |
|
 Click Event Report
  |
 Returns time and date information, as well as a URL ID and a URL, for clicks on links contained in a message.
  |
|
 Content Area Report
  |
 Returns information about defined sections of usable content.
  |
|
 Data Extension Field Report
  |
 Returns information about fields within data extensions in the account.
  |
|
 Data Extension Object Report
  |
 Returns information about objects within data extensions in the account.
  |
|
 Data Extension Template Report
  |
 Returns information about data extension templates within the account.
  |
|
 Data Folder Report
  |
 Returns information about folders in the account.
  |
|
 Doubt Opt In MO Keyword Report
  |
 Returns MO keywords that allow mobile users to subscribe to SMS messages using a double opt-in workflow.
  |
|
 Email Report
  |
 Returns information about the authenticated user's saved emails, such as subject line, body text, creation date, etc.
  |
|
 Email Send Definition Report
  |
 Returns email message information, sender profile, delivery profile, and audience information.
  |
|
 Extract Definition Report
  |
 Returns information about extract requests.
  |
|
 Extract Description Report (future use)
  |
 Returns information about a specific data extract.
  |
|
 File Trigger Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about file trigger.
  |
|
 File Trigger Type Last Pull Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about file trigger last pull.
  |
|
 Filter Definition Report
  |
 Returns information about filter definitions.
  |
|
 Forwarded Email Event Report
  |
 Returns events in which subscribers used the 'Forward To A Friend' feature to send an email to another person.
  |
|
 Forwarded Email Opt In Event Report
  |
 Returns information about opt-in events related to 'Forward To A Friend' events.
  |
|
 Global Unsubscribe Category Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about global unsubscribe categories.
  |
|
 Group Report
  |
 Retrieves information about groups of subscribers defined in the application UI.
  |
|
 Help MO Keyword Report
  |
 Returns actions associated with the HELP SMS keyword for an account.
  |
|
 Import Definition Report
  |
 Returns reusable patterns of import options.
  |
|
 Import Results Summary Report
  |
 Returns retrieve-only objects containing status and aggregate information on individual imports started from an ImportDefinition.
  |
|
 Link Send Report
  |
 Returns information about links in sends.
  |
|
 List Attribute Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about a list attribute.
  |
|
 List Report
  |
 Returns a marketing list of subscribers.
  |
|
 List Send Report
  |
 Returns information about lists for a completed send.
  |
|
 List Subscriber Report
  |
 Returns subscribers for lists.
  |
|
 Messaging Configuration Report (deprecated)
  |
 Returns messaging configuration details.
  |
|
 Messaging Vendor Kind Report (deprecated)
  |
 Returns the vendor details for an SMS (short message service) or voice messaging vendor.
  |
|
 New Link Send Report
  |
 Returns information about links in sends selected by send dates.
  |
|
 Open Event Report
  |
 Returns information about the opening of messages sent to subscribers.
  |
|
 Portfolio Report
  |
 Returns a list of files within the Portfolio of the account.
  |
|
 Private IP Report
  |
 Returns information about private IP address to be used as part of message sends.
  |
|
 Program Manifest Template Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about the program manifest template.
  |
|
 Public Key Management Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE'. Returns information about public key management.
  |
|
 Publication Report (future use)
  |
 Salesforce indcates 'NOT CURRENTLY AVAILABLE' but returns information about a publication.
  |
|
 Publication Subscriber Report (future use)
  |
 Returns information about a subscriber on a publication list.
  |
|
 Query Definition Report (future use)
  |
 Returns information about a SQL query activity accessed and performed by the SOAP API.
  |
|
 Reply Mail Management Configuration Report
  |
 Returns configuration settings for the reply mail management in the account.
  |
|
 Result Item Report
  |
 Returns results of asynchronous API calls.
  |
|
 Result Message Report
  |
 Returns details about messages containing results of asynchronous API calls.
  |
|
 Role Report
  |
 Returns a list of roles and permissions assigned to users in the account.
  |
|
 Send Additional Attribute Report
  |
 Returns additional attributes associated with sends.
  |
|
 Send Classification Report
  |
 Returns information about send classifications in the account.
  |
|
 Send Email MO Keyword Report
  |
 Returns information about actions that sent triggered email messages to the email addresses defined in an MO message.
  |
|
 Send Report
  |
 Returns information about a user's email send activity.
  |
|
 Send SMS MO Keyword Report
  |
 Returns information about actions taken when a specified MO keyword is received.
  |
|
 Sent Event Report
  |
 Returns tracking data related to a send, including information on individual subscribers.
  |
|
 SMS MT Event Report
  |
 Returns information about SMS messages sent to subscribers.
  |
|
 SMS Shared Keyword Report
  |
 Returns information about keywords used with SMS messages.
  |
|
 SMS Triggered Send Report
  |
 Returns information about SMS triggered sends.
  |
|
 Subscriber Report
  |
 Returns the list of subscribers.
  |
|
 Subscriber List Report
  |
 Returns lists for a given subscriber.
  |
|
 Subscriber Send Result Report (future use)
  |
 Salesforce indicates 'NOT CURRENTLY AVAILABLE' but returns information about a subscriber send result.
  |
|
 Subscribers Detail by List Report
  |
 Returns the details for a specific list.
  |
|
 Subscribers Events by List Report
  |
 Returns the list of subscribers.
  |
|
 Suppression List Context Report
  |
 Returns contexts that SuppressionListDefinitions can be associated with.
  |
|
 Suppression List Definition Report
  |
 Returns suppression lists that can be associated with different contexts.
  |
|
 Survey Event Report
  |
 Returns information about survey response events.
  |
|
 Template Report
  |
 Returns information about email templates.
  |
|
 Time Zone Report
  |
 Returns information about time zones in the application.
  |
|
 Triggered Send Definition Report
  |
 Returns definition information about triggered sends.
  |
|
 Triggered Send Summary Report
  |
 Returns results summary information for triggered email sends.
  |
|
 Unsubscribe Event Report
  |
 Returns information about unsubscribe events.
  |
|
 Unsubscribe from SMS Publication MO Keyword Report
  |
 Returns keywords used by subscribers to unsubscribe from an SMS publication list.
  |

Report Fields
---------------

The following table shows the fields available for all the reports using this connector:


 Report Name
  |
 Fields
  |
| --- | --- |
|
 Account Report
  |
 {ID, CreatedDate, AccountType, Address, BrandID, BusinessName, City, Country, CustomerKey, DeletedDate, EditionID, Email, Fax, InheritAddress, IsActive, IsTestAccount, IsTrialAccount, ParentID, ParentName, PartnerKey, Phone, PrivateLabelID, State, Zip};
  |
|
 Account User Report
  |
 {ID, AccountUserID, ActiveFlag,  ChallengeAnswer, ChallengePhrase,

Client.ID

, CreatedDate, CustomerKey, DefaultBusinessUnit,  Email, IsAPIUser, IsLocked, LastSuccessfulLogin, ModifiedDate, MustChangePassword, Name, NotificationEmailAddress, Password, UserID};
  |
|
 Automation Report
  |
 {ID, AutomationSource, AutomationTasks, AutomationType,

Client.ID

, CorrelationID, CreatedDate, CustomerKey, Description,  InteractionObjectID, IsActive, Keyword, ModifiedDate, Name, Notifications, ObjectID, ObjectState, PartnerKey,  Schedule, ScheduledTime, Status};
  |
|
 Bounce Event Report
  |
 {ID, AutomationSource, AutomationTasks, AutomationType,

Client.ID

, CorrelationID, CreatedDate, CustomerKey, Description,  InteractionObjectID, IsActive, Keyword, ModifiedDate, Name, Notifications, ObjectID, ObjectState, PartnerKey,  Schedule, ScheduledTime, Status};
  |
|
 Content Area Report
  |
 {ID,  CategoryID,

Client.ID

, Content, CreatedDate, CustomerKey, IsBlank, IsDynamicContent, IsSurvey, Key, Layout, ModifiedDate, Name, ObjectID};
  |
|
 Click Event Report
  |
 {ID, BatchID,

Client.ID

, CreatedDate,  EventDate, EventType, ModifiedDate, ObjectID, PartnerKey, SendID, SubscriberKey, TriggeredSendDefinitionObjectID, URL, URLID};
  |
|
 Data Extension Field Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, DefaultValue, FieldType, IsPrimaryKey, IsRequired, MaxLength,  ModifiedDate, Name, ObjectID, Ordinal,  PartnerKey, Scale};
  |
|
 Data Extension Object Report
  |
 UNDER CONSTRUCTION
  |
|
 Data Extension Template Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, Description, ModifiedDate, Name, ObjectID, PartnerKey, };
  |
|
 Data Folder Report
  |
 {ID, AllowChildren,

Client.ID

, ContentType, CreatedDate, CustomerKey, Description, IsActive, IsEditable, ModifiedDate, Name, ObjectID};
  |
|
 Double Opt in MO Keyword Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, InvalidPublicationMessage, InvalidResponseMessage, IsDefaultKeyword, MissingPublicationMessage, ModifiedDate, NeedPublicationMessage, PromptMessage, SuccessMessage , UnexpectedErrorMessage, ValidPublications, ValidResponses};
  |
|
 Email Report
  |
 {Name,

Client.ID

, ID, EmailType, CreatedDate, Status, Subject, CharacterSet, ClonedFromID, ContentCheckStatus, CustomerKey, Folder, PartnerKey, TextBody};
  |
|
 Email Send Definition Report
  |
 {Additional, AutoBccEmail, BccEmail,CategoryID, CCEmail,

Client.ID

, CreatedDate, CustomerKey, DeduplicateByEmail, Description, DynamicEmailSubject,  EmailSubject, ExclusionFilter,  IsMultipart, IsSendLogging, IsWrapped, ModifiedDate, Name, ObjectID, SendDefinitionList, SendLimit, SendWindowClose, SendWindowOpen, SuppressTracking, TestEmailAddr};
  |
|
 Extract Definition Report
  |
 {ID,

Client.ID

, ConfigurationPage, CorrelationID, CreatedDate, CustomerKey, ModifiedDate, Name, ObjectID, ObjectState,  PackageKey,

Parameters, PartnerKey, Values};
  |
|
 Extract Description Report
  |
 {ID,

Client.ID

, ConfigurationPage, CorrelationID, CreatedDate, CustomerKey, ModifiedDate, Name, ObjectID, ObjectState,  PackageKey,

Parameters, PartnerKey, };
  |
|
 File Trigger Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, Description, ExternalReference, FileName, IsActive, LastPullDate, ModifiedDate, Name, ObjectID,  RequestParameterDetail, ResponseControlManifest, ScheduledDate, Status, StatusMessage, Type};
  |
|
 File Trigger Type Last Pull Report
  |
 {

Client.ID

,  ExternalReference, LastPullDate, ObjectID, Type};
  |
|
 Filter Definition Report
  |
 {CategoryID,

Client.ID

, CreatedDate, CustomerKey, DataFilter, Description, ModifiedDate, Name, ObjectID};
  |
|
 Forwarded Email Event Report
  |
 {ID, BatchID,

Client.ID

, CreatedDate, EventDate, EventType, ModifiedDate, ObjectID, PartnerKey, SendID, SubscriberKey, TriggeredSendDefinitionObjectID};
  |
|
 Forwarded Email Opt-in Event Report
  |
 {ID, BatchID,

Client.ID

,  CreatedDate, EventDate, EventType, ModifiedDate, ObjectID,  OptInSubscriberKey,  PartnerKey,  SendID, SubscriberKey, TriggeredSendDefinitionObjectID};
  |
|
 Global Unsubscribe Category Report
  |
 {ID,

Client.ID

, CorrelationID, CreatedDate, CustomerKey, IgnorableByPartners, Ignore, ModifiedDate, Name, ObjectID, ObjectState, PartnerKey, };
  |
|
 Group Report
  |
 {ID,

Client.ID

, ObjectID, Name, CreatedDate, Description, PartnerKey};
  |
|
 Help MO Keyword Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, DefaultHelpMessage, FriendlyName, IsDefaultKeyword, MenuText, ModifiedDate, MoreChoicesPrompt};
  |
|
 Import Definition Report
  |
 {AllowErrors,  CustomerKey, Delimiter, Description, EndOfLineRepresentation, FieldMappingType, FileSpec, FileType, HeaderLines, MaxFileAge, MaxFileAgeScheduleOffset, MaxImportFrequency, Name, NullRepresentation, ObjectID,

PartnerKey, StandardQuotedStrings, UpdateType};
  |
|
 Import Results Summary Report
  |
 {ID,

Client.ID

, DestinationID, EndDate, ImportDefinitionCustomerKey, ImportStatus, ImportType, NumberDuplicated, NumberErrors, NumberSuccessful, ObjectID,   StartDate, TaskResultID, TotalRows};
  |
|
 Link Send Report
  |
 {ID,

Client.ID

, ObjectID, PartnerKey,  SendID};
  |
|
 New Link Send Report
  |
 {ID,

Client.ID

, ObjectID, PartnerKey,  SendID, Link.Alias, Link.URL, Link.TotalClicks, Link.UniqueClicks};
  |
|
 List Report
  |
 {ID, Category,

Client.ID

,  CreatedDate, CustomerKey, Description, ListClassification, ListName, ModifiedDate, ObjectID, PartnerKey,  Type};
  |
|
 List Attribute Report
  |
 {ID,

Client.ID

, CreatedDate, DefaultValue, Description, FieldLength, FieldType, Inheritable, IsHidden, IsNullable, IsReadOnly, MaxValue, MinValue, ModifiedDate, MustOverride, Name, ObjectID, Ordinal, Overridable, OverrideType, RestrictedValues, Scale};
  |
|
 List Send Report
  |
 {ID,

Client.ID

, Duplicates, ExistingUndeliverables, ExistingUnsubscribes, ForwardedEmails, HardBounces, InvalidAddresses, MissingAddresses, NumberDelivered, NumberSent, OtherBounces,  PartnerKey,  PreviewURL, SendID, SoftBounces, UniqueClicks, UniqueOpens, Unsubscribes,

List.ID

, List.ListName, EmailName, SendDate};
  |
|
 List Subscriber Report
  |
 {ID,

Client.ID

, CreatedDate, ListID, ModifiedDate, ObjectID, Status, SubscriberKey};
  |
|
 Messaging Configuration Report
  |
 {CallbackUrl,

Client.ID

, Code, CreatedDate, IsActive, MediaTypes, ModifiedDate, ObjectID, Password, ProfileID, Url, UserName};
  |
|
 Messaging Vendor Kind Report
  |
 {ID, CreatedDate, IsPasswordRequired, IsProfileRequired, IsUsernameRequired, Kind, ModifiedDate, Vendor};
  |
|
 Open Event Report
  |
 {ID, BatchID,

Client.ID

, CreatedDate, EventDate, EventType, ModifiedDate, ObjectID, PartnerKey, SendID, SubscriberKey, TriggeredSendDefinitionObjectID};
  |
|
 Portfolio Report
  |
 {CacheClearTime, CategoryID, CategoryType,

Client.ID

, CreatedDate, CustomerKey, Description, DisplayName, FileHeightPX, FileName, FileSizeKB, FileURL, FileWidthPX, IsActive, IsUploaded, ModifiedDate, ObjectID, PartnerKey, ThumbSizeKB, ThumbURL, TypeDescription};
  |
|
 Private IP Report
  |
 {ID,

Client.ID

, CreatedDate, Description, IPAddress, IsActive, Name, OrdinalID,  PartnerKey};
  |
|
 Program Manifest Template Report
  |
 {

Client.ID

, Content, CreatedDate, CustomerKey, ModifiedDate, ObjectID, OperationType, Type};
  |
|
 Publication Report
  |
 {ID, Category,

Client.ID

, CreatedDate, ModifiedDate, Name, PartnerKey};
  |
|
 Publication Subscriber Report
  |
 {

Client.ID

};
  |
|
 Public Key Management Report
  |
 {

Client.ID

};
  |
|
 Query Definition Report
  |
 {CategoryID,

Client.ID

, CreatedDate, CustomerKey, Description, FileSpec, FileType, ModifiedDate, Name, ObjectID,  QueryText, Status, TargetType, TargetUpdateType};
  |
|
 Reply Mail Management Configuration Report
  |
 {ID, AutoReplyBody, AutoReplySubject,

Client.ID

, CreatedDate, DeleteAutoReplies, DNSRedirectComplete, EmailDisplayName, EmailReplyAddress, ForwardingAddress, ModifiedDate, ReplySubdomain, SendAutoReplies, SupportLeaveKeyword, SupportMisspelledKeywords, SupportOptOutKeyword, SupportRemoveKeyword, SupportUnsubKeyword, SupportUnsubscribeKeyword, SupportUnsubscribes};
  |
|
 Result Item Report
  |
 {

Client.ID

, ConversationID, CorrelationID, CreatedDate, ErrorCode, OrdinalID, RequestID, RequestObjectType, RequestType, StatusCode, StatusMessage};
  |
|
 Result Message Report
  |
 {CallsInConversation,

Client.ID

, ConversationID, CreatedDate, ErrorCode, OverallStatusCode,  RequestID, RequestType, ResultType, SequenceCode, StatusCode, StatusMessage};
  |
|
 Role Report
  |
 {

Client.ID

, CreatedDate, CustomerKey,  Description, IsPrivate, IsSystemDefined, ModifiedDate, Name, ObjectID, Permissions, PermissionSets};
  |
|
 Send Report
  |
 {ID,

Client.ID

, CreatedDate, PreviewURL, SendDate, SendLimit, EmailName, ExistingUndeliverables, ExistingUnsubscribes, ForwardedEmails, FromAddress, FromName, HardBounces, InvalidAddresses, MissingAddresses, NumberErrored, NumberExcluded, NumberTargeted, OtherBounces, PartnerKey, SendWindowClose, SendWindowOpen, SoftBounces, Status, Subject, UniqueClicks, UniqueOpens, Unsubscribes, NumberSent, NumberDelivered};
  |
|
 Send Additional Attribute Report
  |
 {

Client.ID

};
  |
|
 Send Classification Report
  |
 {ArchiveEmail,

Client.ID

, CreatedDate, CustomerKey, Description, ModifiedDate, Name, ObjectID, PartnerKey, SendClassificationType};
  |
|
 Send Email MO Keyword Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, FailureMessage, IsDefaultKeyword, MissingEmailMessage, ModifiedDate, SuccessMessage};
  |
|
 Send SMS MO Keyword Report
  |
 {

Client.ID

, CreatedDate, CustomerKey, IsDefaultKeyword, Message, ModifiedDate, ObjectID, ScriptErrorMessage};
  |
|
 Sent Event Report
  |
 {BatchID,

Client.ID

, EventDate, EventType, PartnerKey, SendID, SubscriberKey, TriggeredSendDefinitionObjectID};
  |
|
 SMS MT Event Report
  |
 {Carrier,

Client.ID

, EventDate, MOCode, ObjectID};
  |
|
 SMS Shared Keyword Report
  |
 {

Client.ID

, CreatedDate, EffectiveDate, ExpireDate, ModifiedDate, RequestDate, ReturnToPoolDate, SharedKeyword, ShortCode};
  |
|
 SMS Triggered Send Report
  |
 {

Client.ID

, CreatedDate, ObjectID, SmsSendId};
  |
|
 Subscribers Details by List Report
  |
 {

Client.ID

, PartnerKey, CreatedDate, ID, EmailAddress, SubscriberKey, Status, EmailTypePreference, UnsubscriberDate} plus custom attributes that have been defined for subscribers in Exact Target.
  |
|
 Subscribers Events by List Report
  |
 UNDER CONSTRUCTION
  |
|
 Subscriber List Report
  |
 {ID,

Client.ID

, CreatedDate, ModifiedDate, PartnerKey, Status,

List.ID

, List.ListName, Subscriber.Status, Subscriber.CreatedDate,

Subscriber.ID

, Subscriber.EmailAddress, Subscriber.SubscriberKey, Subscriber.UnsubscribedDate};
  |
|
 Subscriber Send Result Report
  |
 {ID, BounceDate, ClickDate,

Client.ID

, FromAddress, FromName, HardBounces, OpenDate, OtherBounces,  PartnerKey, SentDate, SoftBounces, Subject, TotalClicks, UniqueClicks, UnsubscribeDate};
  |
|
 Suppression List Context Report
  |
 {AppliesToAllSends,

Client.ID

, Context, CreatedDate, ModifiedDate, ObjectID, SendClassificationType};
  |
|
 Suppression List Definition Report
  |
 {Category,

Client.ID

, CreatedDate, CustomerKey, Description, ModifiedDate, Name, ObjectID, SubscriberCount};
  |
|
 Survey Event Report
  |
 {ID, Answer, BatchID,

Client.ID

, CreatedDate, EventDate, EventType, ModifiedDate, ObjectID, PartnerKey, Question, SendID, SubscriberKey, TriggeredSendDefinitionObjectID};
  |
|
 Template Report
  |
 {ID, ActiveFlag, Align, BackgroundColor, BorderColor, BorderWidth, CategoryID, CategoryType,

Client.ID

, Cellpadding, Cellspacing, CustomerKey, IsTemplateSubjectLocked, LayoutHTML, ObjectID, OwnerID, TemplateName, TemplateSubject, Width};
  |
|
 Time Zone Report
  |
 {ID, Name};
  |
|
 Triggered Send Definition Report
  |
 {AllowedSlots, AutoAddSubscribers, AutoUpdateSubscribers, BatchInterval, BccEmail, CategoryID,

Client.ID

, CreatedDate, CustomerKey, Description, DynamicEmailSubject, EmailSubject, FromAddress, FromName, IsMultipart, IsWrapped, Keyword, ModifiedDate, Name, NewSlotTrigger, ObjectID, PartnerKey, Priority, SendLimit, SendWindowClose, SendWindowOpen, SuppressTracking, TriggeredSendStatus, TriggeredSendType};
  |
|
 Triggered Send Summary Report
  |
 {Bounces, Clicks,

Client.ID

, Conversions, CustomerKey, FTAFEmailsSent, FTAFOptIns, FTAFRequests, InProcess,  NotSentDueToError, NotSentDueToOptOut, NotSentDueToUndeliverable, ObjectID, Opens, OptOuts, PartnerKey,  Queued, Sent, SurveyResponses, UniqueClicks, UniqueConversions, UniqueOpens};
  |
|
 Unsubscribe from SMS Publication MO Keyword Report
  |
 {AllUnsubSuccessMessage,

Client.ID

, CreatedDate, CustomerKey, InvalidPublicationMessage, IsDefaultKeyword, ModifiedDate, SingleUnsubSuccessMessage};
  |
|
 Unsubscribe Event Report
  |
 {BatchID,

Client.ID

,CreatedDate, EventDate, EventType, PartnerKey,ID,IsMasterUnsubscribed,ModifiedDate, SendID, SubscriberKey, TriggeredSendDefinitionObjectID,

List.ID

}
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQs
------


####
 Which method does each report call in this connector?


|
 Report Name
  |
 Method Name
  |
| --- | --- |
|
 Account Report
  |
 Account
  |
|
 Account User Report
  |
 AccountUser
  |
|
 Automation Report
  |
 Automation
  |
|
 Bounce Event Report
  |
 BounceEvent
  |
|
 Business Unit Report
  |
 BusinessUnit
  |
|
 Click Event Report
  |
 ClickEvent
  |
|
 Content Area Report
  |
 ContentArea
  |
|
 Data Extension Field Report
  |
 DataExtension
  |
|
 Data Extension Object Report
  |
 DataExtensionObject
  |
|
 Data Extension Template Report
  |
 DataExtensionTemplate
  |
|
 Data Folder Report
  |
 DataFolder
  |
|
 Doubt Opt in MO Keyword Report
  |
 DoubleOptInMOKeyword
  |
|
 Email Report
  |
 Email
  |
|
 Email Send Definition Report
  |
 EmailSendDefinition
  |
|
 Extract Definition Report
  |
 ExtractDefinition
  |
|
 Extract Description Report (future use)
  |
 ExtractDescription
  |
|
 File Trigger Report (future use)
  |
 FileTrigger
  |
|
 File Trigger Type Last Pull Report (future use)
  |
 FileTriggerTypeLastPull
  |
|
 Filter Definition Report
  |
 FilterDefinition
  |
|
 Forwarded Email Event Report
  |
 ForwardedEmailEvent
  |
|
 Forwarded Email Opt in Event Report
  |
 ForwardedEmailOptInEvent
  |
|
 Global Unsubscribe Category Report (future use)
  |
 GlobalUnsubscribeCategory
  |
|
 Group Report
  |
 Group
  |
|
 Help MO Keyword Report
  |
 HelpMOKeyword
  |
|
 Import Definition Report
  |
 ImportDefinition
  |
|
 Import Results Summary Report
  |
 ImportResultsSummary
  |
|
 Link Send Report
  |
 LinkSend
  |
|
 List Attribute Report (future use)
  |
 ListAttribute
  |
|
 List Report
  |
 List
  |
|
 List Send Report
  |
 ListSend
  |
|
 List Subscriber Report
  |
 ListSubscriber
  |
|
 Messaging Configuration Report (deprecated)
  |
 MessagingConfiguration
  |
|
 Messaging Vendor Kind Report (deprecated)
  |
 MessagingVendorKind
  |
|
 New Link Send Report
  |
 LinkSend
  |
|
 Open Event Report
  |
 OpenEvent
  |
|
 Portfolio Report
  |
 Portfolio
  |
|
 Private IP Report
  |
 PrivateIP
  |
|
 Program Manifest Template Report (future use)
  |
 ProgramManifestTemplate
  |
|
 Public Key Management Report (future use)
  |
 PublicKeyManagement
  |
|
 Publication Report (future use)
  |
 Publication
  |
|
 Publication Subscriber Report (future use)
  |
 PublicationSubscriber
  |
|
 Query Definition Report (future use)
  |
 QueryDefinition
  |
|
 Reply Mail Management Configuration Report
  |
 ReplyMailManagementConfiguration
  |
|
 Result Item Report
  |
 ResultItem
  |
|
 Result Message Report
  |
 ResultMessage
  |
|
 Role Report
  |
 Role
  |
|
 Send Additional Attribute Report
  |
 SendAdditionalAttribute
  |
|
 Send Classification Report
  |
 SendClassification
  |
|
 Send Email MO Keyword Report
  |
 SendEmailMOKeyword
  |
|
 Send Report
  |
 Send
  |
|
 Send SMS MO Keyword Report
  |
 SendSmsMOKeyword
  |
|
 Sent Event Report
  |
 SentEvent
  |
|
 SMS MT Event Report
  |
 SMSMTEvent
  |
|
 SMS Shared Keyword Report
  |
 SMSSharedKeyword
  |
|
 SMS Triggered Send Report
  |
 SMSTriggeredSend
  |
|
 Subscribers Report
  |
 Subscriber
  |
|
 Subscriber List Report
  |
 SubscriberList
  |
|
 Subscriber Send Result Report (future use)
  |
 SubscriberSendResult
  |
|
 Subscriber Detail by List Report
  |
 SubscriberListByList
  |
|
 Subscribers Events by List Report
  |
 EventForSubscribersByList
  |
|
 Suppression List Context Report
  |
 SuppressionListContext
  |
|
 Suppression List Definition Report
  |
 SuppressionListDefinition
  |
|
 Survey Event Report
  |
 SurveyEvent
  |
|
 Template Report
  |
 Template
  |
|
 Time Zone Report
  |
 TimeZone
  |
|
 Triggered Send Definition Report
  |
 TriggeredSendDefinition
  |
|
 Triggered Send Summary Report
  |
 TriggeredSendSummary
  |
|
 Unsubscribe Event Report
  |
 UnsubEvent
  |
|
 Unsubscribe from SMS Publication MO Keyword Report
  |
 UnsubscribeFromSMSPublicationMOKeyword
  |


####
 What kind of credentials do I need to power up this connector?

You need the username and password associated with your Salesforce ExactTarget account. You also need your SOAP service endpoint. Your SOAP Service Endpoint is located either under the Account Settings in Setup or under the User Settings in Cloud Preferences.

###
 Do I need a certain kind of account with the data service to set up the connector?

Salesforce ExactTarget requires a set of parameters configured for your account on their website to enable API access. Visit

Salesforce ExactTarget Connector Knowledge Base > Prerequisites

for more information"

###
 Do I need to configure any additional permissions while setting up the Marketing Cloud user?

Authenticating with UsernameToken:

. When setting up the Marketing Cloud user, select API User.
2. For Marketing Cloud accounts with role-based permissions, select the Role > Email > Admin > API Access > WebServices API permission.
3. For accounts with legacy permissions, select the Grant the user access to the web services permission.
4. Now, enable the username and password security setting by clicking Setup > Security > Security Settings and find the setting under Username and Logins.


####
 Can this connector pull custom fields?

Yes

###
 Why do I get a timeout issue? How do I fix it?

Timeout issues may occur if your dataset is fetching a large amount of data. To deal with a timeout issue use the dates to filter the data. There is no limit to the date range.

###
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------

If you encounter timeout issues (which is a possibility when creating a large amount of data), use the dates to filter the data. There is no limit to the date range (it will request the data in chunks). There is also no API calls limit with this connector.

