# Obtener un listado de los archivos de c:\archivos de programa que empiecen por A en todos
# los subdirectorios y presentarlo en forma de tabla autoajustada
Get-ChildItem -Path "C:\Program Files"  -Include a* -Recurse -ErrorAction Ignore| 
Format-Table -AutoSize