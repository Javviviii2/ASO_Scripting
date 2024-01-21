Get-ChildItem -Path C:\Windows -Include "*.ini","*.log" -Recurse -ErrorAction Ignore |
ConvertTo-Html |
Out-File ud5t16a.html | Invoke-Item ud5t16a.html #invoke lanza el archivo con el navegador predeterminado