Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors, MaxClockSpeed, Manufacturer, SocketDesignation, L2CacheSize, L3CacheSize, Architecture, DataWidth, AddressWidth, Family, ProcessorId, Revision, Status, Version
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture, LastBootUpTime, InstallDate, SerialNumber, SystemDrive, WindowsDirectory, Organization, RegisteredUser, NumberOfUsers, NumberOfProcesses, NumberOfLicensedUsers, NumberOfProcesses, NumberOf
Get-CimInstance Win32_PhysicalMemory
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Used, Free, Provider, Root, Description
Get-NetIPAddress
Get-Process | Select-Object Name, Id, CPU, Path
Out-File -FilePath system-info-report.csv -Encoding utf8