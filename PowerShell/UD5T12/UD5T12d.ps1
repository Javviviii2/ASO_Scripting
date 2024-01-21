Get-Service 
Stop-Service -DisplayName "Audio de Windows" -Confirm
Get-Service; net start
Restart-Service -DisplayName "Audio de Windows" -Debug