#edit: Feb 25 2019
#v2.0

param ([string]$errorlogpath)

$newFile = [System.IO.Path]::GetFileName($errorlogpath)

##Split the files  
$i=0; Get-Content $errorlogpath -ReadCount 60000 | ForEach-Object{$i++; $_ | Out-File -FilePath "$newFile _$i.OUT"  -Encoding Ascii}
