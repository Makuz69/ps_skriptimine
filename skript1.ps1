# define data arrays
$Array1 = @(1, 2, 3)
$Array2 = @(4, 5, 6)

# define empty result array
$Array3 = New-Object -TypeName System.Collections.ArrayList

# add new values to empty array
$Array3.Add($Array1[0] + $Array2[0]) | Out-Null
$Array3.Add($Array1[1] + $Array2[1]) | Out-Null
$Array3.Add($Array1[2] + $Array2[2]) | Out-Null

# output result array
$Array3