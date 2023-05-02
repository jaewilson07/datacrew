

Intro
-------

Neo4j is a graph database that stores nodes, relationships, and their respective properties. Some of the business use cases for using Neo4j include but are not limited to recommendation engines, detecting financial fraud, and researching rare diseases.


 You can use the Cypher language to use query in Neo4j. Cypher is a declarative query language that provides a visual and logical way to match node and relationships. To learn more about cypher and its syntax, you can visit

https://neo4j.com/developer/cypher/

.


 This topic discusses the fields and menus that are specific to the Neo4j


 Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Neo4j graph, your database must have the following:

 Available over the internet
* SSL enabled over HTTPS
* Enable HTTP setting in instance configuration file (dbms.connector.http.enabled=true)
* Whitelist Domo's IP addresses that can be found at

Whitelisting IP addresses for connectors
* A service account with minimum Read access

Connecting to Your Neo4j graph
--------------------------------

This section enumerates the options in the Credentials and Details panes in the Neo4j Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Neo4j graph. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Neo4j Instance URL
  |
 Enter the URL of your instance.


 Example: neo4j.database.url or

graph.site.com

:7473.

*Note**
 : Include port number if applicable. The default port is 7473 for Neo4j.

|
|
 Neo4j Database Name
  |
 Enter the name of your database.
  |
|
 Username
  |
 Enter the username for your database.
  |
|
 Password
  |
 Enter the password for your database.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new Neo4j DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This is where you will insert your Cypher query. Note that this query must return properties, not nodes.


 Menu
  |
 Description
  |
| --- | --- |
|

Query

|
 Enter your Cypher query.


**Example**
 :
 * MATCH (p:Person)-[:BUYS]->(i:Item)


 RETURN

p.name

as Name,i.type as ItemType
 * MATCH (a:Actor)-[:PRODUCES]->(m:Movie)<-[:DIRECTS]-(d:Director)


 RETURN

a.name

as ActorName, a.DOB as DOB,m.title as MovieTitle,

d.name

as DirectorName
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of data can I get from the Neo4j Connector?

You can access Neo4j Graph database data with this connector, represented as a table.

###
 What credentials do I need to access the Neo4j Connector?

This connector leverages the Neo4j Bolt REST api hyperlink and requires the associated username and password.

###
 How often is the Neo4j data updated?

The Neo4j data can be updated as often as needed based on the options available in the Domo connector UI.

###
 Can I see an example of the Cypher syntax required to return a table from graph data?

The Cypher query needs to return properties as opposed to nodes, for example:


 MATCH (p:Person)-[r:IS\_IN\_CHARGE\_OF]->(c:Project)


 RETURN

p.name

as Person,

c.name

as Project

