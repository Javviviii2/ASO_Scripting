[int]$num = Read-Host 'Escribe el numero'
[int]$len = Read-Host 'Escribe hasta que numeros quieres comprobar'

for ($i = 1; $i -le $len; $i++) {
    $remainder=$num % $i
    if ( $remainder -eq 0) {
        Write-Output "$i"
    }
}