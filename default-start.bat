@echo off

for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
if %dow% == Sunday (
    echo Enjoy your sunday!
    echo.
)

setlocal
:prompt
set /P AREYOUSURE=Wanna start Chrome and Steam (Y/[N])?
if /I "%AREYOUSURE%" NEQ "Y" goto END

cd "C:\Program Files (x86)\Google\Chrome\Application\"
start chrome.exe https://google.com/

cd "C:\Program Files (x86)\Steam\"
start Steam.exe

:end
endlocal

exit