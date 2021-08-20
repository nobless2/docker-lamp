@set @x=0; new ActiveXObject('Shell.Application').ShellExecute ('cmd.exe','/K ' + '"' + WScript.ScriptFullName + '"' + ' Admin','','runas',1);/*
@echo off
if "%~1" neq "Admin" (
  cscript.exe //nologo //e:jscript "%~f0"
) else (
  cd /d "%~dp0"
)

FOR /F "eol=# tokens=1,* delims==" %%A IN (.env) DO (
    if %%A==HOST_NAME (
        set HOST_NAME=%%B
    )
)

cd /d "%windir%\system32\drivers\etc"
SET "TEMP_HOSTS=%TEMP%\%RANDOM%__hosts"

attrib -R -S -H hosts
FINDSTR /V "%HOST_NAME%" hosts > "%TEMP_HOSTS%"
COPY /b/v/y "%TEMP_HOSTS%" hosts

*/

exit