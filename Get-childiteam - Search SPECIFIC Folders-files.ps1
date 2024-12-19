cls

$drives = "G:","F:","E:","i:"
foreach ($a in $drives) {
Write-Host "*************Folder path - $a **************"
Get-ChildItem -Path $a -Recurse -Filter *.ldf | Select-Object -ExpandProperty FullName 

Write-Host " "
}

#Find SPECIFIC files in several Folders using Powershell (GetchildItem) WITHOUT FOR Loop
#**************************************************************************
cls
$a = hostname
Write-Host "Server name - $a" 
Write-Host
Write-Host "-----SEARCHING a file (.ldf) from several Drives------------------"
Write-Host
#hostname
Get-ChildItem -Path G:,H:,I:,e:,F:,c: -Recurse -Filter *.ldf | Select-Object -ExpandProperty FullName
