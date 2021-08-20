@set @x=0; new ActiveXObject('Shell.Application').ShellExecute ('cmd.exe','/K ' + '"' + WScript.ScriptFullName + '"' + ' Admin','','runas',1);/*
@echo off
if "%~1" neq "Admin" (
  cscript.exe //nologo //e:jscript "%~f0"
) else (
  cd /d "%~dp0"
)

FOR /F "eol=# tokens=1,* delims==" %%A IN (../.env) DO (
    if %%A==HOST_NAME (
        set HOST_NAME=%%B
    )
)
if not %HOST_NAME%=="" (
    cd /d "%windir%\system32\drivers\etc"
    find "127.0.0.1 %HOST_NAME%" < hosts || echo 127.0.0.1 %HOST_NAME%>>hosts
    echo.
    echo Added "%HOST_NAME%"
)

*/

exit