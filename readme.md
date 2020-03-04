# SQL QuickLog windows context menu for filtering large SQL errorlog files

this is implemented as windows explorer context menu for easy access, it will help to deal with large SQL errorlog files by allowing quick filters to remove nonactionable entries that you might see in SQL errorlog, original files are NOT modified, the menu will create new files after applying the required filters, also the new files are encoded as UTF-8 which should help to reduce file size by approximately 50%. the new files should allow you to focus on what is matter when investigating those log files.

**Installation**

There is no special installation required, just simple reg update to build the menu and map its subcommands to remote powershell scripts hosted on github, this setup allows update to those scripts if needed and can reflect quickly without any user action.

to install run this command from windows command prompt or powershell console

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/installation/setup.reg' -OutFile $env:temp\setup.reg"
regedit.exe /s "%temp%\setup.reg"
echo done
```

after running the above command, when you right click any log file you should see this menu

  ![Image description](https://github.com/rl-msft/SQLQuickLog/blob/master/images/SQLquickLogmenu.jpg)

when you select any option, there is no modification happening to any the selected file, processed file will be added as new file named as the original file with action performed against it, for example hte below errorlog.1 was processed to remove logins entries, notice the new file new created.

  ![Image description](https://github.com/rl-msft/sqlquicklog/blob/master/images/fileout.JPG)
  
For now, I opted out from adding any progress bar to the PowerShell scripts to reduce extra CPU cycles, For now, after you select any option in the meanu you should notice PowerShell icon appears in the taskbar, once the icon disappear this is your indicate that processing has completed and you can open the processed file.
  
    ![Image description](https://github.com/rl-msft/sqlquicklog/blob/master/images/taskbar.JPG)

**Uninstall**

to install run this command from windows command prompt or powershell console

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/installation/uninstall.reg' -OutFile $env:temp\uninstall.reg"
regedit.exe /s "%temp%\uninstall.reg"
echo done
```
