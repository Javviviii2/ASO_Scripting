[float]$numA = Read-Host 'Escribe el numero A'
[float]$numB = Read-Host 'Escribe el numero B'
[float]$numC = Read-Host 'Escribe el numero C'

$sqrt1= (-$numB + ([math]::Sqrt($b*$b -4*$numA*$numC))/(2*$numA))
$sqrt2= (-$numB - ([math]::Sqrt($b*$b -4*$numA*$numC))/(2*$numA))


Write-Output "la raiz 1 es $sqrt1"
Write-Output "la raiz 2 es $sqrt2"