

Intro
-------

You can connect cards powered by a specific DataSet to another DataSet by moving the cards from one DataSet to another, or
 *switching DataSets*
 .


 You can switch the DataSet either for all cards that use a given DataSet or for a single card.


 Switching all cards powered by a DataSet
------------------------------------------

To switch all cards powered by a given DataSet to a different DataSet, you use the
 **Switch cards to a different DataSet**
 option.

*Notes:**
 Using this method,


* You
 *cannot*
 select specific cards to connect to another DataSet but must connect
 *all*
 of the cards to another DataSet.
* For best results, the target DataSet
 *should*
 have the same schema (columns, names, and data types) as the current DataSet.


 You can switch DataSets when the schemas do
 *not*
 match. When switching DataSets, a warning appears if the schemas do not match. You can proceed to switch the DataSet, despite the warning, but doing so may affect cards powered by the DataSet.
* When cards are moved to the target DataSet, Beast Mode calculations associated with a card are moved with the card and Beast Mode calculations associated with the current DataSet are copied to the target DataSet.
* Connecting cards to a different DataSet will not switch the DataSets of any drill path cards listed on the card page. Cards with drill paths include a banner to help you differentiate them.


**Video - Switching Cards to a Different DataSet**

*To switch all cards powered by a DataSet to another DataSet,**

. Click
 **Data**
 in the toolbar at the top of the screen.


 The Data Center opens, with the
 **Data Warehouse**
 tab opened by default.
2. Click the

icon on the left side of the screen to open the
 **DataSets**
 tab.
3. Locate and click the current DataSet containing the cards you want to move.
4. In the DataSet details view, click the
 **Cards**
 tab.
5. Click
 **Switch cards to a different DataSet**
 .


 This option appears if you are the owner of the DataSet, depending on the DataSet type.


 A list of DataSets appears.
6. Select the DataSet you want to move the cards to.


 A confirmation dialog appears.


 If the target DataSet does not have the same columns, names, and data types as the current DataSet, a warning appears indicating that any cards powered by the DataSet may break. However, you can still move the cards to the new DataSet if you want.
7. Click
 **Yes, Switch to New DataSet**
 to confirm.


 The cards are moved to the target DataSet.
8. Verify that the cards are properly powered using the switched DataSet.

Switching a single card powered by a DataSet
----------------------------------------------

To switch a single card powered by a given DataSet to a different DataSet, you use the
 **Change DataSet**
 option.

*Notes:**
 Using this method,


* You
 *cannot*
 switch all cards using a DataSet to another DataSet but must switch a single card to another DataSet.
* For best results, the target DataSet
 *should*
 have the same schema (columns, names, and data types) as the current DataSet.


 You can switch DataSets when the schemas do
 *not*
 match. When switching DataSets, a warning appears if the schemas do not match. You can proceed to switch the DataSet, despite the warning, but doing so may affect cards powered by the DataSet.
* When cards are moved to the target DataSet, Beast Mode calculations associated with a card are moved with the card and Beast Mode calculations associated with the current DataSet are copied to the target DataSet.

*To switch a single card connected to a DataSet to a different DataSet,**

. Mouse over the card whose DataSet you want to change.
2. Click

, then select
 **Connect / Update Data**
 from the menu.


 A dialog appears.

*Tip:**
 You can also open this dialog in a KPI card's Details view, by clicking the
 **Update Data**
 link near the bottom of the screen.
3. Select
 **Change DataSet**
 .


 The dialog expands to display DataSet types (existing data, Microsoft Excel, Google Drive, Domo online form).
4. Depending on the DataSet type you are switching to, do one of the following:

* (Conditional) If switching to an existing DataSet, do the following:

	1. Click
		 **Existing Data**
		 , select the DataSet you want to connect to the card, then click
		 **Select DataSet**
		 .


		 A confirmation dialog appears.


		 If the target DataSet does not have the same columns, names, and data types as the current DataSet, a warning appears indicating that any cards powered by the DataSet may break. However, you can still move the cards to the new DataSet if you want.
		2. Click
		 **Yes, Switch to New DataSet**
		 to confirm.


		 The cards are moved to the target DataSet.
		3. Verify that the card is properly powered using the switched DataSet.
	* (Conditional) If switching to a Microsoft Excel or CSV spreadsheet, click
	 **Excel**
	 , select the desired spreadsheet, click
	 **Continue**
	 , build the chart for your data, then click
	 **Update**
	 .
	* (Conditional) If switching to a Google Sheet spreadsheet, click
	 **Google Drive**
	 , sign in to your Google account, select the spreadsheet you want, build the chart for your data, then click
	 **Update**
	 .
	* (Conditional) If switching to a Domo online form, click
	 **Domo online form**
	 , edit the data as desired, click
	 **Save & Continue**
	 , build the chart for your data, then click
	 **Update**
	 .


	 For more information about editing chart data, see

 Analyzer Layout

 .


