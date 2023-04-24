# lwc-reusable-assets
#  Reusable Asset - Dynamic Related List Admin Guide

Overview

Related lists in Salesforce offer a compact view of a record detail page that *lists* all the items *related* to that record. There are different types of related lists but even the most advanced come with some limitations.


    * The maximum number of columns that can be displayed in 10 (enhanced related list)
    * Additional clicks are required to apply a filter that is static in nature.
    * The sorting ability on records is only available in enhanced related lists
    * Lacks pagination. Readability becomes difficult if the number of rows to display is large.
    * Inline Editing/Mass editing not available
    * Scrolling through a large set of records could cause performance issues
    * Related Parent Object Parent information cannot be shown.
# Who is impacted?  
    * Agents are impacted who wish to look up specific information in the related list record. Also, for enterprise customers dealing with multiple business models, not all fields that are relevant to them are exposed while for some not all fields exposed to them are relevant.
# How does this tool help?
    * This reusable tool helps plug in these gaps and much more.
        * No limit to the number of rows that can be displayed both on desktop and phone.
        * Admin can choose a child object name from here which is brought dynamically ensuring the object has a relationship with the parent object.
        * Provide the option to the admin to choose from a server-side driven data full (most recent, true data) or client-side data pull (fast, productive, on-demand pull to refresh stale data) as if your app is operating on a slow network area you might not want to pull all data at once rather should opt for bringing records of first page and pagination happens using server-side actions
        * Ability to choose what fields to be displayed as a user preference without impacting anyone else
        * Option to paginate the recordset with a preset number of records selected for each page
        * Default filter to be applied on the recordset
        * Placeholder to perform mass updates/delete actions on the related list.
        * Gives the ability for admin to choose whether to give end-users the ability to mass delete by showing/hiding checkbox in the configuration.
        * Also whether edit/delete options should be given or not. We can also choose to hide filter criteria applied on the table.
        * Ability to search the records in real-time via the search bar. It provides the ability to search on the exposed fields without needing any additional configuration
        * UX consistent with lightning experience on both desktop and phone
        * This component is built completely using HTML tables, thus providing faster performance. 
        * Up to second level Parent Record Fields can be shown on the table. For instance here in this table Related Account and Account’s owner info is shown.
        * Supports all types of fields including images.
# What is the cost associated with the tool (Performance, heavy custom, maintenance, etc.)
    * The tool utilizes the lightning web component along with apex code. This tool is tested against various network speeds and under conditions mentioned herein.

# Required editions and user permission

        * Available in: Lightning Experience
        * No special permission needed
        
# Initial Setup
   Refer to Reusable Asset - Dynamic Related List Admin Guide.pdf in Repo
# Limitations

* While using the server-side LWC component (*customRelatedList*) please consider 
    * the maximum offset limit is 2000 for Pagination (salesforce imposed by default on SOQL query )
    * Also, the sorting ability on fields of data type ‘text area’ is disabled by design considering Salesforce SOQL doesn’t allow filter and Sorting on “text area” fields.
    * works best if you are dealing with a huge set of data, and the application is rendering on a slow network thus all data shouldn’t be brought in one go 
* While using the client-side LWC component (generic_RelatedListTable) please consider using 
    * if operating in a high network area as all actions are client-side and provide master performance as compared to server-side.
    * No limit on offset for pagination.
    * can sort on Text area fields as well. 


