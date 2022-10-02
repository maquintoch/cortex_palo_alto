
#Copying and installing it

New-Item -ItemType directory -Path "C:\name_of_your_folder\Cortex-Install"
Copy-Item "\\network_drive\Cortex\name_of_your_cortex_msi_file.msi" -Destination "C:\name_of_your_local_folder\Cortex-Install" -Recurse
Start-Process "msiexec.exe" -Wait -ArgumentList "/I C:\name_of_your_local_folder\Cortex-Install\name_of_your_cortex_msi_file.msi /quiet"

# Sleep will give some time for doing the process. It is up to you to adjust to the time of your convenience. The time is given in seconds
sleep 600



# As a best practice it is good to delete all the created files on the local machine. This will include the folder and all the files on it that we created.

$RemovalPath = "C:\name_of_your_local_folder\Cortex-Install\"
Get-ChildItem  -Path $RemovalPath -Recurse  | Remove-Item -Force -Recurse
Remove-Item $RemovalPath -Force -Recurse
