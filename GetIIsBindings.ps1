if($args[0]){
$serverListPath = $args[0]
$sessions = Get-Content $serverListPath | New-PSSession
Invoke-Command -Session $sessions -ScriptBlock { if(Get-Module -ListAvailable -Name WebAdministration) { Import-Module WebAdministration
if(test-path IIS:\Sites){ Get-ChildItem -path IIS:\Sites > \iisSiteBindings.txt }}}
}
Else { Write-Host "Please include the path to a serverlist text file as a parameter. Ex .\GetIISBindings.ps1 C:\temp\serverlist.txt"}
