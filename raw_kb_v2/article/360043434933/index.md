

Intro
-------

Deltek Vision is an ERP solution specifically for the project-focused firms, providing visibility into project budgets, schedules, and other project data. Use Domo's Deltek connector to retrieve data about campaigns, opportunities, employee expenses and repayments, and other Deltek entities. To learn more about the Deltek API, visit their page (

https://deltek.custhelp.com/app/answers/detail/a\_id/62647/kw/web%20services%20api

).


 You connect to your Deltek account in the Data Center. This topic discusses the fields and menus that are specific to the Deltek connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 You can also connect to Deltek  through the database that sits on premise on your network. In this case, use of SQL is required.


 Prerequisites
---------------

To connect to your Deltek account and create a DataSet, you must have the following:

 Your Deltek username
* Your Deltek password
* The domain name of your Deltek instance (for instance, if the instance was


 mycompany.deltek.com


 , the domain name would be

mycompany

)
* The name of the database you want to retrieve data from
* Your Deltek host name
* Your Deltek host port number

Connecting to Your Deltek Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Deltek Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Deltek account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 User
  |
 Enter your Deltek username.
  |
|
 Password
  |
 Enter your Deltek password.
  |
|
 Domain
  |
 Enter your Deltek domain name.
  |
|
 Database
  |
 Enter the name of the Deltek database you want to retrieve data from.
  |
|
 Host
  |
 Enter your Deltek host name.
  |
|
 Port
  |
 Enter the port number of your Deltek host.
  |


 Once you have entered valid Deltek credentials, you can use the same account any time you go to create a new Deltek DataSet. You can manage connector accounts in the
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
 Report
  |
 Select the Deltek report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns data on activities.
  |
|
 AP Disbursements
  |
 Returns data on AP disbursements.
  |
|
 AP Vouchers
  |
 Returns data on AP vouchers.
  |
|
 Cash Disbursements
  |
 Returns data on cash disbursements.
  |
|
 Cash Receipts
  |
 Returns data on cash receipts.
  |
|
 Clients
  |
 Returns data on clients.
  |
|
 Contacts
  |
 Returns data on contacts.
  |
|
 EmployeeExpenses
  |
 Returns data on employee expenses.
  |
|
 EmployeeRepayments
  |
 Returns data on employee repayments.
  |
|
 Employees
  |
 Returns data on employees.
  |
|
 Invoices
  |
 Returns data on invoices.
  |
|
 JournalEntries
  |
 Returns data on journal entries.
  |
|
 LaborAdjustments
  |
 Returns data on labor adjustments.
  |
|
 Leads
  |
 Returns data on leads.
  |
|
 MiscellaneousExpenses
  |
 Returns data on miscellaneous expenses.
  |
|
 MktCampaigns
  |
 Returns data on market campaigns,
  |
|
 Opportunities
  |
 Returns data on opportunities.
  |
|
 PrintandReproductions
  |
 Returns data on print and reproductions.
  |
|
 Projects
  |
 Returns data on projects.
  |
|
 TextLibraries
  |
 Returns data on text libraries.
  |
|
 Timesheets
  |
 Returns data on timesheets.
  |
|
 Units
  |
 Returns data on units.
  |
|
 UnitsByProject
  |
 Returns data on units by project.
  |

|
|
 Rolling Months of Data
  |
 Enter the number of months back you want to pull data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Queries
---------

The Deltek Vision connector uses the following queries:


 APVouchers


`create index cbatchindex on APVouchersControl(Batch);


 create index mbatchindex on APVouchersMaster(Batch);


 create index mmasterkeyindex on APVouchersMaster(MasterPKey);


 create index dbatchindex on APVouchersDetail(Batch);


 create index dmasterkeyindex on APVouchersDetail(MasterPKey);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.DefaultLiab, c.DefaultBank, c.DefaultDate, c.DefaultTaxCode, c.PostPeriod, c.PostSeq, c.Company, c.DefaultCurrencyCode, c.DefaultTax2Code, c.SubmittedBy, c.SubmittedDate, m.Vendor, m.InvoiceDate, m.Invoice, m.TransDate, m.LiabCode, m.BankCode, m.PayTerms, m.PayDate, m.Seq as MasterSeq, m.Voucher, m.CurrencyCode, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.BarCode, m.PaymentExchangeOverrideMethod, m.PaymentExchangeOverrideDate, m.PaymentExchangeOverrideRate, m.PaymentCurrencyCode, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.PKey, d.Seq as DetailSeq, d.Description, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.SuppressBill, d.TaxCode, d.NetAmount, d.TaxAmount, d.CurrencyExchangeOverrideRate, d.PONumber, d.PaymentExchangeRate, d.PaymentAmount, d.PaymentExchangeInfo, d.ExpenseCode, d.Tax2Code, d.Tax2Amount, d.CompoundTax from APVouchersControl c join APVouchersMaster m on c.Batch = m.Batch join APVouchersDetail d on m.Batch = d.Batch and m.MasterPKey = d.MasterPKey`


 APDisbursements


`create index cbatchindex on APDisbursementsControl(Batch);


 create index mbatchindex on APDisbursementsMaster(Batch);


 create index mmasterkeyindex on APDisbursementsMaster(MasterPKey);


 create index dbatchindex on APDisbursementsDetail(Batch);


 create index dmasterkeyindex on APDisbursementsDetail(MasterPKey);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.DefaultLiab, c.DefaultBank, c.DefaultDate, c.DefaultTaxCode, c.PostPeriod, c.PostSeq, c.Company, c.DefaultCurrencyCode, c.DefaultTax2Code, c.SubmittedBy, c.SubmittedDate, m.Vendor, m.InvoiceDate, m.Invoice, m.TransDate, m.LiabCode, m.BankCode, m.PayTerms, m.PayDate, m.Posted, m.Seq as MasterSeq, m.Voucher, m.CurrencyCode, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.BarCode, m.PaymentExchangeOverrideMethod, m.PaymentExchangeOverrideDate, m.PaymentExchangeOverrideRate, m.PaymentCurrencyCode, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.PKey, d.Seq as DetailSeq, d.Description, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.SuppressBill, d.TaxCode, d.NetAmount, d.TaxAmount, d.CurrencyExchangeOverrideRate, d.PONumber, d.PaymentExchangeRate, d.PaymentAmount, d.PaymentExchangeInfo, d.ExpenseCode, d.Tax2Code, d.Tax2Amount, d.CompoundTax from APDisbursementsControl c join APDisbursementsMaster m on c.Batch = m.Batch join APDisbursementsDetail d on m.Batch = d.Batch and m.MasterPKey = d.MasterPKey`


 CashDisbursements


`create index cbatchindex on CashDisbursementsControl(Batch);


 create index mbatchindex on CashDisbursementsMaster(Batch);


 create index mchecknoindex on CashDisbursementsMaster(CheckNo);


 create index dbatchindex on CashDisbursementsDetail(Batch);


 create index dchecknoindex on CashDisbursementsDetail(CheckNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.DefaultBank, c.DefaultTaxCode, c.PostPeriod, c.PostSeq, c.Company, c.DefaultTax2Code, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.BankCode, m.Payee, m.Posted, m.Seq as MasterSeq, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.CheckNo, d.PKey, d.Seq as DetailSeq, d.Description, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.TaxCode, d.NetAmount, d.TaxAmount, d.CurrencyExchangeOverrideRate, d.LinkCompany, d.Tax2Code, d.Tax2Amount, d.CompoundTax from CashDisbursementsControl c join CashDisbursementsMaster m on c.Batch = m.Batch join CashDisbursementsDetail d on m.Batch = d.Batch and m.CheckNo = d.CheckNo`


 CashReceipts


`create index cbatchindex on CashReceiptsControl(Batch);


 create index mbatchindex on CashReceiptsMaster(Batch);


 create index mmasterkeyindex on CashReceiptsMaster(RefNo);


 create index dbatchindex on CashReceiptsDetail(Batch);


 create index dmasterkeyindex on CashReceiptsDetail(RefNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.DefaultBank, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.BankCode, m.TransComment, m.Posted, m.Seq as MasterSeq, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.RefNo, d.PKey, d.Seq as DetailSeq, d.Description, d.WBS1, d.WBS2, d.WBS3, d.Invoice, d.Account, d.Amount, d.Interest, d.TaxCode, d.TaxBasis, d.Retainer, d.CurrencyExchangeOverrideRate, d.SourceAmount, d.SourceExchangeInfo, d.LinkCompany from CashReceiptsControl c join CashReceiptsMaster m on c.Batch = m.Batch join CashReceiptsDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`


 EmployeeExpenses


`create index cbatchindex on EmployeeExpensesControl(Batch);


 create index mbatchindex on EmployeeExpensesMaster(Batch);


 create index mmasterkeyindex on EmployeeExpensesMaster(RefNo);


 create index dbatchindex on EmployeeExpensesDetail(Batch);


 create index dmasterkeyindex on EmployeeExpensesDetail(RefNo);


 select c.Recurring, c.Creator, c.Period", c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.DefaultTaxCode, c.AdvanceAmount, c.Company, c.DefaultCurrencyCode, c.DefaultTax2Code, c.SubmittedBy, c.SubmittedDate, m.Employee, m.ReportDate, m.ReportName, m.Posted, m.Seq as MasterSeq, m.AdvanceAmount, m.BarCode, m.DefaultCurrencyCode, m.PaymentExchangeOverrideMethod, m.PaymentExchangeOverrideDate, m.PaymentExchangeOverrideRate, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.PKey, d.Seq as DetailSeq, d.TransDate, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.Description, d.SuppressBill, d.TaxCode, d.NetAmount, d.TaxAmount, d.PaymentExchangeRate, d.PaymentAmount, d.PaymentExchangeInfo, d.CurrencyExchangeOverrideRate, d.CurrencyCode, d.Tax2Code, d.Tax2Amount, d.CompoundTax from EmployeeExpensesControl c join EmployeeExpensesMaster m on c.Batch = m.Batch join EmployeeExpensesDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`


 Invoices


`create index cbatchindex on InvoicesControl(Batch);


 create index mbatchindex on InvoicesMaster(Batch);


 create index minvoiceindex on InvoicesMaster(Invoice);


 create index mwbs1index on InvoicesMaster(WBS1);


 create index mwbs2index on InvoicesMaster(WBS2);


 create index mwbs3index on InvoicesMaster(WBS3);


 create index dbatchindex on InvoicesDetail(Batch);


 create index dinvoiceindex on InvoicesDetail(Invoice);


 create index dwbs1index on InvoicesDetail(WBS1);


 create index dwbs2index on InvoicesDetail(WBS2);


 create index dwbs3index on InvoicesDetail(WBS3);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.RetTotal, c.DefaultTaxCode, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.TransComment, m.Posted, m.Seq as MasterSeq, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.CurrencyExchangeOverrideRate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.Invoice, d.WBS1, d.WBS2, d.WBS3, d.PKey, d.Seq as DetailSeq, d.InvoiceSection, d.Account, d.Amount, d.RetAmount, d.TaxCode, d.TaxBasis, d.Retainer, d.LinkWBS1, d.LinkWBS2, d.LinkWBS3 from InvoicesControl c join InvoicesMaster m on c.Batch = m.Batch join InvoicesDetail d on m.Batch = d.Batch and m.Invoice = d.Invoice and m.WBS1 = d.WBS1 and m.WBS2 = d.WBS2 and m.WBS3 = d.WBS3`


 JournalEntries


`create index cbatchindex on JournalEntriesControl(Batch);


 create index mbatchindex on JournalEntriesMaster(Batch);


 create index mrefnoindex on JournalEntriesMaster(RefNo);


 create index dbatchindex on JournalEntriesDetail(Batch);


 create index drefnoindex on JournalEntriesDetail(RefNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.Company, c.DefaultCurrencyCode, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.Type, m.Description as MasterDescription, m.Posted, m.Seq as MasterSeq, m.UpdateBilled, m.CurrencyCode, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.RefNo, d.PKey, d.Seq as DetailSeq, d.WBS1, d.WBS2, d.WBS3, d.Account, d.DebitAmount, d.CreditAmount, d.Description as DetailDescription, d.TaxCode, d.TaxType, d.TaxDebitAmount, d.TaxCreditAmount, d.SuppressBill, d.CurrencyExchangeOverrideRate, d.LinkCompany, d.Tax2Code, d.Tax2DebitAmount, d.Tax2CreditAmount, d.DebitAmountFunctionalCurrency, d.CreditAmountFunctionalCurrency, d.DebitAmountProjectCurrency, d.CreditAmountProjectCurrency, d.CompoundTax from JournalEntriesControl c join JournalEntriesMaster m on c.Batch = m.Batch join JournalEntriesDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`


 LaborAdjustments


`create index cbatchindex on LaborAdjustmentsControl(Batch);


 create index mbatchindex on LaborAdjustmentsMaster(Batch);


 create index memployeeindex on LaborAdjustmentsMaster(Employee);


 create index dbatchindex on LaborAdjustmentsDetail(Batch);


 create index demployeeindex on LaborAdjustmentsDetail(Employee);


 select c.Recurring, c.Creator, c.Period, c.StartDate, c.EndDate, c.RegHrsTotal, c.OvtHrsTotal, c.RegAmtTotal, c.OvtAmtTotal, c.BillExtTotal, c.SpecialOvtHrsTotal, c.SpecialOvtAmtTotal, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.Posted, m.Seq as MasterSeq, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.Employee, d.PKey, d.Seq as DetailSeq, d.TransDate, d.WBS1, d.WBS2, d.WBS3, d.LaborCode, d.RegHrs, d.OvtHrs, d.RegAmt, d.OvtAmt, d.BillExt, d.SuppressBill, d.TransComment, d.SpecialOvtHrs, d.SpecialOvtAmt, d.BillCategory, d.LinkCompany from LaborAdjustmentsControl c join LaborAdjustmentsMaster m on c.Batch = m.Batch join LaborAdjustmentsDetail d on m.Batch = d.Batch and m.Employee = d.Employee`


 MiscellaneousExpenses


`create index cbatchindex on MiscellaneousExpensesControl(Batch);


 create index mbatchindex on MiscellaneousExpensesMaster(Batch);


 create index mrefnoindex on MiscellaneousExpensesMaster(RefNo);


 create index dbatchindex on MiscellaneousExpensesDetail(Batch);


 create index drefnoindex on MiscellaneousExpensesDetail(RefNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.Company, c.DefaultCurrencyCode, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.Description as MasterDescription, m.Posted, m.Seq as MasterSeq, m.CurrencyCode, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.RefNo, d.PKey, d.Seq as DetailSeq, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.Description as DetailDescription, d.CurrencyExchangeOverrideRate from MiscellaneousExpensesControl c join MiscellaneousExpensesMaster m on c.Batch = m.Batch join MiscellaneousExpensesDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`


 PrintandReproductions


`create index cbatchindex on PrintandReproductionsControl(Batch);


 create index mbatchindex on PrintandReproductionsMaster(Batch);


 create index mrefnoindex on PrintandReproductionsMaster(RefNo);


 create index dbatchindex on PrintandReproductionsDetail(Batch);


 create index drefnoindex on PrintandReproductionsDetail(RefNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.Company, c.DefaultCurrencyCode, c.SubmittedBy, c.SubmittedDate, m.TransDate, m.Description as MasterDescription, m.Posted, m.Seq as MasterSeq, m.CurrencyCode, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.RefNo, d.PKey, d.Seq as DetailSeq, d.Originals, d.Copies, d.WBS1, d.WBS2, d.WBS3, d.Account, d.Amount, d.Description as DetailDescription, d.CurrencyExchangeOverrideRate from PrintandReproductionsControl c join PrintandReproductionsMaster m on c.Batch = m.Batch join PrintandReproductionsDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`


 Timesheets


`create index cbatchindex on TimesheetsControl(Batch);


 create index mbatchindex on TimesheetsMaster(Batch);


 create index memployeeindex on TimesheetsMaster(Employee);


 create index dbatchindex on TimesheetsDetail(Batch);


 create index demployeeindex on TimesheetsDetail(Employee);


 select c.Recurring, c.Creator, c.Period, c.StartDate, c.EndDate, c.RegHrsTotal, c.OvtHrsTotal, c.SpecialOvtHrsTotal, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.Posted, m.Seq as MasterSeq, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.Employee, d.PKey, d.Seq as DetailSeq, d.TransDate, d.WBS1, d.WBS2, d.WBS3, d.LaborCode, d.RegHrs, d.OvtHrs, d.TransComment, d.SpecialOvtHrs, d.BillCategory, d.Locale, d.RegAmt, d.OvtAmt, d.SpecialOvtAmt, d.ExchangeInfo, d.RegAmtProjectCurrency, d.OvtAmtProjectCurrency, d.SpecialOvtAmtProjectCurrency, d.ProjectExchangeInfo, d.BillExt, d.OvtPct, d.SpecialOvtPct, d.Rate, d.OvtRate, d.SpecialOvtRate, d.RateProjectCurrency, d.OvtRateProjectCurrency, d.SpecialOvtRateProjectCurrency from TimesheetsControl c join TimesheetsMaster m on c.Batch = m.Batch join TimesheetsDetail d on m.Batch = d.Batch and m.Employee = d.Employee`


 Units


`create index cbatchindex on UnitsControl(Batch);


 create index mbatchindex on UnitsMaster(Batch);


 create index mmasterkeyindex on UnitsMaster(Unit);


 create index dbatchindex on UnitsDetail(Batch);


 create index dmasterkeyindex on UnitsDetail(Unit);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.Posted, m.Seq as MasterSeq, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.Unit, d.PKey, d.Seq as DetailSeq, d.TransDate, d.WBS1, d.WBS2, d.WBS3, d.TableNo, d.Account, d.Description, d.Quantity, d.CurrencyExchangeOverrideRate from UnitsControl c join UnitsMaster m on c.Batch = m.Batch join UnitsDetail d on m.Batch = d.Batch and m.Unit = d.Unit`


 UnitsbyProject


`create index cbatchindex on UnitsbyProjectControl(Batch);


 create index mbatchindex on UnitsbyProjectMaster(Batch);


 create index mmasterkeyindex on UnitsbyProjectMaster(RefNo);


 create index dbatchindex on UnitsbyProjectDetail(Batch);


 create index dmasterkeyindex on UnitsbyProjectDetail(RefNo);


 select c.Recurring, c.Creator, c.Period, c.EndDate, c.Total, c.PostPeriod, c.PostSeq, c.Company, c.SubmittedBy, c.SubmittedDate, m.Posted, m.Seq as MasterSeq, m.CurrencyExchangeOverrideMethod, m.CurrencyExchangeOverrideDate, m.Status, m.AuthorizedBy, m.RejectReason, m.ModUser, m.ModDate, d.RefNo, d.PKey, d.Seq as DetailSeq, d.TransDate, d.WBS1, d.WBS2, d.WBS3, d.Unit, d.TableNo, d.Account, d.Description, d.Quantity, d.CurrencyExchangeOverrideRate from UnitsbyProjectControl c join UnitsbyProjectMaster m on c.Batch = m.Batch join UnitsbyProjectDetail d on m.Batch = d.Batch and m.RefNo = d.RefNo`

