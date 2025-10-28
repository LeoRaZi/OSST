@echo off
if "%~2"=="" (
  echo Error: you need to specify two folders.
  echo 7.bat C:\A C:\B
  exit /b
)

set "dir1=%~1"
set "dir2=%~2"

echo Shared files in "%dir1%" and "%dir2%":


for %%f in ("%dir1%\*") do (
  if exist "%dir2%\%%~nxf" echo %%~nxf
)

exit /b
