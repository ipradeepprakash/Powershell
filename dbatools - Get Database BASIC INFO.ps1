

# Get-DbaComputerSystem: List computer system information from the server.
    Get-DbaComputerSystem




#Get-DbaDatabase: get the list of databases and its status
    get-dbadatabase -sqlinstance LAPTOP-57FE7IRR\MSSQLSERVER01 | Select-Object computername, instancename, name, recoverymodel,status | ft
   

# find-dbabackup: get backup file info in a path
    find-dbabackup -Path C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\Backup -backupfileextension bak -retentionperiod 48h


# Get-DbaCpuUsage: detailed CPU usage information about a SQL Server's process
    Get-DbaCpuUsage -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | ft

#find commands
       find-dbacommand *status*

    #Get-DbaTrace: get trace flags info
        Get-DbaTrace -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | ft
    
    # Get-DbaDbState: get user database status
        Get-DbaDbState -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | ft









