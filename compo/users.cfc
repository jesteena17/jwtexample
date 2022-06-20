<cfcomponent>
    <cffunction name="createusers" access="remote">
        <cfquery name = "insertuser">
            INSERT INTO `jwtusers`( `name`, `email`, `password`) 
            VALUES (<cfqueryparam value = "" CFSQLType = "cf_sql_varchar">,
            <cfqueryparam value = "" CFSQLType = "cf_sql_varchar">,
            <cfqueryparam value = "" CFSQLType = "cf_sql_varchar">)
        </cfquery>
    </cffunction>
</cfcomponent>