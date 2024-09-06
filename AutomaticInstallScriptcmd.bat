:: This simple script runs on cmd.exe on Windows 10 & 11, installs programs, and changes some settings.

:: Welcome message
@echo off

echo If you did not run this file as an administrator, please go back and do so. Otherwise this will NOT work. If you have not finished all the Windows Updates and installed your graphics drivers, press ALT + F4 and do so before coming back.

pause

:: Disables the "Allow the shortcut key to start (Sticky/Toggle/Filter) keys" settings
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v StickyKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v ToggleKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v FilterKeys /t REG_DWORD /d 0 /f

:: Installs Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco upgrade chocolatey

:: Installs all other software
choco install firefox temurin8 temurin17 temurin prismlauncher epicgameslauncher discord virtualbox gimp git blender paint.net obs-studio vlc curl winfetch

:: Sets the wallpaper
:: rundll32.exe user32.dll,SystemParametersInfo 0 0 <wallpaper_path> 0

:: End message
@echo off

echo Tasks complete! You may now exit.

pause
