@echo off
if "%~1"=="" (
  echo Error: you need to specify the directory path.
  echo 6.bat C:\Test
  exit /b
)

set "dir=%~1"
set /a kol=0

for /d %%i in ("%dir%\*") do set /a kol+=1

echo catalog "%dir%" subdirectory %kol%
exit /b
