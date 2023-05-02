

Intro
-------

Snowflake is data warehouse software that makes it easy to bring together all your data and make it available to all of the users and systems that need to analyze it. You can use Domo's Snowflake Using Key Pair Authentication connector to retrieve data from a specified warehouse, database, and database schema by inputting an SQL query. For more information about the Snowflake API, go to

https://docs.snowflake.net/manuals

.


 This version of the Snowflake connector is essentially the same as the standard

Snowflake connector

except that it supports using key pair authentication rather than the typical username/password authentication. This authentication method requires a 2048-bit (minimum) RSA key pair. You can generate the public-private key pair using OpenSSL. Steps for generating the key pair are provided below. The public key is assigned to the Snowflake user who will use the Snowflake client.


 The Snowflake Using Key Pair Authentication connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Snowflake Using Key Pair Authentication connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Snowflake database and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username used to connect to your Snowflake host
* Your Snowflake private key
* The passphrase used to encrypt the private key file, if you created an encrypted key


###
 Configuring the public/private key pair

To configure the public/private key pair, follow these steps:

. From the command line in a terminal window, generate a private key.


 You can generate either an encrypted version of the private key or an unencrypted version of the private key.


	* To generate an unencrypted version, use the following command:


	`$ openssl genrsa -out rsa_key.pem 2048`
	* To generate an encrypted version, use the following command:


	`$ openssl genrsa 2048 | openssl pkcs8 -topk8 -inform PEM -out rsa_key.p8`


	 It is typically safer to generate an encrypted version.


	 If you use the second command to encrypt the private key, then OpenSSL prompts for a passphrase used to encrypt the private key file. We recommend using a strong passphrase to protect the private key. Record this passphrase in a secure location. You will input it when connecting to Snowflake. Note that the passphrase is only used for protecting the private key and will never be sent to Snowflake.


	 The following is a sample PEM private key:


	`-----BEGIN ENCRYPTED PRIVATE KEY-----


	 MIIE6TAbBgkqhkiG9w0BBQMwDgQILYPyCppzOwECAggABIIEyLiGSpeeGSe3xHP1


	 wHLjfCYycUPennlX2bd8yX8xOxGSGfvB+99+PmSlex0FmY9ov1J8H1H9Y3lMWXbL


	 ...


	 -----END ENCRYPTED PRIVATE KEY-----`
2. From the command line, generate the public key by referencing the private key. Assuming the private key is encrypted and contained in the file named “rsa\_key.p8”, use the following command:


`$ openssl rsa -in rsa_key.p8 -pubout -out rsa_key.pub`


 The following is a sample PEM public key:


`-----BEGIN PUBLIC KEY-----


 MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAy+Fw2qv4Roud3l6tjPH4


 zxybHjmZ5rhtCz9jppCV8UTWvEXxa88IGRIHbJ/PwKW/mR8LXdfI7l/9vCMXX4mk


 ...


 -----END PUBLIC KEY-----`
3. Copy the public and private key files to a local directory for storage. Record the path to the files. Note that the private key is stored using the PKCS#8 (Public Key Cryptography Standards) format and is encrypted using the passphrase you specified in the previous step; however, the file should still be protected from unauthorized access using the file permission mechanism provided by your operating system. It is your responsibility to secure the file when it is not being used.
4. Assign the public key to the Snowflake user using

ALTER USER

. For example:


`alter user jsmith set rsa_public_key='MIIBIjANBgkqh...';`

*Notes:**

* Only security administrators (i.e. users with the SECURITYADMIN role) or higher can alter a user.
	* Exclude the public key header and footer in the SQL statement.
5. Verify the user’s public key fingerprint using DESCRIBE USER:


 Property
  |
 Value
  |
 Default
  |
 Description
  |
| --- | --- | --- | --- |
|
 Name
  |
 JSMITH
  |
 null
  |
 Name
  |
|
 RSA\_PUBLIC\_KEY\_FP
  |
 SHA256:nvnONUsfiuycCLMXIEWG4eTp4FjhVUZQUQbNpbSHXiA=
  |
 null
  |
 Fingerprint of user's RSA public key.
  |
|
 RSA\_PUBLIC\_KEY\_2\_FP
  |
 null
  |
 null
  |
 Fingerprint of user's second RSA public key.
  |


**Note:**
 For more information about the RSA\_PUBLIC\_KEY\_2\_FP property, see

Key Rotation

.
6. Modify and execute the sample code, below. The code decrypts the private key file and passes it to the Snowflake driver to create a connection:
	* Update the security parameters:
		+ <path> specifies the local path to the private key file you created.
	* Update the session parameters:
		+ <user> specifies your Snowflake login name.
		+ <account> specifies the name of your account (provided by Snowflake).
	* The sample code is as follows:

`import java.util.Properties;


	 import java.sql.Connection;


	 import java.sql.Statement;


	 import java.sql.ResultSet;


	 import java.sql.DriverManager;


	 import java.io.File;


	 import java.io.FileInputStream;


	 import java.io.DataInputStream;


	 import java.util.Base64;


	 import java.security.spec.PKCS8EncodedKeySpec;


	 import java.security.KeyFactory;


	 import java.security.PrivateKey;


	 import javax.crypto.EncryptedPrivateKeyInfo;


	 import javax.crypto.SecretKeyFactory;


	 import javax.crypto.spec.PBEKeySpec;`


	`public class TestJdbc


	 {


	 public static void main(String[] args)


	 throws Exception


	 {


	 File f = new File("<path>/rsa_key.p8");


	 FileInputStream fis = new FileInputStream(f);


	 DataInputStream dis = new DataInputStream(fis);


	 byte[] keyBytes = new byte[(int) f.length()];


	 dis.readFully(keyBytes);


	 dis.close();`


	`String encrypted = new String(keyBytes);


	 String passphrase = System.getenv("PRIVATE_KEY_PASSPHRASE");


	 encrypted = encrypted.replace("-----BEGIN ENCRYPTED PRIVATE KEY-----", "");


	 encrypted = encrypted.replace("-----END ENCRYPTED PRIVATE KEY-----", "");


	 EncryptedPrivateKeyInfo pkInfo = new EncryptedPrivateKeyInfo(Base64.getMimeDecoder().decode(encrypted));


	 PBEKeySpec keySpec = new PBEKeySpec(passphrase.toCharArray());


	 SecretKeyFactory pbeKeyFactory = SecretKeyFactory.getInstance(pkInfo.getAlgName());


	 PKCS8EncodedKeySpec encodedKeySpec = pkInfo.getKeySpec(pbeKeyFactory.generateSecret(keySpec));


	 KeyFactory keyFactory = KeyFactory.getInstance("RSA");


	 PrivateKey encryptedPrivateKey = keyFactory.generatePrivate(encodedKeySpec);`


	`String url = "jdbc:snowflake://<account>.

 snowflakecomputing.com

 ";


	 Properties prop = new Properties();


	 prop.put("user", "<user>");


	 prop.put("account", "<account>");


	 prop.put("privateKey", encryptedPrivateKey);`


	`Connection conn = DriverManager.getConnection(url, prop);


	 Statement stat = conn.createStatement();


	 ResultSet res = stat.executeQuery("select 1");


	 res.next();


	 System.out.println(res.getString(1));


	 conn.close();


	 }


	 }`


####
 Key Rotation

Snowflake supports multiple active keys to allow for uninterrupted rotation. Rotate and replace your public and private keys based on the expiration schedule you follow internally.


 Currently, you can use the RSA\_PUBLIC\_KEY and RSA\_PUBLIC\_KEY\_2 parameters for ALTER USER to associate up to 2 public keys with a single user.


 To rotate your keys,

. Complete the steps in Using Key Pair Authentication to...


	* Generate a new private and public key set.
	* Assign the public key to the user. Set the public key value to either

 RSA\_PUBLIC\_KEY

 or

 RSA\_PUBLIC\_KEY\_2

 (whichever key value is not currently in use).


	 For example:


	`alter user jsmith set rsa_public_key_2='JERUEHtcve...';`
2. Update the code to connect to Snowflake. Specify the new private key.


 Snowflake verifies the correct active public key for authentication based on the private key submitted with your connection information.
3. Remove the old public key from the user profile. For example:


`alter user jsmith unset rsa_public_key;`

Connecting to your Snowflake account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake Using Key Pair Authentication Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Snowflake account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter the account name for your Snowflake account. For information about finding your account name, see

Prerequisites

.
  |
|
 Username
  |
 Enter the username associated with your Snowflake account.
  |
|
 Private Key
  |
 Enter your private key. For more information about generating your private key, see

Configuring the public/private key pair

.
  |
|
 Passphrase
  |
 Enter the passphrase used to encrypt the private key file, if you created an encrypted key.
  |
|
 Role
  |
 Enter your user role.
  |

After you have entered valid Snowflake credentials, you can use the same account in Domo any time you create a Snowflake Using Key Pair Authentication DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields and menus for entering your SQL query and specifying the location of the data you want to retrieve.


 Parameter
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to use to retrieve your data. You can use the
 **Query Helper**
 parameter to help you write a usable SQL query. To use the
 **Query Helper**
 , do the following:
 1. Select your desired warehouse, database, database schema, database table, and table columns in each menu.
2. Copy the SQL statement that appears in the
 **Query Helper**
 field.
3. Paste the copied SQL statement into the
 **Query**
 field.
 |
|
 Warehouses
  |
 Select the warehouse containing the data you want to retrieve. The list populates with all of the warehouses you have access to based on your credentials.
  |
|
 Databases
  |
 Select the database containing the data you want to retrieve. The list populates with all of the databases you have access to based on your credentials.
  |
|
 Database Schema
  |
 Select the database schema containing the data you want to retrieve. The list populates with all of the schemas you have access to based on your credentials.
  |
|
 Database Tables (Optional)
  |
 Select the database table you want to retrieve. The list populates with all of the tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns (Optional)
  |
 Select the table columns you want to retrieve. The list populates with all of the columns you have access to based on your credentials. If you do not select a table column, the connector retrieves your entire selected database table.
  |
|
 Query Helper (Optional)
  |
 When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.
  |
|
 Fetch Size (Optional)
  |
 Enter a fetch size for memory performance. If this field is left blank, the default value of 1000 will be used. If the DataSet throws an "Out of memory" error, try decreasing the fetch size.
  |
|
 Convert Null Values to empty string
  |
 Selecting this would change all the null values from the source table in Snowflake to empty strings in Domo
  |
|
 Convert Timezone
  |
 Selecting a timezone here tells the connector about the timezone of the source data. The connector converts the Timestamp values from the selected timezone to UTC using this information.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Are there any API limits I should be aware of?

This depends on your server configuration.

####
 How frequently will my data update?

As often as needed.

####
 What should I be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled. Refer to the Query Helper field for query help.

####
 Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.

####
 Is this a Production-level connector?

This connector is designed for small/medium DataSets and proof of concept work for large DataSets.

####
 Why are the lists of warehouses, databases, schemas, etc. not populating correctly?

You only see content that that you have access to based on the user role entered for your account in Snowflake. If you aren’t seeing something you are expecting, make sure that role has access to that warehouse, database, table. etc.


 If you do not enter a role in Snowflake, the SYSADMIN role is used by default.

