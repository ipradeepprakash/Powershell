
#common useful commands

    
# Get-DbaErrorLog 
            
            #: displays the error logs
            <# 

                Get-DbaErrorLog : displays the error logs
                     parameters: 
                        -SQLinstance : <SQL instance name>
                        -Lognumber : 0: recent log, 1,2,3 etc: older
                        -Text : enter any search term

            #>

        # find any search term with -Text parameter from recent(0) Errorlog
        cls
        Get-DbaErrorLog -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01 -LogNumber 0 -Text "login failed" | ft -AutoSize -Wrap | Out-File c:\test\SQLerrorlog.txt
        Invoke-Item C:\test\SQLerrorlog.txt

        # find any search term with -Text parameter from older (1) Errorlog
        cls
        Get-DbaErrorLog -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01 -LogNumber 1 -Text "CPU" | ft -AutoSize -Wrap | Out-File c:\test\SQLerrorlog1.txt
        Invoke-Item C:\test\SQLerrorlog1.txt

        # find any search term with -Text parameter from older (1) Errorlog with specific date Before /After
        cls
        Get-DbaErrorLog -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01 -LogNumber 1 -Text "login" -Before '2025-02-20 00:00:00'| ft -AutoSize -Wrap | Out-File c:\test\SQLerrorlog_database.txt
        Invoke-Item C:\test\SQLerrorlog_database.txt

        cls
        Get-DbaErrorLog -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01 -LogNumber 1 -Text "Database" -After '2024-10-28 00:00:00'| ft -AutoSize -Wrap | Out-File c:\test\SQLerrorlog_database.txt
        Invoke-Item C:\test\SQLerrorlog_database.txt



# Get-DbaInstanceInstallDate : displays SQL installed details

         <# 

            Get-DbaInstanceInstallDate : displays SQL installed details
                    parameters: 
                    -SQLinstance : <SQL instance name>
                   

         #>

            # find SQL installation details of instance
            Get-DbaInstanceInstallDate -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01

            # find SQL installation details of instance details passed
            'sqlserver2014a', 'sql2016' | Get-DbaInstanceInstallDate


# Get-DbaProcess: Lists all DB processes that are not system SPIDS
        Get-DbaProcess -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 -ExcludeSystemSpids | Out-Gridview

#connect to SQL instance
Connect-DbaInstance -SqlInstance [LAPTOP-57FE7IRR\MSSQLSERVER01\MSSQLSERVER01]

#verify the connection to SQL
Test-DbaConnection -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01\mssqlserver01

#Gets computer system information from the server and returns as an object.
Get-DbaComputerSystem




# Get list of modules that are installed
        Get-InstalledModule | Select-Object name,installedDate,version,type | ft -AutoSize -Wrap

# Get database list info on instance
        Get-DbaDatabase -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | ft -AutoSize -Wrap

# get DB processes that are not system SPIDS
        Get-DbaProcess -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 -ExcludeSystemSpids | Out-Gridview

# check Maxdop value
        Get-DbaSpConfigure -SqlInstance localhost -ConfigName MaxDegreeOfParallelism | SELECT ConfiguredValue, RunningValue

# test diskspeed for database
        Test-DBADiskSpeed -SQlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 -Database tempdb | Out-Gridview

# cIO Latency details
        Get-DbaIoLatency -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | Out-GridView

#Writes the output to a file.
        Get-DbaIoLatency SQLServerInstance1 | Select-Object * | Out-File C:\DBATools\IOLatency.txt

# get logins on instance
        Get-DbaLogin -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 | Out-GridView

# export logins of instance
        Export-DbaLogin -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 -Path 'C:\DBATools\'

        Export-DbaInstance -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01 -Path C:\DBATools\


# Invoke-Item C:\DBATools\
    Test-DbaConnection -SqlInstance LAPTOP-57FE7IRR\MSSQLSERVER01


# Backup ALL Databases
    Backup-DbaDatabase -SqlInstance 'ServerInstance' -Database 'YourDatabase' -BackupDirectory 'C:\Backup'

# SQL server: Health check
    Get-DbaLastGoodCheckDb -SqlInstance 'YourServer'

# SQL server inventory
    Get-DbaDatabase -SqlInstance 'YourServer'

# query SQL server instance
    Get-DbaSqlInstance -SqlInstance 'ServerInstance'

# get list of databases
    Get-DbaDatabase -SqlInstance localhost | ft -AutoSize -Wrap

# Logspace used by Databases
    Get-DbaDbLogSpace -SqlInstance localhost | ft












