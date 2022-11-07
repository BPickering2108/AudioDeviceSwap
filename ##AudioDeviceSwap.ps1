##AudioDeviceSwap

##Import modules

import-module AudioDeviceCmdlets
import-module BurntToast


##Run the script

##Set Where-Object name -like to the start of the device name set-audiodevice -id to the id of the device to swap to
if (get-audiodevice -list | Where-Object type -like "Playback" | Where-Object name -like "Speak*" | Where-Object default -eq "True"){set-audiodevice -id ""}
elseif (get-audiodevice -list | Where-Object type -like "Playback" | Where-Object name -like "Sound*" | Where-Object default -eq "True"){set-audiodevice -id ""}

if (get-audiodevice -list | Where-Object type -like "Playback" | Where-Object name -like "Speak*" | Where-Object default -eq "True"){New-BurntToastNotification -Text "Headset Activated" -AppLogo "C:\Users\Public"}
elseif (get-audiodevice -list | Where-Object type -like "Playback" | Where-Object name -like "Sound*" | Where-Object default -eq "True"){New-BurntToastNotification -Text "Soundbar Activated" -AppLogo "C:\Users\Public"}
