# 🔐 Entra Passwordless Deployment Guide (Passkeys)

> [!TIP]
> Follow this guide step-by-step.  
> Do not enforce policies until validation is complete.

---

## 🧭 Authentication Flow Overview

```mermaid
flowchart TD
    A[User Sign-In] --> B{Passkey Available?}
    B -->|Yes| C[Prompt for Passkey]

    C --> D{Method}
    D -->|Authenticator| E[Phone Biometric / PIN]
    D -->|Windows Hello| F[Device Biometric / PIN]

    E --> G[Access Granted]
    F --> G

    B -->|No| H[Registration Required or TAP]
```

---

# ⚠️ Before You Start

This guide assumes:

- Global Administrator access
- Break-glass account is configured and excluded
- Users have a supported mobile device for Microsoft Authenticator passkeys  
- Windows Hello for Business is optional but recommended on supported Windows devices  
- Microsoft Authenticator is installed  
- Testing is performed in a controlled environment

# 🧠 Platform Authentication Options

This deployment supports multiple passkey methods:

- Microsoft Authenticator passkeys
- Windows Hello for Business

### Requirement

- Microsoft Authenticator passkeys are supported for this deployment
- Windows Hello for Business is **recommended but not required**

### Why Windows Hello is recommended

Windows Hello provides:

- Device-based passkey authentication
- Better user experience on managed Windows devices
- Redundancy if the user’s phone is unavailable

---

## 🧠 Key Concept

Passkeys provide:

- Phishing-resistant authentication
- Passwordless sign-in
- Device-bound credentials

They satisfy strong authentication requirements without traditional MFA prompts.

---

# 🧰 Step 1 — Enable Passkeys (FIDO2)

Invoke-MgGraphRequest `
  -Method PATCH `
  -Uri "https://graph.microsoft.com/v1.0/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2" `
  -Body '{"state":"enabled"}' `
  -ContentType "application/json"
  
# 👤 Step 2 — User Enrollment

Users must enroll in at least one supported passkey method.

### Required for this deployment

#### Microsoft Authenticator

1. Install Microsoft Authenticator  
2. Add work account  
3. Register passkey  
4. Configure biometric or PIN  

### Optional but Recommended

#### Windows Hello for Business

1. Configure Windows Hello for Business  
2. Set PIN or biometric  
3. Register device  

Windows Hello is not required for this deployment, but it is recommended to improve user experience and recovery resilience on Windows devices.

# 🧪 Step 3 — Validate Enrollment

Test:

- Sign-in using Authenticator passkey
- Sign-in using Windows Hello
- Confirm no password prompt
  
# 🚀 Step 4 — Deploy Conditional Access (Lab)

Run:

```Powershell
.\scripts\11-create-ca-passkey-lab.ps1
```

Expected Result:

- MFA required
- Authenticator allowed
- Windows Hello allowed
- Policy in report-only mode
  
# 🧪 Step 5 — Validate Authentication

Test:

- Authenticator passkey login
- Windows Hello login
- Sign-in logs show correct method

# 🔐 Step 6 — Deploy Production Policy

Run:

```Powershell
.\scripts\12-create-ca-passkey-production.ps1
```

Expected Result:

- Phishing-resistant authentication enforced
- Password-based login blocked
- Only passkey methods allowed
  
# ✅ What Success Looks Like

- Users sign in without passwords
- Authenticator passkeys work consistently
- Windows Hello works
- Legacy authentication is blocked

# ⚠️ Critical Safety Checks

Before enforcement:

- Users enrolled with passkeys
- Break-glass account verified
- TAP available for recovery
- Policies tested in report-only
  
# 🛟 Recovery Options

If access is lost:

- Temporary Access Pass (TAP)
- Re-register passkey
- Use break-glass account
  
# 🛠️ Troubleshooting

- Passkey not prompting
- Ensure device supports FIDO2
- Verify Authenticator installed
- Check browser compatibility
- Policy not applying
- Review Conditional Access targeting
- Verify group membership
- Login loop
- Check for conflicting policies
- Review session controls
  
# 🧠 Architecture Notes

This deployment is intended for:

Standard Users:
  → Authenticator passkeys
  → Windows Hello

Privileged Users:
  → YubiKey (separate deployment)
  
# ⚡ Best Practices

- Start in report-only mode
- Do not force passkeys immediately
- Always maintain recovery path
- Recommend Windows Hello for redundancy
- Validate user experience before enforcement

# 🧾 Licensing Requirement
- Entra ID P1 required
- Entra ID P2 optional (for risk-based policies)
