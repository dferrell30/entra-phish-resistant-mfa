# 🔐 Entra Phishing-Resistant MFA Playbook (YubiKey & Microsoft Authenticator Passkey)

## 🧠 Overview

This repository provides a production-ready design and deployment playbook for phishing-resistant authentication in Microsoft Entra ID.

It demonstrates how to:

- Protect privileged accounts using hardware-backed authentication (YubiKey)
- Enable passwordless authentication for standard users using passkeys
- Enforce authentication using Conditional Access and authentication strengths
- Maintain secure recovery using Temporary Access Pass (TAP) and break-glass accounts

This project shows how to deploy phishing-resistant MFA using FIDO2, Conditional Access, and Temporary Access Pass (TAP).

> I built this to better understand how phishing-resistant MFA is actually deployed in real environments—not just how it’s documented.

<div align="left">

[![Microsoft Entra](https://img.shields.io/badge/Microsoft-Entra-blue)](./docs/deployment/01-full-deployment-guide.md)
[![Auth](https://img.shields.io/badge/Auth-FIDO2%20%7C%20YubiKey-green)](./docs/deployment/01-full-deployment-guide.md)
[![Passwordless](https://img.shields.io/badge/Auth-Passkeys%20%7C%20Passwordless-blueviolet)](./docs/platform-passkeys/01-full-deployment-guide.md)
[![Security](https://img.shields.io/badge/Security-Phishing--Resistant-purple)](./docs/policies/ca-privileged-phish-resistant.md)
[![Status](https://img.shields.io/badge/Status-Lab%20to%20Production-orange)](./docs/deployment/01-full-deployment-guide.md)

</div>

## 🚀 Start Here

> Review architecture  
> Follow deployment walkthrough for Yubikey or Microsoft Authenitcator Passkey 
> Validate using sign-in logs
  
> 🚀 **Start here:** [Full Deployment Guide](./docs/deployment/01-full-deployment-guide.md)  
> 📋 [Prerequisites](./docs/deployment/02-prerequisites.md)  
> 🔑 [YubiKey Enrollment](./docs/deployment/03-yubikey-enrollment.md)  
> 📱 [Passkey Deployment Guide](./docs/platform-passkeys/01-full-deployment-guide.md)

---

A deployment and operations playbook for implementing **phishing-resistant authentication** in Microsoft Entra ID using:

- YubiKeys (hardware FIDO2)
- Platform passkeys (Microsoft Authenticator & Windows Hello)
- Conditional Access
- Break-glass protections
- Lab-to-production rollout strategy

---

## 🧠 Why This Matters

In many environments, MFA is enabled—but still vulnerable to phishing, token theft, and session replay.

I’ve seen cases where:
- MFA was technically enforced but still bypassed
- users approved malicious prompts
- legacy authentication created unexpected gaps

Phishing-resistant MFA changes that.

By enforcing strong authentication methods like FIDO2 security keys and tightly controlling fallback mechanisms, you significantly reduce the risk of credential-based attacks.

This project is focused on making that practical—not just configured, but validated and operational.

## 👥 Who This Is For

This project is designed for:

- security engineers implementing Conditional Access
- identity architects deploying phishing-resistant MFA
- SOC teams validating authentication posture
- organizations moving toward Zero Trust

It is especially useful for environments that:
- already use Microsoft Entra ID
- want to eliminate phishing-based compromise paths
- need a structured approach to FIDO2 rollout

---

## 🖼️ Architecture Overview

This solution focuses on enforcing phishing-resistant MFA using FIDO2 security keys, Conditional Access, and controlled fallback mechanisms.

## 🚀 Deployment Walkthrough (Recommended Order)

This section outlines a safe, phased approach to deploying phishing-resistant MFA.

### Phase 1 — Preparation

- identify pilot users (admins first)
- confirm break-glass accounts exist and are excluded
- enable FIDO2 authentication method
- configure Temporary Access Pass (TAP)

### Phase 2 — Pilot Deployment

- issue FIDO2 keys to pilot group
- require phishing-resistant MFA for pilot users (report-only first)
- validate sign-in logs and behavior

### Phase 3 — Controlled Enforcement

- switch Conditional Access policy from report-only → on
- expand to high-risk users (admins, finance, execs)
- monitor for failures or lockouts

### Phase 4 — Broader Rollout

- expand to additional user groups in phases
- reduce reliance on legacy MFA methods
- enforce device compliance where applicable

### Phase 5 — Validation & Monitoring

- review sign-in logs for authentication method usage
- confirm phishing-resistant MFA adoption
- identify gaps or fallback usage

## ⚠️ Common Pitfalls

- enforcing phishing-resistant MFA before users register FIDO2 keys
- not excluding break-glass accounts
- enabling policies without report-only validation
- not validating fallback authentication paths

> Misconfiguration can result in tenant lockout. Always validate in a pilot group first.

> ⚠️ Always test with a small group before full enforcement to avoid tenant lockout.

### 🔐 Authentication Flow

![Authentication Flow](./diagrams/authentication-flow.png)

### 🛡️ Conditional Access Design

![Conditional Access](./diagrams/conditional-access.png)

---

## 📚 Quick Navigation

| Section | Link |
|---|---|
| 🚀 Deployment Guide | [Full Deployment Guide](./docs/deployment/01-full-deployment-guide.md) |
| 📋 Prerequisites | [Prerequisites](./docs/deployment/02-prerequisites.md) |
| 🔑 Enrollment | [YubiKey Enrollment](./docs/deployment/03-yubikey-enrollment.md) |
| 📱 Passkey Deployment | [Passkeys](./docs/platform-passkeys/01-full-deployment-guide.md) |
| 🛡️ Policies | [Policies](./docs/policies/) |
| 🧰 Operations | [Operations](./docs/operations/) |
| ✅ Validation | [Validation](./docs/validation/) |
| ⚙️ Scripts | [Scripts](./scripts/) |

---

## 🎯 Purpose

This repository provides a complete deployment, validation, and operational playbook for implementing **phishing-resistant authentication** in Microsoft Entra ID.

It includes:

- Hardware-backed MFA (YubiKey)
- Platform passkeys (Microsoft Authenticator & Windows Hello)
- Conditional Access enforcement
- Recovery and operational lifecycle

---

## 🔐 Authentication Tracks

This repository includes two complementary authentication approaches.

---

### 🔑 Hardware-Backed (Privileged Accounts)

- YubiKey (FIDO2 security keys)
- Highest assurance authentication
- Recommended for:
  - Global Administrators
  - Privileged roles

👉 Primary deployment path  

[Full Deployment Guide](./docs/deployment/01-full-deployment-guide.md)

---

### 📱 Platform Passkeys (Passwordless)

- Microsoft Authenticator passkeys
- Windows Hello for Business
- Device-bound authentication

👉 Recommended for:
- Standard users
- Scalable deployments

👉 Deployment guide  
[Passkey Deployment Guide](./docs/platform-passkeys/01-full-deployment-guide.md)

---

## 🧠 Important Distinction

Passkeys are:

- Phishing-resistant  
- Passwordless  
- Device-bound  

They satisfy strong authentication requirements without traditional MFA prompts.

---

## 🏗️ Recommended Architecture

```plaintext
Privileged Users:
  → YubiKey (hardware, highest assurance)

Standard Users:
  → Authenticator passkeys
  → Windows Hello for Business

Fallback:
  → Temporary Access Pass (TAP)
```

---

## 🎯 Purpose

This repository provides a complete deployment, validation, and operational playbook for implementing phishing-resistant MFA using YubiKeys (FIDO2/passkeys) in Microsoft Entra ID.

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

## ⚠️ Disclaimer
This tool is provided for educational, testing, and security validation purposes only.

Use of this tool should be limited to:

Authorized environments
- Lab or approved enterprise systems

The author assumes no liability or responsibility for:
- Misuse of this tool
- Damage to systems
- Unauthorized or improper use

By using this tool, you agree to use it in a lawful and responsible manner.

This project is not affiliated with or endorsed by Microsoft.

## ⚖️ Professional Disclaimer

This project is an independent work developed in a personal capacity.

The views, opinions, code, and content expressed in this repository are solely my own and do not reflect the views, policies, or positions of any current or future employer, client, or affiliated organization.

No employer, past, present, or future, has reviewed, approved, endorsed, or is in any way associated with these works.

This project was developed outside the scope of any employment and without the use of proprietary, confidential, or restricted resources.

All code/language in this repository is provided under the terms of the included MIT License.

---
