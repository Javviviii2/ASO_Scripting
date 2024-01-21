[int]$num = Read-Host 'Escribe el numero'
$sqrt=[math]::Sqrt($num)
Write-Output "la raiz es $sqrt"