#This is the script for people with AMD drivers using Windows 11. The only distintion here is which graphics drivers each file comes with.

#Installs Chocolatey using PowerShell (Windows 11)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey
