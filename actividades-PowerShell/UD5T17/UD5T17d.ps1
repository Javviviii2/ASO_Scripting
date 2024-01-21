$Env:HoraAct = get-date -Format "HH:mm"
$Env:HoraAct
Remove-Item -Path Env:HoraAct #borrar variable
Get-ChildItem Env: