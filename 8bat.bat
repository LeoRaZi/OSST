@ECHO OFF
IF %1 LEQ 0 GOTO EXIT
IF %1 GEQ 50 GOTO EXIT
SET /A n=%1
SET /A f=%1
:BegLoop
IF %n% == 1 GOTO Loop
SET /A n = n-1
SET /A f = f*n
GOTO BegLoop
:Loop
ECHO %1 != %f%
Exit /b
:EXIT
ECHO Not correct parameter
Exit /b