function media  {
    param (
        [int]$num1,
        [int]$num2,
        [int]$num3
    )
    $result=($num1+$num2+$num3)/3
    return $result
}
$num1 = Read-Host 'Introduzca numero 1: '
$num2 = Read-Host 'Introduzca numero 2: '
$num3 = Read-Host 'Introduzca numero 3: '
$result = media $num1 $num2 $num3
Write-Output "La media es: $result"