@echo off

echo Expecifique la extension a buscar -- sin punto --
set /p var_extension=

set archivo_dat=extension.dat
set carpeta_lotes= %USERPROFILE%\Desktop\lotes

dir /s %WINDIR%\*.%var_extension% > %USERPROFILE%\Desktop\lotes\%archivo_dat%


if exist %carpeta_lotes%\%archivo_dat% ( 
    echo Especifique el criterio de ordenacion -- /r o nada --
    set /p var_criterio_ordenacion=
    sort %var_criterio_ordenacion% %carpeta_lotes%\%archivo_dat% /o %carpeta_lotes%\%archivo_dat%
    echo archivo ordenado
) else (
    echo Todo ha ido mal, fin del proceso
)
