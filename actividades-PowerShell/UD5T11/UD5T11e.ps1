# decir si un número es primo o no
[int]$num = Read-Host 'Escribe el numero'
$sum=0
for ($i = 1; $i -le $num; $i++){
    $operation=$num%$i
    if ($operation -eq 0){
        $sum+=$i #voy sumando los valores $i cuyo resto es 0 del número dado
    } else{ 
        continue
    }
}
$checkodd=$num+1 #primo cumple ser si mismo y el uno.
if ($sum -eq $checkodd) { #si la suma $array es igual al número dado +1 = primo, sino no primo
    Write-Output "primo"
} else{
    Write-Output "No primo"
}