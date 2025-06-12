# ==============================
# Network Diagnostic Toolkit
# PowerShell Version (network_diagnostics.ps1)
# ==============================

Write-Host "===== Network Diagnostics Toolkit =====" -ForegroundColor Cyan

# Get IP configuration
Write-Host "\n--- IP Configuration ---"
ipconfig /all

# Get default gateway and ping it
Write-Host "\n--- Pinging Default Gateway ---"
$gateway = (Get-NetRoute | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' }).NextHop
if ($gateway) {
    Test-Connection -ComputerName $gateway -Count 4
} else {
    Write-Host "No gateway found." -ForegroundColor Red
}

# Flush DNS cache
Write-Host "\n--- Flushing DNS Cache ---"
ipconfig /flushdns

# Renew IP address
Write-Host "\n--- Releasing and Renewing IP Address ---"
ipconfig /release
Start-Sleep -Seconds 2
ipconfig /renew

# DNS Resolution Test
Write-Host "\n--- Testing DNS Resolution ---"
Resolve-DnsName google.com

# Traceroute to DNS server
Write-Host "\n--- Traceroute to 8.8.8.8 ---"
tracert 8.8.8.8
