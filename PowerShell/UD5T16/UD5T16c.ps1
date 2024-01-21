Get-Service |
Where-Object Status -eq "Stopped"|
Sort-Object Site |
Out-GridView