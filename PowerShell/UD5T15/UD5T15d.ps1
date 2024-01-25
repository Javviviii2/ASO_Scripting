$date= (Get-Date).AddDays(-7)
Get-ChildItem -Path C:\Windows -Recurse -ErrorAction Ignore |
Where-Object {$_.Length -gt 2Mb -and $_.LastAccessTime -gt $date } |
Format-Wide -Column 3