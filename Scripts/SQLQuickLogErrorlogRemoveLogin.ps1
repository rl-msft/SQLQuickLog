#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

##Clear logins  
$newfile = $errorlogpath + "_logins_Removed.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-notlike '*Logon*Error: 18456*Severity:*State:*' `
		-notlike '*Logon*Login failed for user*' `
		-notlike '*Logon*Login succeeded for user*' `
	} `
| Set-Content $newfile


