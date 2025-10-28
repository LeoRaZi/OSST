@echo off
setlocal enabledelayedexpansion

echo Enter whole numbers. To finish, enter the sign "-".
set /p num=Enter a number: 
if "%num%"=="-" exit /b

set /a min=%num%
set /a max=%num%

:loop
set /p num=Enter a number: 
if "%num%"=="-" goto done

if %num% lss !min! set /a min=%num%
if %num% gtr !max! set /a max=%num%
goto loop

:done
echo MIN: !min!
echo MAX: !max!
exit /b

