
function suma_naturales {
    for ($var1=0; $var1 -le 20; $var1++){
        $suma+=$var1 
    } return $suma
    Write-Output $suma
}

suma_naturales