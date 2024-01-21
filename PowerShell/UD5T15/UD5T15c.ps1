Get-ChildItem -Path C:\Windows\Logs -Recurse -ErrorAction Ignore | 
Where-Object Length -gt 100kb |
Format-Table -Property Length,Name,Extension,CreationTime