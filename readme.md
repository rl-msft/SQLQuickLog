# SQL QuickLog Windows Context Menu for filtering Large SQL errorlog Files

This functionality is integrated into the Windows Explorer context menu for convenient access. It aids in managing large SQL error log files by enabling quick filtering to eliminate non-actionable entries typically found in SQL error logs. The original files remain unaltered, as the menu generates new files with the applied filters. These new files are encoded in UTF-8, which helps reduce their size by approximately 50%. This should enable you to concentrate on the pertinent details when examining those log files.

# Installation

No special installation is needed; its a small registry update to create the menu and link its subcommands to remote PowerShell scripts hosted on GitHub. This setup allows the scripts to be updated as necessary and changes will be reflected immediately without any user intervention.

to install run this command from **windows command prompt CMD**

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/installation/setup.reg' -OutFile $env:temp\setup.reg"
regedit.exe /s "%temp%\setup.reg"
echo done
```

after running the above command, when you right click any log file you should see this menu

  ![Image description](https://github.com/rl-msft/SQLQuickLog/blob/master/images/SQLquickLogmenu.jpg)

When you choose any option, the selected file remains unchanged. A new file will be created, named after the original file with the action performed on it. For instance, in the example below, 'errorlog.1' was processed to remove login entries, resulting in the creation of a new file.

  ![Image description](https://github.com/rl-msft/sqlquicklog/blob/master/images/fileout.JPG)
  
For now, I opted out from adding any progress bar to the PowerShell scripts to reduce extra CPU cycles, For now, after you select any option in the meanu you should notice PowerShell icon appears in the taskbar, once the icon disappear this is your indicate that processing has completed and you can open the processed file.
  
  ![Image description](https://github.com/rl-msft/SQLQuickLog/blob/master/images/taskbar.JPG)

# Uninstall

to install run this command from **windows command prompt CMD**

```shell script
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/rl-msft/sqlquicklog/master/installation/uninstall.reg' -OutFile $env:temp\uninstall.reg"
regedit.exe /s "%temp%\uninstall.reg"
echo done
```
