# DHCP-LeasesPS
DHCP-Leases.ps1 is a PowerShell scrict that collects:
 - ScopeId for DHCP
 - IPAddresses leased to devices
 - HostNames of devices
 - ClientId of devices
 - AddressState of leased IP addresses

This information is exported to a newly created CSV file with a timestamp of when the file was created. The path to the CSV file is by default the same directory as the PowerShell script.
