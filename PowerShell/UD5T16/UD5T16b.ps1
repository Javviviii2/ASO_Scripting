Get-Process |
Sort-Object -Property CPU -Descending |
ConvertTo-Csv|
Out-File ud5t16b.csv