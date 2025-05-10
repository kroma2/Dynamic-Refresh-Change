# Detect current power source
$powerStatus = (Get-WmiObject -Class Win32_Battery).BatteryStatus

# BatteryStatus = 2 means "Charging" (on AC power)
# Anything else means running on battery

if ($powerStatus -eq 2) {
    Start-Process -FilePath "C:\QRes.exe" -ArgumentList "/R:144" -WindowStyle Hidden
} else {
    Start-Process -FilePath "C:\QRes.exe" -ArgumentList "/R:60" -WindowStyle Hidden
}
