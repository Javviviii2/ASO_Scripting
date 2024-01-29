$directory_path= "C:\Windows\System32\drivers\etc\services"

(Get-Content $directory_path) -notmatch '^#' |
Select-String -Pattern "/tcp","/udp" |
Group-Object Pattern |
Select-Object Count,Name