function countstart {
    $total = (Get-Service | Where{$_.Status -eq 'Running'}).Count
    Write-Host "Total services in running state = $($total)"
}

function countstop {
    $total = (Get-Service | Where{$_.Status -eq 'Stopped'}).Count
    Write-Host "Total services in stopped state = $($total)"
}

countstart
countstop