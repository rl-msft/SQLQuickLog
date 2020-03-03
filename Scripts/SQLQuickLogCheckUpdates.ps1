#Edit: Feb 25 2019
#v2.0

powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlerrorloghelper/master/uninstall.reg' -OutFile $env:temp\uninstall.reg"
regedit.exe /s "%temp%\uninstall.reg"

powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlerrorloghelper/master/setup.reg' -OutFile $env:temp\setup.reg"
regedit.exe /s "%temp%\setup.reg"
