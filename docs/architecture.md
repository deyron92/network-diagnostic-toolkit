# 📘 architecture.md

## Project Overview

This toolkit is built for cross-platform network diagnostics. Scripts are split by language to support a variety of environments:

- PowerShell for Windows
- Bash for Linux/macOS
- Python for general and portable execution

---

## Modules

### Diagnostics
- IP info
- Gateway ping
- DNS resolution
- Traceroute

### Repairs
- DNS flush
- IP release/renew

---

## Extensibility Plan
- Add logging per run
- Email or webhook alerts for failed checks
- Modular plugin design (script functions broken into submodules)
- GUI front-end using Electron or Flask (future phase)

---

## Architecture Diagram
*(Optional)*
Create a simple system diagram using [Mermaid](https://mermaid-js.github.io/mermaid/) or [draw.io](https://app.diagrams.net/)
