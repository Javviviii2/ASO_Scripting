@echo off

echo escriba nombre del archivo:
set /p var_nombre_archivo=

if exist %var_nombre_archivo% (
    goto menuprincipal 
) else (
    echo #### error ####
    exit
) 

:menuprincipal
    echo. Menu principal
    echo. 1. Cambiar nombre
    echo. 2. Copiar fichero
    echo. 3. Buscar palabra
    echo. 4. Modificar atributo
    echo. 5. Concatenar contenido
    echo. 6. Borrar fichero
    echo. 7. Copiar a usuario
    echo. 8. Duplicar fichero n veces
    echo. 9. Salir
    echo.
    echo Elija una opcion -especifique numero-:
    set /p menu=

if %menu% ==1 goto menu1
if %menu% ==2 goto menu2
if %menu% ==3 goto menu3
if %menu% ==4 goto menu4
if %menu% ==5 goto menu5
if %menu% ==6 goto menu6
if %menu% ==7 goto menu7
if %menu% ==8 goto menu8
if %menu% ==9 goto menu9

:menu1
    echo Escriba nuevo nombre del fichero y su extension
    set /p menu1_new_name=

    if "%menu1_new_name%" neq "" (
        rename "%var_nombre_archivo%" "%menu1_new_name%"
        set var_nombre_archivo=%menu1_new_name%
        goto menuprincipal
    ) else if "%menu1_new_name%" =="" (
        goto menu1
        )

    if %errorlevel% neq 0 (
        echo Error
    )
:menu2
    echo Diga ruta de destino
    set /p menu2_path=
    copy %var_nombre_archivo% %menu2_path%
    
    if exist %menu2_path%\%var_nombre_archivo% (
        goto menuprincipal
    ) else if %errorlevel% neq 0 (
        echo Error
    )
:menu3
    echo Escriba que palabra desea buscar dentro del documento:
    set /p menu3_word=
    if %menu3_word% == "" (
        goto menu3
    ) else (
        find /i /c "%menu3_word%" %var_nombre_archivo%
    )
:menu4
    echo Diga el atributo que desea cambiar. Elija oculto o lectura:
    set /p menu4_atr=
    if "%menu4_atr%" == "oculto" (
        attrib +h %var_nombre_archivo%
    ) else if "%menu4_atr%" == "lectura" (
        attrib +r %var_nombre_archivo%
    ) else (
        echo error
        goto menuprincipal
    )

:menu5
    echo Escriba una palabra:
    set /p menu5_word=
    if "%menu5_word%" == "" (
        pause
        cls
        goto menuprincipal
    ) else if "%menu5_word%" neq "" (
        echo %menu5_word% >> %var_nombre_archivo%
        goto menuprincipal
    )
:menu6
    del /p %var_nombre_archivo%
    if %errorlevel% neq 0 (
        echo error
        exit
    ) else (
        exit
    )
:menu7
    echo Escriba un usuario del sistema
    set /p menu7_user=
    copy %var_nombre_archivo% %userprofile%\desktop

    cd %userprofile%\desktop
    if exist %var_nombre_archivo% (
        echo copiado correcto
    ) else (
        echo error en el copiado
    )
:menu8
    rem limpiar variable
    set copias=
    echo Escribe la cantidad de copias deseadas
    set /p copias=
    rem Se comprueba que copias no esté vacía
    if not defined copias goto menu8
    rem nombre del fichero sin extensión
    set nombre=%fichero:~0,-4%
    rem extensión del fichero
    set extension=%fichero:~-3,3%
    rem bucle para crear las copias
    for /l %%i in (1,1,%copias%) do copy %fichero% %nombre%%%i.%extension%
    pause
    goto menuprincipal
:menu9
    exit
