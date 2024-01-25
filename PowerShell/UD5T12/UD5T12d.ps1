# Mostrar los servicios, detener el servicio "Audio Windows" confirmando la acción
Get-Service 
# detener el servicio "Audio Windows" confirmando la acción
Stop-Service -DisplayName "Audio de Windows" -Confirm
# mostrar los servicios (tanto en PowerShell como en Services de Windows) 
Get-Service; Invoke-Item C:\Windows\System32\services.msc 
# y arrancar de nuevo el servicio en modo Debug
Restart-Service -DisplayName "Audio de Windows" -Debug