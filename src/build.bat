@echo off
setlocal enabledelayedexpansion

rem for /r %%i in (*.java) do (
rem     set fullpath=%%i
rem     set relativepath=!fullpath:%~dp0=!
rem     echo !relativepath!
rem     javac !relativepath!
rem )

rem for /r %%i in (*.class) do (
rem     set fullpath=%%i
rem     set relativepath=!fullpath:%~dp0=!
rem     echo !relativepath! >> class.txt
rem )

javac unluac/parse/LHeaderType.java
jar uf unluac.jar unluac/parse/LHeaderType.class
jar cf unluac.jar @class.txt

jar cfe unluac.jar unluac.Main @class.txt

pause