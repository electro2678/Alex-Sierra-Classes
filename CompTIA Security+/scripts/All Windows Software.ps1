# Combine both 32-bit and 64-bit uninstall registry paths
$registryPaths = @(
    "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$apps = foreach ($path in $registryPaths) {
    Get-ItemProperty $path -ErrorAction SilentlyContinue | Where-Object {
        $_.DisplayName -and $_.DisplayVersion
    } | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate
}

# Output results
Write-Output "`n--- Installed Applications ---"
$apps | Sort-Object DisplayName | Format-Table -AutoSize
