@echo off

echo Especifique nombre del fichero:
set /p var1=

if exist %var1% (
    echo Especifique ruta de destino:
    set /p var2=
    copy %var1% %var2%
    
    echo Especifique nueva extension
    set /p var3=

    set nombre=%var1:~0,-4%
    ren %var2%\%var1% %nombre%.%var3%
    dir %var2%\%nombre%.%var3%
) else (
    echo No encontrado
)
