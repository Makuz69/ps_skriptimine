$data = Import-Csv "C:\Users\Markus\ps_skriptimine\data.csv"

$schoolData = @()

foreach($personData in $data){

    $personData.Age = [int]$personData.Age
    $school = ""

    if($personData.Age -ge 4 -and $personData.Age -le 10){
        $school = "Junior"
    } elseif($personData.Age -ge 11 -and $personData.Age -le 17){
        $school = "Senior"
    }

    $schoolData += [PSCustomObject]@{'Name'=$personData.Name; 'school'=$school}
}
$formattedData = $schoolData | ForEach-Object {
    "$($_.Name),$($_.School)"
}

$headers = "Name,School"
$formattedData = ,$headers + $formattedData

Set-Content -Path "C:\Users\Markus\ps_skriptimine\school_data.csv" -Value $formattedData

Write-Host $formattedData

#Write-Host $schoolData
#$schoolData | Export-Csv -NoTypeInformation -Path "C:\Users\Markus\ps_skriptimine\school_data.csv"