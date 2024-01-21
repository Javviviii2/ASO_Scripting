Get-ChildItem -Path C:\Windows -Recurse -ErrorAction Ignore |
Where-Object {$_.Length -gt 2Mb -and $_.LastAccessTime -gt "01/07/2024 00:00:00" } |
Format-Wide -Column 3