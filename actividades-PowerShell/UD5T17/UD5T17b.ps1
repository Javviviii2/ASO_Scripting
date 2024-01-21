Get-Alias |
Where-Object {$_.Definition -like "*Item*" -or $_.Definition -like "*Object*" }