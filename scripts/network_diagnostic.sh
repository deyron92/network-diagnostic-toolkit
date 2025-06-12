# ==============================
# Bash Version (network_diagnostics.sh)
# ==============================

: ' 
#!/bin/bash

clear
echo "===== Network Diagnostics Toolkit ====="

# IP configuration
echo -e "\n--- IP Configuration ---"
ip addr show

# Default gateway ping
echo -e "\n--- Pinging Default Gateway ---"
gateway=$(ip route | grep default | awk '{print $3}')
if [ -n "$gateway" ]; then
    ping -c 4 $gateway
else
    echo "No gateway found."
fi

# Flush DNS cache (systemd-based)
echo -e "\n--- Flushing DNS Cache ---"
sudo systemd-resolve --flush-caches || echo "Command not supported."

# Renew IP

echo -e "\n--- Renewing DHCP Lease ---"
sudo dhclient -r && sudo dhclient

# DNS Resolution
echo -e "\n--- Testing DNS Resolution ---"
dig google.com +short || nslookup google.com

# Traceroute to public server
echo -e "\n--- Traceroute to 8.8.8.8 ---"
traceroute 8.8.8.8
