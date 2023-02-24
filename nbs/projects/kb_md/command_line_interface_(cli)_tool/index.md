---
    title: Command Line Interface (CLI) Tool
    url: https://domo-support.domo.com/s/article/360043437733
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360042934494](https://domo-support.domo.com/s/article/360042934494)', '[https://domo-support.domo.com/s/article/360043437733](https://domo-support.domo.com/s/article/360043437733)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003160
    views: 4,169
    created_date: 2022-10-24 21:10:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


The Command Line Interface (CLI) Tool allows you to perform data management functions, such as uploading massive DataSets, managing pages, users and groups, and exporting DataSets. There are also a number of other useful functions such as search, import/export from AWS S3 and DataFusion helpers. By breaking large files into smaller parts automatically, you can upload CSV or gzipped CSV files to your Domo instance quickly.


Using the CLI Tool
------------------


### Installing and launching


1. Navigate to **Admin Settings** > **Tool Downloads** then click the "**Try the Domo CLI**" button


	1. Or download directly by clicking [here](https://app.domo.com/labs/java-sdk/latest/domoUtil.jar "https://app.domo.com/labs/java-sdk/latest/domoUtil.jar")
2. Open a terminal application (e.g. Terminal on macOS or PowerShell on Windows)
3. Run the CLI binary file using Java: `java -jar domoUtil.jar`




 

**Tip:** If using a Windows machine, place the .jar file into a folder such as C:\domo\java. Then, you can launch the CLI Tool by using the following command line: `java -jar C:\domo\java\domoUtil.jar`


### Available commands


The following commands are currently supported within Domo's CLI Tool:




|  |  |
| --- | --- |
| `help` | Displays all command names. |
| `help [command name]` | Shows specific flags and parameters for that particular command. (e.g.`help` `upload-dataset`will show all parameters available and required to run that command.) |
| `check-for-updates` | Check for system updates. |
| `connect` | Connects to a Domo Server.




**Important:** You must execute the connect command for every new session. Otherwise, you will receive an authentication error.


 |
| `disconnect` | Disconnects from the Domo Server. |
| `whoami` | Displays the current user identity from the Domo server. |
| `get-user` | Returns a Domo user by email or ID. You can get a single user or the entire user list. You can also filter by 'mailbox' (@[domo.com](http://domo.com)) or format output for 'add-user-to-group' if needed. |
| `create-user` | Creates a Domo user. |
| `get-group` | Returns a Domo group by name. |
| `add-user-to-group` | Adds user(s) to a Domo group. Expects comma-separated list of user IDs. Use 'get-group' to get the group ID. |
| `subscribe-user-to-alert` | Subscribes user to an alert. Use 'get-alerts' to get the alert ID. |
| `get-alerts` | Gets a list of alerts. Optional object ID and type will return alerts associated with a specific object. |
| `search-domo` | Searches Domo by entity type and search term. Valid entities include page, card, user, group, and DataSet. |
| `move-page` | Moves pages in navigation hierarchy. |
| `move-data` | Moves data from one Domo DataSet to another. |
| `rename-card` | Renames a card by ID. |
| `backup-card` | Export a  specified card as a JSON blob to a file or stdout that can be used to restore it later. |
| `restore-card` | Restores a card from a JSON blob. |
| `generate-card-image` | Generates a card as a PNG image. |
| `list-dataset` | Lists Domo DataSets. |
| `get-schema` | Returns the specified Domo DataSet schema. |
| `get-version` | Returns the specified Domo DataSet version. |
| `create-dataset` | Creates a Domo DataSet. |
| `create-dataview-payload` | Returns the payload for creating a DataView on a specified DataSet. |
| `create-dataview` | Creates a Domo DataView. |
| `delete-dataset` | Deletes a Domo DataSet. |
| `delete-rows` | Delete the specified row(s) of data from a Domo DataSet. This funtion only works on DataSets that have Upsert enabled. The CSV file should contain only the Upsert 'key' columns of the rows you want deleted. |
| `derive-schema` | Derives the DataSet schema from an input file. |
| `define-upsert` | Defines DataSet upsert columns. |
| `upload-dataset` | Uploads data to a Domo DataSet.




**Note:** Depending on size, the file will be split up as necessary into multiple parts for uploading. We recommend keeping file sizes under 20 MB after compression.


 |
| `upload-redshift` | Uploads data to Domo from a Redshift unload query. |
| `upload-hive` | Uploads data to Domo from a Hadoop Hive query. |
| `upload-jdbc` | Connects via JDBC to a data source and uploads query results. |
| `upload-s3` | Uploads data to Domo from an S3 Bucket. |
| `index-dataset` | Begins indexing process for a given datasource. |
| `dataset-run-now` | Start a Domo DataSet import. You will need to run the 'list-dataset' command to retrieve the onboardImportId or streamId. |
| `data-split` | Takes a single input CSV file and splits it into individual GZipped parts for additional manipulation before upload. |
| `abort-upload` | Removes a data version from the index chain. Use 'get-version' to get a full list of data versions. |
| `query-data` | Queries DataSet and writes results to a CSV file. |
| `export-data` | Exports DataSets to a CSV file. |
| `get-fusion-columns` | Returns the specified DataFusion column names. |
| `rename-fusion-columns` | Renames DataFusion columns. |
| `enable-fusion-pdp` | Enable/Disable PDP on the DataFusion. |
| `get-fusion-pdp` | Returns the specified PDP policies for a DataFusion. |
| `quit` | Quits the application. |


### Command use cases


#### Connecting to a Domo instance


To connect to a Domo instance, run the`connect`command and enter the following parameters:




|  |  |
| --- | --- |
| -p, --password <PASSWORD> | Domo login password |
| -u, --username <USERNAME> | Domo login username |
| -s, --server <SERVERNAME> | Domo server |
| -pp, --proxypassword <proxypassword> | Proxy password |
| -ps, --proxyserver <proxyserver> | Proxy server |
| -pt, --proxyport <proxyport> | Proxy port |
| -pu, --proxyuser <proxyuser> | Proxy user |
| -t, --token <TOKEN> | Token |


###### Example


`connect -u [jim.smith@xyzcompany.com](mailto:jim.smith@xyzcompany.com) -p abc123 -s [xyzcompany.domo.com](http://xyzcompany.domo.com)`


`connect -s [xyzcompany.domo.com](http://xyzcompany.domo.com) -t mffde8e727f825ae23e1117070f0ad67cfeb40c607dddd`


#### Disconnecting from a Domo instance


To disconnect from a Domo instance, run the`disconnect`command without using any parameters. 


#### Creating a new DataSet


Follow these steps to create a new DataSet using the CLI Tool.


1. Create a Domo access token. For more information on how to create and manage access tokens, see [Managing Access Tokens](/s/article/360042934494 "Managing Access Tokens").
2. Obtain the schema file in JSON format of the DataSet you want to upload to Domo by running the`derive-schema`command.




 


**Note:**To derive the schema from an existing CSV file, use the following command, replacing ''filename.csv' with your file name. `derive-schema -d 'C:\directory\filename.csv' -s 'C:\directory\schemafile.json'`
3. Perform a pre-check on the data by generating a clean, true CSV with a small number of rows. Obtain the schema file and run the`create-dataset`command to validate the upload will work. You may then delete that DataSet from Domo at your discretion.




 

**Tip:** You will need to place double quotes (") around any commas in your CSV that you want to escape, otherwise the CLI Tool will use the comma as a delimiter.
4. If the command is successful, you will be presented with the DataSet ID.
5. Once the pre-check is successful, run the`create-dataset`command using the full file's schema file.


#### Deleting a DataSet


To delete a DataSet in Domo, use the`delete-dataset`command, replacing [dataset id] with the ID of the DataSet you want to delete.


`delete-dataset -id [dataset id]`


You can get a list of DataSet ID's by using the`list-dataset`command.


#### Uploading Data to a DataSet


To upload data to a DataSet after it has been created, use the`upload-dataset`command, replacing [dataset id] with the ID of the DataSet you want to update.




 

**Important:** By default, when updating a DataSet, the entire existing DataSet will be replaced with the new upload unless you use the append parameter. 



Parameters available for the`upload-dataset`command are:




|  |  |
| --- | --- |
| -a, --append | Append to existing data. |
| -c, --compressed | Data file(s) are gzipped. |
| -d, --dir <DIRECTORY> | Data (CSV) directory. |
| -f, --data <FILENAME> | Data (CSV) file. |
| -h, --headers | Data file has a header row. |
| -i, --id <ID> | DataSet ID. |
| -p, --partition <arg> | Partition tag. |
| -t, --temp-dir <TEMP> | Temp path to use. |


###### Examples


`upload-dataset -id [dataset id] -data "c:\directory\datafile.csv"`


`upload-dataset -i <dataset_id> -f <filename>`


`upload-dataset -i <dataset_id> -f <filename> -a`


`upload-dataset -i <dataset_id> -f <filename> -a -p <partition_name>`


`upload-dataset -i <dataset_id> -d <directory_name>`




---


#### Uploading Data from a Database via JDBC


Ensure the JDBC driver JAR file is in the current working directory.


For example, if your domoUtil.jar is in ~/bin, but you are starting the utility from ~, your driver file needs to be in ~.


###### Example



```
upload-jdbc
  --dataset example_jdbc_upload
  --jdbcConnection jdbc:mysql://localhost:3306
  --jar mysql-connector-java-8.0.18.jar
  --query "select * from example;"
  --jdbcUser root
  --jdbcPassword password
  --jdbcDriver com.mysql.cj.jdbc.Driver

```

#### Creating a user


Create a user using the CLI Tool by specifying an email, whether or not to send an email invitation, full name, and their access rights role. Currently, you can create users with the following access rights: Admin, Privileged, Editor, Particpant, and Social.


`create-user -n 'James Smith' -r Editor -i true -e [jim.smith@xyzcompany.com](mailto:jim.smith@xyzcompany.com)`


#### Query (export) Data




 

**Important:** By default, queries return a maximum of one million rows. You can specify a higher limit in your query but you may experience timeouts if the result is too large. For full exports, use the `export-data` command. 



The`query-data`command will export the data from a specified DataSet ID to a CSV file. Either the`-q`or`-qf`parameters must be used with this command.




 

**Note:** The exported file respects any Personalized Data Permissions (PDP) that are set for the specified DataSet.



The parameters available for this command are:




|  |  |
| --- | --- |
| -i, --id <ID> | DataSet ID |
| -q, --query <QUERY> | Query file in JSON format |
| -qf, --queryfile <QUERYFILE> | Query filename |
| -xf, --exportfile <EXPORTNAME> | Export filename |


###### Example



```
query-data -i [dataset id] -qf [query file in JSON format] -xf [filename]
```

#### Generate card image


The`generate-card-image`command will generate a PNG image of the specified card ID.


`generate-card-image -i [card id] -f [file name]`


#### Move a Page


The`move-page`command allows you to move a page up in the hierarchy as a top level page or down in the hierarchy to a subpage.


The parameters available for this command are:




|  |  |
| --- | --- |
| -a, --move type | Choose promote or demote depending on where the page should be moved. |
| -c, --page | Page ID  |
| -p, --newparentpage | Parent page ID if demoting a page. |


##### Demote a page


`move-page -a demote -c 1234567 -p 7654321`


##### Promote a page


`move-page -a promote -c 1234567`




 

**Tip:** For more information on how to find a page ID, see Locating a Page ID.



#### Move Data


The move-data command allows you to move data from one existing DataSet to another existing DataSet.


The parameters available for this command are:




|  |  |
| --- | --- |
| -a, --append | Append to existing data |
| -d, --destination <destination> | Destination DataSet |
| -s, --source <source> | Source DataSet |


###### Example


`move-data -a -s [DataSet ID of where the data is coming from] -d [DataSet ID of where the data will be moved to]`




 

**Note:** To move data using a replace method, remove the -a parameter from the command line.



#### Listing DataSets


The`list-dataset`command will list all of the DataSets based on owner, a search term, or a specific DataSet ID. 


The parameters available for this command are:




|  |  |
| --- | --- |
| -i, --id <ID> | DataSet ID |
| -n, --name-like <NAME\_PATTERN> | Name filter |
| -o, --owner-id <TYPE> | DataSet Owner ID




**Note****:** Use 'me' instead of a DataSet Owner ID to use the currently authenticated user.


 |


###### Example


`list-dataset -o me -name-like "sales"`


`list-dataset -name-like "marketing"`


#### Search Domo


The`search-domo`command searches and exports a list from Domo by entity type and search term. 


The parameters available for this command are:




|  |  |
| --- | --- |
| -e, --entities <ENTITIES> | Entity type. Valid entities include app, buzz, buzz\_channel, connector, dataflow, dataset, dojo\_message, feature, knowledge\_base, project, task, page, card, user, and group. |
| -f, --filename <NAME> | Filename to export information. |
| -l, --limit <LIMIT> | Result limit. |
| -o, --offset <OFFSET> | Result offset. |
| -t, --term <TERM> | Search term. |


###### Example


`search-domo -e "card,dataset" -t "sales"`


#### Who am I?


The whoami command will return the username and user ID of the individual that is currently logged in. There are no parameters for this command.


`> whoami`


`John Smith (userid: 123456789)`


#### Ending a session


To end you CLI session, run both the`disconnect`and`quit`commands. There are no parameters for these commands.


### Scripting


While you can type the commands shown above in the command prompt, you can also create a text file with the commands and execute it as a script file.


###### Example script file


`connect -t [access token id] -s [xyzcompany.domo.com](http://xyzcompany.domo.com)  
upload-dataset -id [dataset id] -data "c:\directory\datafile.csv" -append  
quit`


###### Example script file execution


`java -jar domoUtil-2.31.jar -script c:\directory\uploadfile.script`




 

**Tip:** Be sure to update 'uploadfile.script' in the above example to your own script file name.



 

