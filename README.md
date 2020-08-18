# PS-GetIISBindings
Print IIS Site Bindings for a list of servers to a text file.
Run in an Adimistrative PowerShell Session
You need to run this with a path to a server list text file as the first parameter.
Example ./GetIISBindings.ps1 C:\temp\serverlist.txt
Script saves the list of site bindings to the root of C: on each remote computer in the server list. You can change this editing the line that includes \iisSiteBindings.txt to what ever path and file name you want.
