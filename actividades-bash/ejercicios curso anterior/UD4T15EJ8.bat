@echo off

echo Especifique nombre del fichero:
set /p var1=

if exist %var1% (
    echo Especifique ruta de destino:
    set /p var2=
    copy %var1% %var2%
    
    echo Especifique nueva extension -- sin punto--:
    set /p var3=
    cd %var2%
    ren %var1% %var1%.%var3%
    dir %var1%.%var3%
) else (
    echo No encontrado
)
