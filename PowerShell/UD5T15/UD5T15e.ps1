$date= (Get-Date).AddDays(-3) #get-date coge la fecha actual y .adddays -3 lo que hace es añadir -3 días.
Get-EventLog -LogName Security -After $date |
Group-Object -Property InstanceId |
Sort-Object -Descending Count