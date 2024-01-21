function factorial (){
    param (
        [int]$num
    )
    if ($num -lt 0){
        $result=0
    }elseif ($num -le 1) {
        $result=1
    }else {
        $result = $num *(factorial($num-1))
    }
    return $result
}
$num = Read-Host 'Escribe el numero'
$result= factorial $num
Write-Output "$num = $result"