---
# 📘 usage_guide.md

## Script Requirements

### PowerShell:
- OS: Windows 10+
- Run with Execution Policy set to allow local scripts:
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

### Bash:
- OS: Linux / macOS
- Requires: `dig`, `traceroute`, `iproute2`, `systemd-resolve`, `dhclient`
- May require `sudo` access for DNS cache flush and DHCP renewal

### Python:
- Cross-platform (Windows, macOS, Linux)
- Requires: Python 3.6+
- On Linux/macOS, may require `sudo` for some functions

---

## How to Run Each Script

### PowerShell
```powershell
.\scripts\network_diagnostics.ps1
```

### Bash
```bash
chmod +x scripts/network_diagnostics.sh
./scripts/network_diagnostics.sh
```

### Python
```bash
python3 scripts/network_diagnostics.py
```

---

## Known Issues
- Linux distros without `systemd` may not support DNS flush command.
- macOS users may need to adjust commands for flushing DNS.
- Python output may vary slightly depending on OS.

---
