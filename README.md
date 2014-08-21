# script-cellarise-bamboo
[![view on npm](http://img.shields.io/npm/v/script-cellarise-bamboo.svg)](https://www.npmjs.org/package/script-cellarise-bamboo)
[![npm module downloads per month](http://img.shields.io/npm/dm/script-cellarise-bamboo.svg)](https://www.npmjs.org/package/script-cellarise-bamboo)
[![Dependency Status](https://david-dm.org/Cellarise/script-cellarise-bamboo.svg)](https://david-dm.org/Cellarise/script-cellarise-bamboo)

> A collection of command line scripts for executing common build commands on Atlassian Bamboo


##Installation 

Install as a global package to call build-bamboo from any location.

This git-bamboo command executes batch scripts which require the windows command shell.


##Usage 

### From the command line

The build-bamboo command accepts one argument - the name of the batch script to be executed.

```cmd
build-bamboo build
```

Each batch script may use Atlassian Bamboo build variables.  These variables can be set manually if calling the script outside of Atlassian Bamboo or if you want to override the variable.  For example, to override the build repository:

```cmd
set bamboo_planRepository_repositoryUrl="git@github.com:Cellarise/script-git-bamboo.git"
build-bamboo build
```


#Scripts

##npm-rebuild

Rebuild npm packages using the following npm commands.

```bat
call npm prune
call npm update --msvs_version=2013
call npm dedupe --msvs_version=2013
```

##pre-build

Pre build tasks.

```bat
REM delete Build
rmdir .\Build /s /q

REM delete Reports
rmdir .\Reports /s /q
IF %ERRORLEVEL% LEQ 4 exit 0
```

##build

Build tasks.

```sh
call gulp
```

##post-build

Post build tasks.

```bat
cls
```


# License

MIT License (MIT)

Copyright (c) 2014 John Barry