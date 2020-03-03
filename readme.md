# SQL QuickLog Windows Context menu

its windows context menu than will help to filter out nonactionable entries you might see in errorlog, it will help reducing the amount of time we spent dealing with large errorlog files.

There is no special installation required, just simple reg update and it will add new menu under windows right click context menu, all submenu items PowerShell scripts are hosted on github which would allow me to update those scripts if needed so they can reflect to anyone using the menu without any user action.

to **install** the menu run this command

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/setup.reg' -OutFile $env:temp\setup.reg"
regedit.exe /s "%temp%\setup.reg"
```

just right click any errorlog file and you should see this menu

  ![Image description](https://github.com/rl-msft/sqlquicklog/blob/master/images/menu.JPG)

There is no modification happening to any file, processed file will be added as new file with the same as the original file with action name taking against it, for example below errorlog.1 was processed to remove logins entries 

  ![Image description](https://github.com/rl-msft/sqlquicklog/blob/master/images/fileout.JPG)
  

to **uninstall** run this command

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/uninstall.reg' -OutFile $env:temp\uninstall.reg"
regedit.exe /s "%temp%\uninstall.reg"
```
