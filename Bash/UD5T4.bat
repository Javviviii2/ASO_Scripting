@echo off

echo Introduce nombre del fichero
set /p fichero=
if exist %fichero% attrib %fichero%  
if not exist %fichero% attrib > %fichero%.txt