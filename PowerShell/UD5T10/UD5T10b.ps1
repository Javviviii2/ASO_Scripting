function var_change {
    param (
        $var1,
        $var2
    )
    if ($var1 -ne $var2){
        $temp1 = $var1
        $var1 = $var2
        $var2 = $temp1
        return Write-Output "La variable 1 vale {$var1} y la variable 2 vale {$var2} ahora"
    } else{
        Write-Output 'Error, variables iguales'
    }
}
$var1 = Read-Host 'Introduzca valor variable 1 '
$var2 = Read-Host 'Introduzca valor variable 2 '
var_change $var1 $var2

# var1, var2 = var2, var1



