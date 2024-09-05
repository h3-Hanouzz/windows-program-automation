:: This simple script runs on cmd.exe on Windows 10 & 11

:: Welcome message
@echo off

echo If you did not run this file as an administrator, please go back and do so. Otherwise this will NOT work. Please install your graphics drivers AFTER this if you have not already done so.

pause

:: Installs Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco upgrade chocolatey

:: Installs all other software
choco install firefox temurin8 temurin17 temurin prismlauncher epicgameslauncher discord virtualbox gimp git blender davinciresolve paint.net obs-studio vlc curl winfetch

:: Disables the "Allow the shortcut key to start (Sticky/Toggle/Filter) keys"? settings
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v StickyKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v ToggleKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v FilterKeys /t REG_DWORD /d 0 /f

:: Sets the wallpaper
:: rundll32.exe user32.dll,SystemParametersInfo 0 0 <wallpaper_path> 0

:: End message
@echo off

echo If you have not already done so, please install your graphics drivers now.

pause
