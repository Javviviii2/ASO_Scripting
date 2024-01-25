# Crear un fichero "listado.txt" en el que se incluyan todos los ficheros
# ejecutables (.exe) que haya en el disco duro y en otra unidad (CD, por ejemplo)
Get-ChildItem -Path "C:\","E:\" -Include *.exe -Recurse > .\listado.txt

