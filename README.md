# 🔐 Entra Phishing-Resistant MFA (YubiKey) Playbook

[![Entra](https://img.shields.io/badge/Microsoft-Entra-blue)](docs/architecture/overview.md)
[![Auth](https://img.shields.io/badge/Auth-FIDO2%20%7C%20YubiKey-green)](docs/deployment/yubikey-enrollment.md)
[![Security](https://img.shields.io/badge/Security-Phishing--Resistant-purple)](docs/policies/ca-privileged-phishing-resistant.md)
[![Status](https://img.shields.io/badge/Status-Lab%20to%20Production-orange)](docs/deployment/conditional-access.md)

A practical deployment and operations playbook for rolling out phishing-resistant MFA in Microsoft Entra ID using YubiKeys, Conditional Access, break-glass protections, and a controlled lab fallback path.

---

## 🎯 Purpose

This repository provides a complete deployment, validation, and operational playbook for implementing phishing-resistant MFA using YubiKeys (FIDO2/passkeys) in Microsoft Entra ID.

---

## 📚 Contents

- [Architecture](#-architecture)
- [Deployment Phases](#-deployment-phases)
- [Documentation](#-documentation)
- [Validation](#-validation)
- [Security Notes](#-security-notes)
- [Design Philosophy](#-design-philosophy)

---

## 🧩 Architecture

- Identity Platform: Microsoft Entra ID
- Authentication Methods:
  - FIDO2 (YubiKey)
  - Windows Hello for Business
  - Microsoft Authenticator (lab fallback only)
- Conditional Access: Policy-based enforcement
- Recovery:
  - Break-glass account
  - Temporary Access Pass (TAP)

---

## 🚀 Deployment Phases

| Phase | Description |
|------|------------|
| Phase 1 | Lab deployment (MFA + fallback) |
| Phase 2 | Stabilization & testing |
| Phase 3 | Phishing-resistant enforcement |
| Phase 4 | Operational lifecycle |

---

## 📚 Documentation

### 🔧 Deployment
- [Prerequisites](docs/deployment/prerequisites.md)
- [YubiKey Enrollment](docs/deployment/yubikey-enrollment.md)
- [Conditional Access](docs/deployment/conditional-access.md)

### 🔐 Policies
- [Privileged (Lab Mode)](docs/policies/ca-privileged-lab.md)
- [Privileged (Phishing-Resistant)](docs/policies/ca-privileged-phishing-resistant.md)

### 🛠 Operations
- [YubiKey Reset](docs/operations/yubikey-reset.md)
- [Break-Glass Account](docs/operations/break-glass.md)
- [Recovery (TAP)](docs/operations/recovery.md)

### ✅ Validation
- [Testing Plan](docs/validation/testing.md)
- [Sign-in Logs](docs/validation/sign-in-logs.md)

---

## ⚠️ Security Notes

- Never enforce phishing-resistant MFA without:
  - Backup YubiKey
  - Break-glass account
- Always test policies in report-only mode first
- Avoid session control on admin portals

---

## 🧠 Design Philosophy

### Lab Phase
- Flexibility (Authenticator allowed)

### Production Phase
- Enforcement (YubiKey / Windows Hello only)

---

## 📌 Status

- ✔ Lab-ready  
- ✔ Enterprise-ready  
- ✔ Zero Trust aligned  
