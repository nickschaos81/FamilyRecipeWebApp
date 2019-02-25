<!---
    Master cfc file is for Basic Query calls only. Add, Edit, Select and Delete. 
    Each call will only perform the one action and will not combine multiple actions.
    Unique routines, and queries will be done in a different cfc.

--->


<cfcomponent output="no">
	<cfset DB_Source = "#application.MainDataSource#">
    
    
    <!--- init routine --->
    <cffunction name="init" access="public" returntype="any">
        <cfargument name="DB_Source" required="yes" >
		
	    <cfset DB_Source = ARGUMENTS.DB_Source>
		<cfreturn this>
    </cffunction>




</cfcomponent>