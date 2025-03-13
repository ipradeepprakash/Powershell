import-module sqlserver
get-sqldatabase -ServerInstance 'instancename' | where {$_.name -notin ('tempdb')} | Backup-SqlDatabase