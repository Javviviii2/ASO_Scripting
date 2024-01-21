[int]$hours = Read-Host 'Escribe el numero de horas'

$week=$hours/168
$week=$week.ToString("##")
$days= ($hours%168)/24
$days=$days.ToString("##")
$remin_hours= ($hours%168)%24
$remin_hours=$remin_hours.ToString("##")

Write-Output "$hours horas son $week semanas, $days dias y $remin_hours horas"