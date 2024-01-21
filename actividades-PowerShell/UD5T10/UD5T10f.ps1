[int]$num = Read-Host 'Escribe el numero'
for ($i = 0; $i -le 10; $i++) {
    $multiplicacion=$num*$i
    Write-Output "$num x $i = $multiplicacion"
}