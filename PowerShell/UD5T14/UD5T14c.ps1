Set-Location "C:\Windows\System32"
Get-ChildItem "*.exe","*.bat","*.com" |
Format-List -Property Name,Length,Extension,IsReadOnly