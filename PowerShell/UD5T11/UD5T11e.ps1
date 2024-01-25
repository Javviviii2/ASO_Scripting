# decir si un número es primo o no
[int]$num = Read-Host 'Escribe el numero'
<# $sum=0
for ($i = 1; $i -lt $num; $i++){
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
} #>

$ind=2
$resto=1
while (($ind -lt $num) -and ($resto -gt 0)) {
    $resto = $num % $ind
    $ind++
}
if ($resto -eq 0) {
    Write-Output "No Primo"
} else {
    Write-Output "Primo"
}