# Get current timestamp
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# Get DHCP leases
$DhcpLeases = Get-DhcpServerv4Scope | ForEach-Object {
    $ScopeId = $_.ScopeId
    Get-DhcpServerv4Lease -ScopeId $ScopeId | Select-Object `
        @{Name='ScopeId';Expression={$ScopeId}},
        IPAddress,
        HostName,
        ClientId,
        AddressState
}

# Define the file path for the CSV file
$filePath = ".\DHCP_Leases_$timestamp.csv"

# Export the leases to the CSV file
$DhcpLeases | Export-Csv -Path $filePath -NoTypeInformation

# Output the file location
Write-Host "DHCP leases saved to: $filePath"