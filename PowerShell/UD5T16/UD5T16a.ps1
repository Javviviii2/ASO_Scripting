Get-ChildItem -Path C:\Windows -Include "*.ini","*.log" -ErrorAction Ignore |
ConvertTo-Html |
Out-File ud5t16a.html | 
Invoke-Item "E:\DRIVE\ASIR\2_ASIR\Administración de Sistemas Operativos (ASO)\Tema 5. Automatización de tareas y scripts Windows\ASO_Scripting\PowerShell\ud5t16a.html"  #invoke lanza el archivo con el navegador predeterminado