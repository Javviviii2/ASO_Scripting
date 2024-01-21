# length => tamaño
Get-ChildItem -Path C:\Windows\ -Include *.txt -Recurse -Force -ErrorAction Ignore | 
Format-Table -AutoSize -Property Name,Length,CreationTime,Extension,FullName