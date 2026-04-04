# 🧰 PowerShell & Microsoft Graph Setup Guide

## 🎯 Purpose

This guide walks through setting up PowerShell and required Microsoft Graph modules to run the deployment scripts in this repository.

---

## 🧩 Requirements

- Windows 10/11 or macOS/Linux
- Internet access
- Administrator privileges (recommended)
- Microsoft Entra ID tenant access

---

## 🔹 Step 1 — Install PowerShell 7

> Microsoft recommends PowerShell 7+ for the Microsoft Graph PowerShell SDK.

### Check if installed:

```powershell
$PSVersionTable.PSVersion
