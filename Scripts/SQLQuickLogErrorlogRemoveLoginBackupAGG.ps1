#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

#Clear logon, Successful Backup and AGG policy events  
$newfile = $errorlogpath + "_BackupLoginAGG_Removed.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-notlike '*Logon*Error: 18456*Severity:*State:*' `
		-notlike '*Logon*Login failed for user*' `
		-notlike '*Logon*Login succeeded for user*' `
		-notlike '*Backup*BACKUP DATABASE*successfully processed*' `
		-notlike '*Backup*This is an informational message*No user action is required*' `
		-notlike '*I/O*on database*No user action is required*' `
		-notlike '*BackupToUrl process initiated*' `
		-notlike '*DbMgrPartnerCommitPolicy::*' `
	} `
| Set-Content $newfile

