

Intro
-------


 Snowflake KeyPair Unload is a cloud-based analytic data warehouse system. Use Domo's Snowflake KeyPair Unload connector to unload data from your Snowflake database into Amazon S3. The files are downloaded from S3 into Domo. This connector should be preferred over the Snowflake connector if you are executing very large queries.

You connect to your

Snowflake

account in the Data Center. This topic discusses the fields and menus that are specific to the

Snowflake KeyPair Unload

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Snowflake database and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following https://.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. For US West Region
 ****account\_name****
 and All other regions
 ****account\_name.region\_id****
 . The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."

 The username used to connect to your Snowflake host.
* The private key.
* The passphrase. If you create an encrypted private key, then OpenSSL prompts for a passphrase used to encrypt the private key file.
* Your AWS access key.

It is available in the AWS Console in the
 **Security Credentials**
 section or under
 **Users**
 if you are using
 **IAM**
 .
* Your AWS secret key.

was provided when you created your Access Key. You can generate a new one in the AWS Console.
* The name of the AWS S3 bucket that your Snowflake data will be unloaded into.


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
4. Assign the public key to the Snowflake user using ALTER USER. For example:


`alter user jsmith set rsa_public_key='MIIBIjANBgkqh...';`


**Notes:**


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

Key Rotation
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
	* Assign the public key to the user. Set the public key value to either RSA\_PUBLIC\_KEY or RSA\_PUBLIC\_KEY\_2 (whichever key value is not currently in use).


	 For example:


	`alter user jsmith set rsa_public_key_2='JERUEHtcve...';`
2. Update the code to connect to Snowflake. Specify the new private key.


 Snowflake verifies the correct active public key for authentication based on the private key submitted with your connection information.
3. Remove the old public key from the user profile. For example:


`alter user jsmith unset rsa_public_key;`

Connecting to Your Snowflake Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Snowflake KeyPair Unload

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to your Snowflake account. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter the full name of your account (provided by Snowflake.) For US West Region
 ****account\_name****
 and All other regions
 ****account\_name.region\_id**** |
|
 Username
  |
 Enter the username used to connect to your Snowflake host.
  |
|
 Private Key
  |
 Enter the private key.
  |
|
 Passphrase
  |
 If you create an encrypted private key, then OpenSSL prompts for a passphrase used to encrypt the private key file. Enter that passphrase here.
  |
|
 Access Key
  |
 Enter your AWS access key. It is available in the AWS Console in the Security Credentials section or under Users if you are using IAM.
  |
|
 Secret Key
  |
 Enter your AWS secret access key. It was provided when you created your Access Key. You can generate a new one in the AWS Console.
  |
|
 Bucket
  |
 Enter the name of the AWS S3 bucket that your Snowflake data will be unloaded into.
  |


 Once you have entered valid credentials, you can use the same account any time you to create a new Snowflake KayPair Unload dataset. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
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
 Select the warehouse containing the data you want to retrieve. The list populates with all warehouses you have access to based on your credentials.
  |
|
 Databases
  |
 Select the database containing the data you want to retrieve.  The list populates with all databases you have access to based on your credentials.
  |
|
 Database Schema
  |
 Select the database schema containing the data you want to retrieve. The list populates with all schemas you have access to based on your credentials.
  |
|
 Database Tables
  |
 Select the database table you want to retrieve. The list populates with all tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns
  |

Select the table columns you would like to include in your report. If you do not select any table column, the connector retrieves your entire selected database table.

|
|
 Query Helper
  |

When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste this text into the QUERY field. You may edit this query, if desired.

|
|
 Use Snowflake Schema
  |

Check this box if you wish to use the schema directly from Snowflake instead of letting Domo determine the schema.

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Are there any API limits I should be aware of?


 The limits depend on your server configuration.


####
 How frequently will my data update?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

###
 What should I be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled. Refer to the Query Helper field for query help.

###
 Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses in Domo

.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


