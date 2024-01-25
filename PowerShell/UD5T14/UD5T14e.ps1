Get-ChildItem -Path C:\Windows -Include a*,e* -Recurse -File -ErrorAction Ignore |
Format-Wide -Column 4
