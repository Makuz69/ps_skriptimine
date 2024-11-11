## Nimed ja töötatud päevad
$Hashtable1 = @{Name="John","Joe","Mary"; DaysWorked=12,20,18}

## Nimed ja palk päevas
$Hashtable2 = @{Name="John","Joe","Mary"; SalaryPerDay=100,120,150}

#Palgad
$Johnsalary = $Hashtable1.DaysWorked[0] * $Hashtable2.SalaryPerDay[0]
$Joesalary = $Hashtable1.DaysWorked[1] * $Hashtable2.SalaryPerDay[1]
$Marysalary = $Hashtable1.DaysWorked[2] * $Hashtable2.SalaryPerDay[2]

## Nimed ja palk
$Hashtable3 = @{Name=$Hashtable1.Name[0], $Hashtable1.Name[1], $Hashtable1.Name[2]; Salary=$Johnsalary, $Joesalary, $Marysalary}

## Väljund
$Hashtable3