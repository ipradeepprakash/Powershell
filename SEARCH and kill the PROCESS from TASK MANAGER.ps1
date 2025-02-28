# kill DTS package job

# step4: check the DTS name #cm_ssis_# & enter in command line '#cm_55is_#' as shown search execute the below command
Get-WmiObject -class win32_process | Where-Object {$_.commandline -like '*CM_SSIS_ACCESS_LOG*'} |Select {S _. processID}, {$ _. processname}, {$ _. CommandLine} |fl

# step5: kill the process id
Stop-Process -Id < Process_ID > -Confirm -PassThru
