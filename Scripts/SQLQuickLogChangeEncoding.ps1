#edit: Feb 25 2019
#v2.0
param ([string]$errorlogpath)


##Change Encoding 
$newfile = $errorlogpath + "_ChangedEncoding.OUT"

Get-Content -Path  $errorlogpath -ReadCount 60000 | Set-Content $newfile  -Encoding Ascii
