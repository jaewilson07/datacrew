---
title: Viewing the Impact of Changes to DataSets
url: https://domo-support.domo.com/s/article/360042926234
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS)', '[https://domo-support.domo.com/s/article/360042926234](https://domo-support.domo.com/s/article/360042926234)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004902
views: 2,246
created_date: 2022-10-24 22:34:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Before you make changes to DataSets, it is vital that you understand the impact those changes will have on other DataSets, DataFlows, Cards, and Alerts that are associated with that DataSet, both directly and indirectly. For example, you might have a DataSet that is used in a DataFlow, which is used to power a Card, which an Alert has been set on. Making changes to this DataSet directly impacts the DataFlow and indirectly impacts the Card and Alert further downstream. If the changes cause anything to break, everything downstream breaks also.  


Domo's Data Impact Analysis tool, available in the details view for a DataSet, helps you understand the impact of actions you take on your DataSets. 


Impact Card
-----------


When you open the details view for a DataSet, a new card in the **Overview** tab shows you the number of DataSets, DataFlows, Cards, and Alerts directly and indirectly impacted by changes to that DataSet. The card displays the direct impact for each, along with the total number of impacts. So in the following example, we could deduce that changes to the DataSet would affect 99 Cards directly and only 1 indirectly (since the total is 100). 


![data_impact_analysis_rn.png](data_impact_analysis_rn.png) 


Lineage View
------------


Clicking ****View Full Impact**** opens a new ****Lineage**** view, in which you can see the upstream and downstream impact of changes made to the DataSet. You can also see the lineage for a DataSet simply by clicking on the **Lineage** tab.


### Icons in the Lineage view


Different kinds of connections in the Lineage view are indicated by different icons. These icons are as follows:


![lineage_dataflow_icon.png](lineage_dataflow_icon.png) - Indicates that a DataFlow was used to generate the child DataSet.


![lineage_datafusion_icon.png](lineage_datafusion_icon.png) - Indicates that a DataFusion was used to generate the child DataSet.


![lineage_selected_dataflow_icon.png](lineage_selected_dataflow_icon.png) - Indicates that this DataFlow has been selected (by clicking on the icon). Selecting a DataFlow opens an information panel on the left side of the screen. Clicking the arrow opens the details view for the DataFlow. If you do not have rights to view the DataFlow, you cannot see the details in this panel. 


![lineage_selected_datafusion_icon.png](lineage_selected_datafusion_icon.png) -  Indicates that this DataFusion has been selected (by clicking on the icon). Selecting a DataFusion opens an information panel on the left side of the screen. Clicking the arrow opens the details view for the DataFusion.


![lineage_broken_icon.png](lineage_broken_icon.png) - Indicates that this DataFlow is broken.


Other icons used in this view are as follows:


![lineage_fullscreen_icon.png](lineage_fullscreen_icon.png) - Opens the fullscreen Lineage view.


![lineage_close_fullscreen.png](lineage_close_fullscreen.png) - Closes the fullscreen Lineage view.


![lineage_open_right_panel.png](lineage_open_right_panel.png) - Opens the right-hand panel.


![lineage_close_right_panel.png](lineage_close_right_panel.png) - Closes the right-hand panel.


You can also click on a DataSet (represented by the rectangles) to see information about that DataSet in the info panel. 


### Info Panel


When you click on a DataFlow or DataFusion icon in the Lineage view, an info panel opens on the left side of the screen. This panel shows the owner, the number of direct and indirect impacts on downstream elements, input and outset DataSets (for DataFlows and DataFusions), the update history, and the number of rows and columns (for DataSets). If you do not have access to a given DataSet, DataFlow, or DataFusion, you cannot view the information in the panel. For DataSets, a button appears that allows you to request access from the owner. For DataFlows and DataFusions, a simple message appears stating that you do not have access.   


### List Panel


A collapsible panel on the right allows you to see all of the individual DataSets, DataFlows, Cards, and Alerts powered by this DataSet. Click ![data_center_datasets_icon.png](data_center_datasets_icon.png) to see impacted DataSets, ![data_center_dataflows_icon.png](data_center_dataflows_icon.png) to see DataFlows, ![dashboard_layouts_kpi_card_icon.png](dashboard_layouts_kpi_card_icon.png) to see Cards, and ![alert_icon_new.png](alert_icon_new.png) to see Alerts.


![new_data_lineage_rn.png](new_data_lineage_rn.png)

