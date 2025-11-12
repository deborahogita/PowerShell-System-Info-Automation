# Simple PowerShell Script to collect system info

# Get Operating System Version
$os = Get-WmiObject -Class Win32_OperatingSystem
Write-Host "Operating System: $($os.Caption) - $($os.Version)"

# List Installed Software
Write-Host "`nInstalled Software:"
$software = Get-WmiObject -Class Win32_Product
$software | ForEach-Object { Write-Host $_.Name }

# Get Disk Space Information
Write-Host "`nDisk Space:"
$disk = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"
$disk | ForEach-Object { Write-Host "$($_.DeviceID) - Free Space: $([math]::round($_.FreeSpace / 1GB, 2)) GB / Total Space: $([math]::round($_.Size / 1GB, 2)) GB" }

# Show Network Adapter Details
Write-Host "`nNetwork Adapter Information:"
$network = Get-WmiObject -Class Win32_NetworkAdapterConfiguration | Where-Object { $_.IPEnabled -eq $true }
$network | ForEach-Object { Write-Host "Adapter: $($_.Description) - IP Address: $($_.IPAddress[0])" }
