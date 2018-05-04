#region - Gathering Information with WMI & CIM
Get-CimClass -ClassName CIM*


Get-CimClass -ClassName *disk* 

Get-WmiObject -class Win32_logicaldisk 

Get-CimInstance -ClassName CIM_LogicalDisk |fl

#Viewing freespace
((Get-CimInstance -ClassName Win32_logicaldisk |
            where DeviceID -EQ 'C:').FreeSpace) / 1GB

#Last Reboot
(Get-CIMInstance -ClassName Win32_OperatingSystem).LastBootUpTime

#endregion

#System Name
(Get-CIMInstance -ClassName Win32_OperatingSystem).LastBootUpTime