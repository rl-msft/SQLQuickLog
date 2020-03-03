#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

#Remove backup events 
$newfile = $errorlogpath + "_Backup_Removed.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-notlike '*Backup*BACKUP DATABASE*successfully processed*' `
		-notlike '*Backup*This is an informational message*No user action is required*' `
		-notlike '*I/O*on database*No user action is required*' `
		-notlike '*BackupToUrl process initiated*' `
	} `
| Set-Content $newfile
