REM delete Build
rmdir .\Build /s /q

REM delete Reports
rmdir .\Reports /s /q
IF %ERRORLEVEL% LEQ 4 exit 0