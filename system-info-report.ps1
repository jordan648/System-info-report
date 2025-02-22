$filename = 'system-info-report' + (Get-Date -Format 'yyyyMMdd-HHmmss') + '.csv'

"              ___          ___                     ___          ___          " | Out-File -FilePath $filename -Encoding utf8
"             /\  \        /\  \                   /\  \        /\  \         " | Out-File -FilePath $filename -Append -Encoding utf8   
"    ___      /\  \        /\  \       _____       /\  \        /\  \         " | Out-File -FilePath $filename -Append -Encoding utf8
"   /\__\    /::\  \      /::\  \     /::\  \     /::\  \       \:\  \        " | Out-File -FilePath $filename -Append -Encoding utf8
"  /:/__/   /:/\:\  \    /:/\:\__\   /:/\:\  \   /:/\:\  \       \:\  \       " | Out-File -FilePath $filename -Append -Encoding utf8
" /::\  \  /:/  \:\  \  /:/ /:/  /  /:/  \:\__\ /:/ /::\  \  _____\:\  \      " | Out-File -FilePath $filename -Append -Encoding utf8
" \/\:\  \/:/__/ \:\__\/:/_/:/__/__/:/__/ \:|__/:/_/:/\:\__\/::::::::\__\     " | Out-File -FilePath $filename -Append -Encoding utf8
"    \:\__\:\  \  \/__/\:\/:::::/  \:\  \ /:/  / \:\/:/  \/__/~~~\::::/__/    " | Out-File -FilePath $filename -Append -Encoding utf8
"  ~~\:\  \:\  \ /:/  /\:\/:::::/  |:\  \ /:/  |:\/:/  \/__/\:\~~\~~\/__/     " | Out-File -FilePath $filename -Append -Encoding utf8
"     \:\__\:\  /:/  /  \::/~~/~~~~ \:\  /:/  / \::/__/      \:\  \           " | Out-File -FilePath $filename -Append -Encoding utf8
"     /:/  /\:\/:/  /    \:\~~\      \:\/:/  /   \:\  \       \:\  \          " | Out-File -FilePath $filename -Append -Encoding utf8
"    /:/  /  \::/  /      \:\__\      \::/  /     \:\__\       \:\__\         " | Out-File -FilePath $filename -Append -Encoding utf8
"    \/__/    \/__/___     \/__/__     \/__/___    \/__/ ___    \/__/ ___     " | Out-File -FilePath $filename -Append -Encoding utf8
"     /|  |       /\  \       /\  \        /\  \        /\__\        /\__\    " | Out-File -FilePath $filename -Append -Encoding utf8
"    |:|  |      /::\  \     /::\  \       \:\  \      /:/ _/_      /:/ _/_   " | Out-File -FilePath $filename -Append -Encoding utf8
"    |:|  |     /:/\:\__\   /:/\:\  \       \:\  \    /:/ /\  \    /:/ /\__\  " | Out-File -FilePath $filename -Append -Encoding utf8
"  __|:|  |    /:/ /:/  /  /:/ /::\  \  ___  \:\  \  /:/ /::\  \  /:/ /:/ _/_ " | Out-File -FilePath $filename -Append -Encoding utf8
" /\ |:|__|___/:/_/:/__/__/:/_/:/\:\__\/\  \  \:\__\/:/_/:/\:\__\/:/_/:/ /\__\" | Out-File -FilePath $filename -Append -Encoding utf8
" \:\/:::::/__|:\/:::::/  |:\/:/  \/__/\:\  \ /:/  /\:\/:/ /:/  /\:\/:/ /:/  /" | Out-File -FilePath $filename -Append -Encoding utf8
"  \::/~~/~    \::/~~/~~~~ \::/__/      \:\  /:/  /  \::/ /:/  /  \::/_/:/  / " | Out-File -FilePath $filename -Append -Encoding utf8
"   \:\~~\      \:\~~\      \:\  \       \:\/:/  /    \/_/:/  /    \:\/:/  /  " | Out-File -FilePath $filename -Append -Encoding utf8
"    \:\__\      \:\__\      \:\__\       \::/  /       /:/  /      \::/  /   " | Out-File -FilePath $filename -Append -Encoding utf8
"     \/__/       \/__/       \/__/        \/__/        \/__/        \/__/    " | Out-File -FilePath $filename -Append -Encoding utf8

"  " | Out-File -FilePath $filename -Append -Encoding utf8 # Empty line for spacing to improve readability
"  " | Out-File -FilePath $filename -Append -Encoding utf8 # Empty line for spacing to improve readability

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"System Report" + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8

"  " | Out-File -FilePath $filename -Append -Encoding utf8 # Empty line for spacing to improve readability

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"CPU Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors, MaxClockSpeed, Manufacturer, Architecture, Family, ProcessorId, Status, Version | Out-File -FilePath $filename -Append -Encoding utf8

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"OS Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture, LastBootUpTime, InstallDate, SystemDrive, WindowsDirectory, Organization, NumberOfUsers, NumberOfProcesses | Out-File -FilePath $filename -Append -Encoding utf8

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"Memory Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-CimInstance Win32_PhysicalMemory | Out-File -FilePath $filename -Append -Encoding utf8

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"Disk Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Used, Free, Provider, Root, Description | Out-File -FilePath $filename -Append -Encoding utf8

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"Network Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-NetIPAddress | Out-File -FilePath $filename -Append -Encoding utf8

"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
"Process Info:" | Out-File -FilePath $filename -Append -Encoding utf8
"============================================" | Out-File -FilePath $filename -Append -Encoding utf8
Get-Process | Select-Object Name, Id, CPU, Path | Out-File -FilePath $filename -Append -Encoding utf8