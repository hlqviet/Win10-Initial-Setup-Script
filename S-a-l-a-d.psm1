# Enable Remote Desktop Network Level Authentication
Function EnableRemoteDesktopNLA {
    Write-Output "Enabling Remote Desktop Network Level Authentication..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 1
}

# Disable Remote DesktopNLA
Function DisableRemoteDesktopNLA {
    Write-Output "Disabling Remote Desktop Network Level Authentication..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 0
}

# Export functions
Export-ModuleMember -Function *
