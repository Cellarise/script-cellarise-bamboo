REM install development packages
call npm prune
call npm update --msvs_version=2013
call npm dedupe --msvs_version=2013

REM delete Build
rmdir .\Build /s /q

REM delete Reports
rmdir .\Reports /s /q
IF %ERRORLEVEL% LEQ 4 exit 0