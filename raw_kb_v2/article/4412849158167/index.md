

Intro
---------

Cloud Amplifier provides a native integration with cross-cloud systems to unlock data products at the speed your business needs them.

##
 Why Cloud Amplifier?


* **IT limitations —**
 IT alone cannot realize the full potential of data. A broad and inclusive approach with all LOBs is required, and all valuable data is not yet controlled by IT.
* **Increased stress and time constraints —**
 Business users demand timely access to data products, increasing the pressure to deliver.
* **Rigidity and friction in data processes —**
 Rigid processes and tooling prevent the building of databases in a speedy and flexible manner, requiring too much time effort.

Cloud Amplifier can provide solutions for


 these issues and more.


 This article provides information about configuring Cloud Amplifier for your Domo environment in the following topics:

 Required grants
* Setup
* Best practices
* Federated data vs. Cloud Amplifier
* Technical FAQ

Required Grants
-------------------

After Cloud Amplifier is enabled for your Domo environment, you can assign the following Cloud Amplifier grants to manage access to these features:

 **Manage Cloud Accounts**
 — Allows a user to add/remove cloud accounts and add/remove tables from a cloud account. This grant also allows a user to change the default storage cloud.

*Note:**
 This grant must be assigned to a user with the Manage DataSet grant to work properly.
* **Override Default Cloud**
 — Allows a user to use any storage cloud account that is shared with them instead of the default cloud. If you do not have this grant, you can't use any other cloud besides the default cloud.

*Note:**
 This grant must be assigned to a user with the Edit DataSet or Manage DataSet grant to work properly.

Setup
---------

To enable Cloud Amplifier, contact your Customer Success Manager (CSM) or Account Executive (AE). You can then connect your existing data warehouses from the providers listed below. Each provider has their own unique requirements, and you can follow the links below to see the documentation for each provider and their requirements.


 Available providers include:

 Snowflake
* Dremio


 Support for the following providers is in beta as of March 2023. To join the beta for one of these providers, contact your CSM or AE.
 * BigQuery (Read only)
* Databricks (Read only)
* Redshift (Read only)


####
 Defaults

Cloud Amplifier allows you to specify a default storage account for all DataSets. Changing these settings does not change existing DataSets or DataFlows. These defaults are only used for new assets.

Back to top

Best Practices
------------------

We recommend you choose a default storage cloud. To do this, follow the steps below:

. In the Domo navigation header, go to
 **More**
 >
 **Admin**
 .
2. Under
 **Features**
 , select
 **Cloud Amplifier**
 .
3. On the
 **Cloud Amplifier**
 page, select an option from the
 **Select the default storage cloud**
 list.


 We recommend that you set up your Cloud Amplifier connections using a service account.


 If you need to move a DataSet from one warehouse to another, you can use Magic ETL to copy a specific DataSet hosted in your database and materialize it in Domo, where it runs on a schedule.


 Back to top

Federated Data vs. Cloud Amplifier
--------------------------------------

The table below compares federated data to Cloud Amplifier read and read/write configurations:


 Capability
  |
 Federated-Direct Query
  |
 Cloud Amplifier Integration (Read-Adapter)
  |
 Cloud Amplifier Integration (Read/Write Adapter)
  |
| --- | --- | --- | --- |
|
 Visualize data from existing tables

- Create cards

- Create dashboards
  |

|  |  |
|
 Visualize on-premise data behind firewall via an agent
  |

|

|  |
|
 Get updated metadata from source tables

- Last updated time

- Updated row count
  |

|

(
 **Every 15 minutes

Configurable**
 )

|


 (
 **Every 15 minutes

Configurable**
 )
  |
|
 Card Alerts
  |

|


 (
 **Every 15 minutes

Configurable**
 )
  |


 (
 **Every 15 minutes

Configurable**
 )
  |
|
 DataSet Alerts
  |  |


 (
 **Every 15 minutes

Configurable**
 )
  |


 (
 **Every 15 minutes

Configurable**
 )
  |
|
 DataSet Views
  |  |  |  |
|
 Use data from existing tables in Magic ETL as inputs
  |  |  |  |
|
 Use data updates from existing tables to trigger other DataFlows
  |  |  |  |
|
 Custom fiscal calendar for source table data (one per instance)
  |  |  |  |
|
 Use Domo Connectors, Workbench, SDK, CLI to write to customer-owned EDW/Data Lake
  |  |  |

*Native direct rewrite**
 |
|
 Write Magic ETL output to customer-owned EDW/Data Lake
  |  |  |

*Native direct rewrite**
 |
|
 PDP | Governance
  |  |  |  |
|
 Domo App Support
  |  |  |  |
|
 Jupyter Workspace Support
  |  |  |  |
|
 Domo auto-caching of card loads
  |

*Set static TTL on each DataSet**
 |  |  |


 Back to top
----------------


 Technical FAQ
------------------


###
 General

*How do Cloud Amplifier DataSets impact DataFlows scheduled to run when a DataSet refreshes?**


 Cloud Amplifier DataSets operate the same as Domo DataSets. Additionally, Magic ETL can trigger the ETL to run when the data is updated in your database.


 By default, Domo polls the database metadata every 15 minutes to check for updates.


**Is the 15-minute interval at which Domo checks for updates configurable?**


 Yes,

Domo Support

can adjust the window down to one minute on the back end.


**How are Cloud Amplifier DataSets supported as inputs?**


 Magic ETL v2 supports Cloud Amplifier DataSets.


**Can I use Cloud Amplifier if I also use Domo Everywhere?**


 Yes, you can. You can designate DataSets created via Cloud Amplifier as published DataSets in order to create a virtualized DataSet in a subscriber organization. You can then use the virtualized subscriber DataSeta as an input to Magic ETL transformations and configure it for DataSet Alerts.


 You can also use DataSets created via Cloud Amplifier with

Domo Everywhere Embed

.


**Does Cloud Amplifier work with Bring Your Own Key (BYOK)?**


 Not at this time.

##
 External Cloud Storage


**Can I create DataSet Views or DataFusions that are materialized and then stored in an external cloud (outside of Domo)?**

Not at this time.

*Can I use Domo to define a view and have it create a view in my database?**

Not at this time.


**Does Domo cache data on DataSets that are stored in an external cloud?**


 Data can be cached for up to 24 hours, but the cache is cleared when data updates. For customer-managed DataSets, there may be up to a 15-minute delay between when the data updates and the cache is cleared.


**Does Cloud Amplifier use my cloud warehouse account?**


 Yes, Domo operates on your cloud warehouse account.


**How does Domo access my cloud warehouse account?**


 Domo's method of accessing a cloud warehouse account depends on the warehouse. We recommend using a system account, rather than individual user accounts, to grant Domo access to all cloud warehouses. See the

individual provider guides

listed above to learn how that Domo accesses that particular provider.


**Does Domo support OAUTH for Cloud Amplifier?**


 Not at this time.


**Can I use both "traditional" Domo and Cloud Amplifier in parallel?**


 Yes. By default, you have access to both Domo's proprietary Adrenaline engine and the Cloud Amplifier engine. You can configure your Domo environment so that only the Cloud Amplifier DataSets are allowed to run in your Domo environment, but

Domo Support

needs to help with this.


**Can I move existing DataSets from Domo to my cloud provider using Cloud Amplifier?**


 For existing DataSets created via a connector or Domo APIs, you can reach out to

Domo Support

for assistance to move them to your cloud provider. If those DataSets were created via some other method, you would need to recreate those in your cloud provider manually.


**Does Cloud Amplifier work with Domo's DataSet APIs?**


 Domo's APIs can be used with any DataSet in a Domo-managed database, as long as that table is in the Domo-managed database that was configured during the write integration step of your Cloud Amplifier setup. Customer-managed databases that exist in the cloud,

from

which Domo can read but

can

not write to, cannot be updated with Domo APIs.


 This includes, but is


 not limited to, the streams API, webhooks, custom apps that generate new data such as Form Builder, and managing a DataSet via the DataSet API (such as updating a DataSet, managing personalized data permissions (PDP) policies, changing the owner of a DataSet, exporting a DataSet).


 For a more comprehensive guide to using the DataSets API, see our

developer docs

.

Back to top


