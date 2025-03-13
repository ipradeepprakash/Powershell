cls
Write-Host "------Error Handling code with IF..ELSE---------"
Write-Host "  "

if (Get-Service -Name BITS){
Write-Host "Service BITS Exists"
}
else {
Write-Host "Service BITS Exists"
}
Write-Host "  "
Write-Host "OUTSIDE of IF Loop.. Sample Line"
