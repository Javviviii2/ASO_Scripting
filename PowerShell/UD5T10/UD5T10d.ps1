function mayor {
    param (
        [int]$num1,
        [int]$numb2
    )
    if ($num1 -gt $num2){
        Write-Output "$num1 es mayor"
    } elseif ($num2 -gt $num1) {
        Write-Output "$num2 es mayor"
    } else {
        Write-Output "Error"
    }
}
$num1 = Read-Host 'Numero 1'
$num2 = Read-Host 'Numero 2'
mayor $num1 $num2
