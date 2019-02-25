<cfcomponent> 
	<cfset this.name="familyRecipe">
    <cfset this.sessionManagement=True>
    <cfset this.clientManagement=False>
    <cfset this.applicationTimeout = #CreateTimeSpan(0,3,0,0)#>
    <cfset this.applicationName = 'familyRecipe'>
    <cfset this.sessiontimeout = #CreateTimeSpan(0,3,0,0)#>

    
	
     <cffunction name="onApplicationStart">
        <cfset application.MainDataSource = "fr_DB">
        <cfset application.FileServer = "/files/">
     </cffunction>    
    
    
	<cffunction name="onRequestStart">
		<cfset application.MainDataSource = "fr_DB"/>
        <cfset application.FileServer = "/files/" />
        <cfset session.NavBar.Current = ""/>

        <!---Cfc's --->
        <cfset Application.Master = createobject("component", "cfc.Master").init("#application.MainDataSource#")>


        <!---Refresh cfc's--->
        <cfif isdefined("url.reset") and url.reset is 1>


        </cfif>
	</cffunction>
</cfcomponent>