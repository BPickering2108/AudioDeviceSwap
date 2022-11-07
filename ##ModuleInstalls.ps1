##ModuleInstalls

##Install required modules

Install-Module -name AudioDeviceCmdlets
Install-Module -name BurntToast
Install-Module -name ps2exe

##Find the indexes for your audio devices

Get-AudioDevice -List