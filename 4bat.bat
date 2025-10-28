@echo off
if "%~2"=="" (
  echo error: you need to specify the path and extension.
  echo 4.bat C:\Test txt
  exit /b
)

set "path=%~1"
set "ext=%~2"

echo files .%ext% catalog %path%:
for %%f in ("%path%\*.%ext%") do echo %%~nxf

exit /b
