@echo off

echo Especifique nombre del archivo y su extension:
set /p var1=


if exist %var1% (
    echo Exite el archivo
    echo ¿Qué desea buscar dentro del archivo?
    set /p var2=
    find /i "%var2%" %var1%
) else (
    echo %time%_%date% > %var1%.txt
    type %var1%.txt 
)