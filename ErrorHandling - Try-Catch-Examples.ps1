cls
Write-Host "-----checking for Yahoo Services in Local system----"
Write-Host "  "
try {


if (Get-Service -Name '*Yahoo') 
{
Write-Host "  "
Write-Host "Yahoo SERVICE - EXISTS"
}

else {
Write-Host "NO. Yahoo SERVICE - EXISTS"
}

}

catch {
Write-Host "Error Occured..."
}

