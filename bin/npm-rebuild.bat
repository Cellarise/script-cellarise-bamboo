REM local packages
call npm prune
call npm update --msvs_version=2013
call npm dedupe --msvs_version=2013
