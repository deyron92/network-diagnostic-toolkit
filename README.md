# network-diagnostic-toolkit
Cross-platform automation toolkit for diagnosing and repairing network issues using PowerShell, Bash, and Python.<br>


# 🛠️ Network Diagnostic & Repair Toolkit

A cross-platform automation toolkit for IT professionals to diagnose, troubleshoot, and repair common network issues using PowerShell, Bash, and Python.

---

## 🔍 Features

- Automated IP, DNS, and gateway diagnostics
- Packet loss and latency checks (ping/traceroute)
- DNS resolution tester
- Interface and adapter resets
- Scripted flush and renewal of IP settings
- Supports PowerShell, Bash, and Python environments

---

## 🧰 Supported Environments

| Language    | OS Compatibility         |
|-------------|--------------------------|
| PowerShell  | Windows                  |
| Bash        | Linux/macOS              |
| Python      | Cross-platform           |

---

## 📁 Repository Structure

| Folder/File         | Description                                   |
|---------------------|-----------------------------------------------|
| `scripts/`          | Main diagnostic scripts (PS1, SH, PY)         |
| `docs/`             | Additional documentation and guides           |
| `README.md`         | Project overview and instructions             |

---

## 🚀 Usage

### PowerShell
```powershell
# Run the script from PowerShell (ensure execution policy allows it)
.\scripts\network_diagnostics.ps1
```

### Bash
```bash
# Make the script executable
chmod +x scripts/network_diagnostics.sh

# Run the script
./scripts/network_diagnostics.sh
```

### Python
```bash
# Ensure Python 3 is installed, then run the script
python3 scripts/network_diagnostics.py
```

> Note: You may need `sudo` privileges for certain operations like DNS flushing or IP renewal on Linux/macOS.

