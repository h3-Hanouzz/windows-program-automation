:: This simple script is for people using Windows 10 and 11.

:: Welcome message
@echo off

echo Please install your graphics drivers AFTER this if you have not already. If you already have, you do not need to do anything else.

pause

:: Installs Chocolatey using PowerShell (Windows 11)
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Installs all other software
choco install firefox steam temurin8 temurin17 temurin prismlauncher epicgameslauncher discord virtualbox gimp git blender davinciresolve paint.net obs-studio vlc curl winfetch

:: Sets dark theme
wt settings --set "defaultTheme" "Dark"

:: Disables the "Allow the shortcut key to start (Sticky/Toggle/Filter) keys"? settings
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v StickyKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v ToggleKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v FilterKeys /t REG_DWORD /d 0 /f

:: Sets the wallpaper
:: rundll32.exe user32.dll,SystemParametersInfo 0 0 <wallpaper_path> 0

:: End message
@echo off

echo Please install your graphics drivers now.

pause
