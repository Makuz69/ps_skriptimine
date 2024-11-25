Get-ChildItem -path C:\Temp\Test

Write-Host 

$result = Get-ChildItem -path C:\Temp\Test | Where{$_.Name -like '*.csv'} | Select Length, Name


Write-Host "Filename: $($result.Name)"
Write-Host "Size in KB: $($result.Length/1kB)"
Write-Host "Size in MB: $($result.Length/1MB)"