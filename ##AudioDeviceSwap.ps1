##AudioDeviceSwap

##Import modules
import-module AudioDeviceCmdlets
import-module BurntToast

##Assign your variables - change variables to suit and ensure name matches your devices
$Soundbar = get-audiodevice -list | where name -like "*Soundbar*"
$Headset = get-audiodevice -list | where name -like "*Gaming*"
$Current = Get-AudioDevice -Playback

##Assign the locations of your media
$Sound = new-object System.Media.SoundPlayer
$Sound.SoundLocation = "D:\Coding\Powershell\Assets\Windows XP Startup.wav"
$Image = "D:\Coding\Powershell\Assets\speaker.png"

##Script
if ($Current.ID -eq $Headset.ID){set-audiodevice -ID $Soundbar.ID; New-BurntToastNotification -Text "Soundbar Activated" -AppLogo $Image}
elseif ($Current.ID -eq $Soundbar.ID){set-audiodevice -ID $Headset.ID; New-BurntToastNotification -Text "Headset Activated" -AppLogo $Image}

Start-Sleep -Seconds 1
$Sound.Play()