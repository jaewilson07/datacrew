

Intro
-------

MQTT is a publish/subscribe, extremely simple and lightweight messaging protocol, designed for constrained devices and low-bandwidth, high-latency or unreliable networks. Connect your MQTT data to Domo using the MQTT Connector. MQTT shows your real-time data from hundreds of IoT devices, and lets you set alerts to be notified when time-sensitive metrics change. MQTT is an internet protocol much like HTTP used to connect low bandwidth IoT devices.


 Getting this feature
----------------------

If you are interested in joining the Beta for this feature, please contact your Customer Success Manager (CSM).

*Note:**
 This feature is available
 *on-demand and paid*
 .


 To request this feature be enabled,


* Reach out to your Domo Customer Success Manager, Technical Consultant, or AE.
* If you do not have contact information for your CSM, TC, or AE, contact Domo's

Technical Support

.

Depending on the feature, you may be required to complete training before you can use the feature.


 Domo supports the following aspects of MQTT:
----------------------------------------------


* Authenticating with Username/Password
* Each device has to be configured to push data to each DataSet
* Multiple devices can push data to the same DataSet
* Support QoS0 and QoS1
* Support all the current versions of MQTT 3.1.0, 3.1.1, and 5.0

Domo does not currently support the following aspects of MQTT:
----------------------------------------------------------------


* QoS2
* Subscriptions
* Topics

Connecting to Your MQTT Data
------------------------------


 This section enumerates the options in the
 **Details**
 panes in the

MQTT

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 Details Pane

This pane contains the details that help you to connect your MTTQ data to Domo.


 Field
  |
 Description
  |
| --- | --- |
|
 MQTT Broker Host
  |
 This field display the address of your MQTT broker host. Click
 **Copy Address**
 button to copy the address.
  |
|
 Port to connect to Domo to MQTT
  |
 This field displays the port number that connects your MQTT data to Domo. Click
 **Copy Port**
 button to copy the port number.
  |
|
 Certs will expire in
  |
 Select the number of years that you want the Certificates to work for. The certificates will expire after the selected number of years. Click
 **Download Certs**
 button to download the certificates. These certificates are required to connect a device to the Domo Broker.
  |
|
 Require username/password
  |
 Select this check box if you wish to provide additional authentication by requiring MQTT clients to send a username/password to connect to the Domo Broker.
  |
|
 Username
  |
 Enter the username provided by MQTT client.
  |
|
 Password
  |
 Enter the password provided by MQTT client.
  |
|
 Update method
  |
 When Domo retrieves your data from the source, you can determine how that new data is imported into the current DataSet. For this connector we offer Append and Replace update methods.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

