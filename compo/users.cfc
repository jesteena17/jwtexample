<cfcomponent>
<cfset headers = getHTTPRequestData().headers />

<cfset requestBody = getHTTPRequestData().content />
    <cffunction name="createusers" access="remote">
        <cfquery name = "insertuser" reult="insres">
            INSERT INTO `jwtusers`( `name`, `email`, `password`) 
            VALUES (<cfqueryparam value = "" CFSQLType = "cf_sql_varchar">,
            <cfqueryparam value = "" CFSQLType = "cf_sql_varchar">,
            <cfqueryparam value = "" CFSQLType = "cf_sql_varchar">)
        </cfquery>
        <cfset cnt=listen(insres.generated_key)/>
        <cfif cnt gt 0>
            <cfreturn true/>
        </cfif>
            <cfreturn false/>
        
    </cffunction>
</cfcomponent>