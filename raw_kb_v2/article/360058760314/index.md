

What is happening?
--------------------

Xero is deprecating the authentication method that Domo uses in the Connector in favor of a more modern standard, OAuth 2.0.


 Who will be affected by this change?
--------------------------------------

This change will only affect customers using the

Xero Payroll

Connectors. Only Xero and Xero Payroll DataSets will be affected by this change.


 How will this affect customers using the Xero or Xero Payroll Connectors?
---------------------------------------------------------------------------


1. When Domo updates the Connector, existing Xero and Xero Payroll Connectors will stop running due to an authentication error. After the update, customers will need to create a new Xero account in the Data Center, associate that account with each of their DataSets by setting it as the Account in the DataSet, and saving the update.
2. The update to the Connectors will now also allow customers to select a tenant to connect to. Customers who have multiple Xero tenants will need to verify that their DataSets are configured to pull from the right tenant and select the correct one if needed. Customers with only one tenant will not need to verify the tenant being used.

Why is Domo making this change?
---------------------------------

Xero is deprecating its authentication method at the beginning of December. We are making this change to allow our customers to continue to connect and pull data.


 FAQs
------


#####
 What type of account do I need to create and how do I do that?

You will need to create a Xero OAuth account. You can use the same Account for both Xero and Xero Payroll.  Follow these steps to create a Xero OAuth Account:

. Navigate to the
 **Accounts**
 section of the Data Center by clicking on the Accounts icon in the left-hand pane in the Data Center.
2. In the Accounts screen, click on
 **Add Account**
 .
3. In the Add Account modal, search for Xero OAuth and then click
 **Connect**
 .
4. The Log in to Xero window will appear. Enter your username and password for Xero, and click on
 **Log In**
 .
5. You should now see your Xero OAuth Account in your list of Accounts.


#####
 Can I create and associate the new account ahead of time?

Any Accounts created before the cutover date will not be able to connect using the OAuth 2.0 protocol. Consequently, customers will need to create a new account and associate it with the DataSets on the cutover date.

####
 Can’t I just update the account I have on the day of the cutover to avoid having to update all the DataSets?

Unfortunately, that is not possible. The current account you are using will continue to try to authenticate using the older authentication protocol even if you try to reconnect it after the cutover.

####
 What happens if I don’t create a new account?

If you don’t create a new account and associate it with your DataSets, the DataSets will fail.

####
 I have multiple Xero or Xero Payroll tenants. What happens if I don’t update the tenant in the Connector?

After the Connector is updated, it will receive a list of tenants that the credentials you used have access to. By default, the Connector will choose the first tenant in the list it receives. If you do not verify and explicitly set the tenant to use, the Connector may not pull data from the tenant you were expecting it to.

####
 How do I verify which tenant the Connector is connecting to?

After the update, you will see a drop-down box in the Connector settings that shows which tenant you are connecting to.

####
 How do I get help?

If you need any assistance, please contact Domo Support. For information on contacting Support, see

Getting Help

.

