all:
        @echo 'Usage: make <os>'
        @echo 'Check README.md for more info'

windows:
        @echo 'Make sure to run as admin'
        @echo 'Installing chocolatey'
        @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
        @echo 'Installing python3 with chocolatey'
        @choco install -y python3

debian:
        @echo 'Installing python3 with apt'
        @sudo apt install python3

arch:
        @echo 'Installing python3 with pacman'
        @sudo pacman -S python3
