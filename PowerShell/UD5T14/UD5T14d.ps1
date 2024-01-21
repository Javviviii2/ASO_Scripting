Get-ChildItem -path "C:\Program Files" -Include "*.exe","*.dll","*.ini" -recurse -ErrorAction Ignore |
Format-List -Property name -GroupBy extension
