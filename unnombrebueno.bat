@echo off
echo Hola, esto es un mensaje de ejemplo
echo Este comando muestra texto en la pantalla


@echo off
REM Este es un comentario y no se ejecutará
echo Este texto sí se mostrará
REM Los comentarios ayudan a explicar lo que hace el programa



@echo off
echo Vamos a hacer una pausa...
pause
echo Continuamos después de pulsar una tecla


@echo off
echo Comenzando programa
goto Saltar

echo Este texto nunca se mostrará

:Saltar
echo Hemos saltado a esta sección


@echo off
REM Ejemplo 1: IF EXIST
IF EXIST C:\Windows\notepad.exe echo El Bloc de notas existe!

REM Ejemplo 2: IF con comparación
set respuesta=si
IF %respuesta%==si echo Has respondido que sí

REM Ejemplo 3: IF ERRORLEVEL
ping localhost
IF ERRORLEVEL 0 echo Ping ejecutado correctamente


@echo off
REM Muestra un archivo de texto con pausas entre páginas
more < leeme.txt

REM También se puede usar con la salida de otros comandos
dir | more


@echo off
REM Ordenar un archivo de texto
sort < nombres.txt

REM Ordenar la salida del directorio
dir | sort


@echo off
REM Buscar la palabra "datos" en un archivo
find "datos" < informe.txt

REM Buscar archivos .txt en el listado del directorio
dir | find ".txt"

REM Buscar sin distinguir entre mayúsculas y minúsculas
find /i "usuario" < usuarios.txt


@echo off
REM Usar un archivo como entrada para un comando
sort < lista.txt


@echo off
REM Programa de ejemplo completo

echo === Gestor de Archivos Simple ===
echo.

IF NOT EXIST archivos mkdir archivos
cd archivos

:Menu
cls
echo 1. Crear un archivo de texto
echo 2. Mostrar archivos existentes
echo 3. Buscar palabra en archivos
echo 4. Salir
echo.
set /p opcion=Elige una opción (1-4):

IF %opcion%==1 goto Crear
IF %opcion%==2 goto Mostrar
IF %opcion%==3 goto Buscar
IF %opcion%==4 goto Fin
goto Menu

:Crear
echo.
set /p nombre=Nombre del archivo:
set /p texto=Escriba contenido:
echo %texto% > %nombre%.txt
echo Archivo creado con éxito!
pause
goto Menu

:Mostrar
echo.
echo Archivos disponibles:
dir *.txt
pause
goto Menu

:Buscar
echo.
set /p palabra=Palabra a buscar:
find "%palabra%" *.txt
pause
goto Menu


:Fin
echo Gracias por usar el programa.