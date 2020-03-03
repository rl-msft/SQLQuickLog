#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

##Filter Clipboard  
$clipbord= Get-Clipboard 
$clipbord="*" + $clipbord + "*"
$newfile = $errorlogpath + "_Clipboard_Filtered.OUT"

Get-Content -Path  $errorlogpath -ReadCount 100000 `
| ForEach-object `
	{$_ `
		-like $clipbord `
	} `
| Set-Content $newfile

