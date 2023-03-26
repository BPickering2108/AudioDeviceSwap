##PackageFileAsEXE


#First file location should be location of PS script, second location is the target location for exe. Includes a file icon - must be a .ico
Import-Module ps2exe
Invoke-ps2exe "D:\Coding\Powershell\audiotoggle.ps1" "D:\Coding\Powershell\audiotoggle.exe" -iconfile "D:\Coding\Powershell\Assets\speaker.ico" -noConsole -noOutput

##exe file can then easily be used for macros