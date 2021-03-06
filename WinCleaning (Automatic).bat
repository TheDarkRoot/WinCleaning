@Echo Off
title #TheDarkRoot (WinCleaning Automatic)
color 1A
Echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
Echo º }}} #TheDarkRoot {{{ º
Echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
Echo.
Echo Information:
Echo }}} This program is encoded by #TheDarkRoot.
Echo  * Supported Windows Systems: 7 / 8 / 8.1 / 10
Echo  - Start as administrator.
Echo  - Close all operations.
Echo  - Do not use the computer during cleaning.
Echo  - Press a key to approve operations.
Echo  - It is recommended that you restart when the process is complete.
Echo.
Echo  - Press a key to run the program...
Echo.
pause >nul
:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
Echo  # Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
Echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
Echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)
:: Your codes should start from the following line
Echo.
Echo  * Turn Off Browser:
Echo    } Chrome / Explore / Firefox / Safari / Opera / Dragon / Edge
Echo.
Echo  - Confirm and continue...
Echo.
taskkill /IM chrome.exe /f
taskkill /IM chromium.exe /f
taskkill /IM iexplore.exe /f
taskkill /IM firefox.exe /f
taskkill /IM safari.exe /f
taskkill /IM opera.exe /f
taskkill /IM dragon.exe /f
taskkill /IM edge.exe /f
taskkill /IM MicrosoftEdge.exe/f
Echo.
Echo.
Echo.
Echo  * Source Code:
Echo    } ipconfig / arp / nbtstat
Echo.
Echo  - Confirm and continue...
Echo.
ipconfig/release
ipconfig/renew
ipconfig/flushdns
ipconfig /registerdns
arp -d
Nbtstat -R
Nbtstat -RR
Echo.
Echo.
Echo.
Echo  * Source Clean Browser Cache:
Echo    } Chrome / Firefox / Opera
Echo.
Echo  - Confirm and continue...
Echo.
attrib -H -R -A "%userprofile%\Local Settings\Google\Chrome\User Data\Default\Cache\*.*"
del "%userprofile%\Local Settings\Google\Chrome\User Data\Default\Cache\*.*" /f /a /s /q
attrib -H -R -A "%userprofile%\Local Settings\Mozilla\Firefox\Profiles\*.*"
del "%userprofile%\Local Settings\Mozilla\Firefox\Profiles\*.*" /f /a /s /q
attrib -H -R -A "%userprofile%\Local Settings\Opera Software\Opera Stable\Cache\*.*"
del "%userprofile%\Local Settings\Opera Software\Opera Stable\Cache\*.*" /f /a /s /q
attrib -H -R -A "%userprofile%\Local Settings\Opera Software\Opera Stable\Media Cache\*.*"
del "%userprofile%\Local Settings\Opera Software\Opera Stable\Media Cache\*.*" /f /a /s /q
rd "%userprofile%\AppData\LocalLow\Sun" /s /q
rd "%userprofile%\AppData\LocalLow\Oracle" /s /q
Echo.
Echo.
Echo.
Echo  * Source Clean Folder:
Echo    } Cookies / Temp / Temporary Internet / Recent
Echo.
Echo  - Confirm and continue...
Echo.
attrib -H -R -A "%userprofile%\Cookies\*.*"
del "%userprofile%"\Cookies\*.*" /f/a/s/q
attrib -H -R -A "%userprofile%\local settings\temp\*.*"
del "%userprofile%\local settings\temp\*.*" /f/a/s/q
attrib -H -R -A "%userprofile%\AppData\Local\Temp\*.*"
del "%userprofile%\AppData\Local\Temp\*.*" /f/a/s/q
attrib -H -R -A "%userprofile%\local settings\temporary internet files\*.*"
del "%userprofile%\local settings\temporary internet files\*.*" /f/a/s/q
attrib -H -R -A "%userprofile%\recent\*.*"
rem del "%userprofile%\recent\*.*" /f/a/s/q
Echo.
Echo.
Echo.
Echo  * Source Clean Folder:
Echo    } Recyclebin
Echo.
Echo  - Confirm and continue...
Echo.
rd "%systemdrive%\$Recycle.bin" /s /q
Echo.
Echo.
Echo.
Echo  * Source Clean File:
Echo    } *.tmp / *._mp / *.log / *.gid / *.chk / *.old
Echo.
Echo  - Confirm and continue...
Echo.
attrib -H -R -A "%systemdrive%\*.tmp"
del "%systemdrive%\*.tmp" /f /a /s /q
attrib -H -R -A "%systemdrive%\*._mp"
del "%systemdrive%\*._mp" /f /a /s /q
rem .log
attrib -H -R -A "%systemdrive%\*.log"
rem del "%systemdrive%\*.log" /f /a /s /q
attrib -H -R -A "%systemdrive%\*.gid"
del "%systemdrive%\*.gid" /f /a /s /q
attrib -H -R -A "%systemdrive%\*.chk"
del "%systemdrive%\*.chk" /f /a /s /q
attrib -H -R -A "%systemdrive%\*.old"
del "%systemdrive%\*.old" /f /a /s /q
Echo.
Echo.
Echo.
Echo  * Source Clean Folder / File:
Echo    } Temp / Prefetch / Windir / *.bak / *.db
Echo.
Echo  - Confirm and continue...
Echo.
attrib -H -R -A "%windir%\Temp\*.*"
del "%windir%\Temp\*.*" /f/a/s/q
attrib -H -R -A "%windir%\Prefetch\*.*"
del "%windir%\Prefetch\*.*" /f/a/s/q
attrib -H -R -A "%windir%\*.bak"
del "%windir%\*.bak" /f/a/s/q
attrib -H -R -A "%localappdata%\IconCache.db"
del "%localappdata%\IconCache.db" /f/a/s/q
Echo.
Echo.
Echo.
Echo  - Cleaning Complete.
Echo.
echo  - Press a key to turn off the computer...
Echo.
Shutdown -s -t 30 -c "Cleaning Complete. Computer shuts down."
Echo.
Echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
Echo º }}} #TheDarkRoot {{{ º
Echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
Echo.
Echo  * The computer shuts down in 30 seconds.
Echo.
Echo  * Press a key to cancel...
Echo.
pause >nul
Shutdown -a
Exit
