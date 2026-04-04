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

<details>
<summary><strong>🔧 Deployment</strong></summary>

- [Prerequisites](docs/deployment/prerequisites.md)
- [YubiKey Enrollment](docs/deployment/yubikey-enrollment.md)
- [Conditional Access](docs/deployment/conditional-access.md)

</details>

<details>
<summary><strong>🔐 Policies</strong></summary>

- [Privileged (Lab Mode)](docs/policies/ca-privileged-lab.md)
- [Privileged (Phishing-Resistant)](docs/policies/ca-privileged-phishing-resistant.md)

</details>

<details>
<summary><strong>🛠 Operations</strong></summary>

- [YubiKey Reset](docs/operations/yubikey-reset.md)
- [Break-Glass Account](docs/operations/break-glass.md)
- [Recovery (TAP)](docs/operations/recovery.md)
- [Lifecycle Management](docs/operations/lifecycle.md)

</details>

<details>
<summary><strong>✅ Validation</strong></summary>

- [Testing Plan](docs/validation/testing.md)
- [Sign-in Logs](docs/validation/sign-in-logs.md)

</details>

---

## ⚠️ Security Notes

- Never enforce phishing-resistant MFA without:
  - Backup YubiKey
  - Break-glass account
- Always test policies in report-only mode first
- Avoid session control on admin portals

---

## 🧠 Design Philosophy

<details>
<summary><strong>Lab Phase</strong></summary>

- Flexibility
- Authenticator allowed as fallback
- Safer for initial rollout and hardware testing

</details>

<details>
<summary><strong>Production Phase</strong></summary>

- Enforce phishing-resistant MFA
- Allow YubiKey or Windows Hello only
- Remove dependency on weaker fallback methods

</details>

---

## 📌 Status

- ✔ Lab-ready  
- ✔ Enterprise-ready  
- ✔ Zero Trust aligned

---

## 🚀 Start Here

1. [Full Deployment Guide](docs/deployment/01-full-deployment-guide.md)
2. [Prerequisites](docs/deployment/02-prerequisites.md)
3. [YubiKey Enrollment](docs/deployment/03-yubikey-enrollment.md)

---

## 📚 Documentation

### 🔧 Deployment
- [Full Deployment Guide](docs/deployment/01-full-deployment-guide.md)
- [Prerequisites](docs/deployment/02-prerequisites.md)
- [YubiKey Enrollment](docs/deployment/03-yubikey-enrollment.md)
- [Conditional Access](docs/deployment/conditional-access.md)

---
