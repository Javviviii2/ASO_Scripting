Get-ChildItem -Path C:\Windows\System32 -Recurse -ErrorAction Ignore | 
Group-Object Extension |
Sort-Object Name |
Format-Table -AutoSize count, name, Group
