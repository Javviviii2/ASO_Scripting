@echo off

echo Introduce nombre del fichero
set /p fichero=
if exist %fichero% type %fichero%  
if not exist %fichero% echo El fichero especificado no existe 