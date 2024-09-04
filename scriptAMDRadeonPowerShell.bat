:: This is the script for people with AMD drivers using Windows 11. The only distintion here is which graphics drivers each file comes with.

:: Installs Chocolatey using PowerShell (Windows 11)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey

:: Installs all other software
choco install firefox steam temurin8 temurin17 temurin prismlauncher epicgameslauncher discord virtualbox gimp git blender davinciresolve paint.net obs-studio vlc curl

:: Sets dark theme
wt settings --set "defaultTheme" "Dark"

:: Disables the "Allow the shortcut key to start (Sticky/Toggle/Filter) keys"? settings
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v StickyKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v ToggleKeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v FilterKeys /t REG_DWORD /d 0 /f

:: Sets the wallpaper
:: rundll32.exe user32.dll,SystemParametersInfo 0 0 <wallpaper_path> 0


