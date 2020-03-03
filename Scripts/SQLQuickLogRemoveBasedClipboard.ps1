#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

##Clear Clipboard  
$clipbord= Get-Clipboard 
$clipbord="*" + $clipbord + "*"
$newfile = $errorlogpath + "_Clipboard_Removed.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-notlike $clipbord `
	} `
| Set-Content $newfile

