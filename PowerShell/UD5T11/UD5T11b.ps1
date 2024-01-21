[int]$r = Read-Host 'Escribe la longitud del radio'
$area=[math]::pi*[math]::Pow($r,2)
$area=$area.ToString("##.##")
Write-Output "El area del circulo es: $area cm2"