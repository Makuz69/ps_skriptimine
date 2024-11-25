while(Get-Process | where{$_.ProcessName -eq "notepad"}){
    Write-Host "Notepad is running" -ForegroundColor Green
    Start-Sleep -Seconds 2
}