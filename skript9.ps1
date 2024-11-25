$count = 0

do {
    Write-Host "Notepad is running" -ForegroundColor Green
    $count++
    Start-Sleep -Seconds 1
    
} while(Get-Process | where{$_.ProcessName -eq "notepad"})

Write-Host "$count"