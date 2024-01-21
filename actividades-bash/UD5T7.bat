@echo off

echo Especifique nombre del archivo y su extension:
set /p var1=
echo Diga que desea buscar en el archivo
set /p var2= 

if exist %var1% (
    echo Exite el archivo
    find "%var2%" %var1%
) else (
    echo no existe el archivo
    echo %time%_%date% > %var1%.txt
    type %var1%.txt 
)