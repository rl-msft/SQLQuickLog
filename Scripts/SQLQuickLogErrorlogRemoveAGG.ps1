#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

##Clear AGG Policy events 
$newfile = $errorlogpath + "_AGG_Removed.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-notlike '*DbMgrPartnerCommitPolicy::*' `
	} `
| Set-Content $newfile


