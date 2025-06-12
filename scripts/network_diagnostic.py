# ==============================
# Python Version (network_diagnostics.py)
# ==============================

import os
import platform
import subprocess

print("===== Network Diagnostics Toolkit =====")

# Determine platform
is_windows = platform.system() == "Windows"

# IP Configuration
print("\n--- IP Configuration ---")
subprocess.call("ipconfig /all" if is_windows else ["ip", "addr"], shell=is_windows)

# Ping Gateway
print("\n--- Pinging Default Gateway ---")
if is_windows:
    gateway = os.popen('for /f "tokens=3" %i in ('route print ^| findstr "0.0.0.0"') do @echo %i').read().strip()
else:
    gateway = os.popen("ip route | grep default | awk '{print $3}'").read().strip()

if gateway:
    subprocess.call(["ping", "-n" if is_windows else "-c", "4", gateway])
else:
    print("No gateway found.")

# Flush DNS
print("\n--- Flushing DNS Cache ---")
if is_windows:
    subprocess.call("ipconfig /flushdns", shell=True)
else:
    subprocess.call(["sudo", "systemd-resolve", "--flush-caches"])

# Renew IP
print("\n--- Renewing IP Address ---")
if is_windows:
    subprocess.call("ipconfig /release", shell=True)
    subprocess.call("ipconfig /renew", shell=True)
else:
    subprocess.call(["sudo", "dhclient", "-r"])
    subprocess.call(["sudo", "dhclient"])

# DNS Test
print("\n--- DNS Resolution Test ---")
subprocess.call(["nslookup", "google.com"] if is_windows else ["dig", "google.com", "+short"])

# Traceroute
print("\n--- Traceroute to 8.8.8.8 ---")
subprocess.call("tracert 8.8.8.8" if is_windows else ["traceroute", "8.8.8.8"], shell=is_windows)
