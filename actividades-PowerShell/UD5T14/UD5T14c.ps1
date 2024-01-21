Get-ChildItem -path "C:\Windows\System32" -Include "*.exe","*.bat","*.com" -recurse -ErrorAction Ignore|
Format-Table -Property Name,Length,Extension,IsReadOnly

