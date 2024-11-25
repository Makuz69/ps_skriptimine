$count = 0

do {
    Write-Host "Notepad is running" -ForegroundColor Green
    $count++
    Start-Sleep -Seconds 1
    
} until((Get-Process | where{$_.ProcessName -eq "notepad"}).Count -eq 0)

Write-Host "$count"