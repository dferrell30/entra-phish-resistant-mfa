- [Critical Safety Checks](#-critical-safety-checks)
- [Recovery Options](#-recovery-options)
- [Key Concepts](#-key-concepts)
- [Best Practices](#-best-practices)

---

# 🧰 PowerShell Setup

## Install PowerShell 7

Check your version:

```powershell
$PSVersionTable.PSVersion
```

You should see version 7.x or higher.

If not installed, download from:
https://github.com/PowerShell/PowerShell

```powershell
Set Execution Policy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install Required Modules
Install-Module Microsoft.Graph.Authentication -Scope CurrentUser
Install-Module Microsoft.Graph.Identity.SignIns -Scope CurrentUser
Connect to Microsoft Graph
Connect-MgGraph -Scopes `
  "Policy.Read.All", `
  "Policy.ReadWrite.ConditionalAccess", `
  "Application.Read.All", `
  "Policy.ReadWrite.AuthenticationMethod"
```
Verify Connection

```powershell
Get-MgContext
```
---

🚀 Script Execution Runbook

[!NOTE]
Script links open the file in GitHub for review.

Run scripts locally from the repo root or scripts folder.

## Step 1 — Navigate to Scripts

cd .\scripts

---

## Step 2 — Install Modules

Script:
00-install-modules.ps1

.\00-install-modules.ps1

---

## Step 3 — Connect to Graph

Script:

01-connect-graph.ps1

.\01-connect-graph.ps1

---

## Step 4 — Identify Break-Glass Account

Script:

02-get-breakglass-user.ps1

.\02-get-breakglass-user.ps1 -UserPrincipalName "breakglass@yourtenant.onmicrosoft.com"

Copy the returned:

id → BreakGlassObjectId

---

## Step 5 — Review FIDO2 Configuration (Optional)

Script:
04-enable-fido2-template.ps1

.\04-enable-fido2-template.ps1 -WhatIf

---

## Step 6 — Create Lab Conditional Access Policy

Script:
05-create-ca-privileged-lab.ps1

.\05-create-ca-privileged-lab.ps1 -BreakGlassObjectId "<object-id>"

Result:

- Policy created in Report-only mode
- Allows:
  - YubiKey
  - Microsoft Authenticator (fallback)

 ---

## Step 7 — Test Authentication

Test the following:

- New browser session
- Sign-in options
- YubiKey authentication
- Authenticator fallback

---
  
## Step 8 — Get Authentication Strength ID

Script:
03-get-authentication-strengths.ps1

.\03-get-authentication-strengths.ps1

Find:

Phishing-resistant MFA

Copy the id

##Step 9 — Create Phishing-Resistant Policy

Script:
06-create-ca-privileged-phishing-resistant.ps1

.\06-create-ca-privileged-phishing-resistant.ps1 `
  -BreakGlassObjectId "<object-id>" `
  -AuthenticationStrengthId "<strength-id>"


Result:

- Policy created in Report-only mode
- Enforces:
  - YubiKey
  - Windows Hello
- Blocks:
  - Microsoft Authenticator
    
---

## Step 10 — Validate in Sign-in Logs

Navigate to:

Entra → Sign-in logs

Verify:

- Policy evaluation
- Authentication method used

---

## Step 11 — Enable Policy

Script:
07-set-ca-policy-state.ps1

.\07-set-ca-policy-state.ps1 `
  -DisplayName "CA - Privileged - Require Phishing-Resistant MFA" `
  
  -State enabled
  
## ⚠️ Critical Safety Checks

Before enabling enforcement:

✅ YubiKey is registered and working

✅ Backup key is available (recommended)

✅ Break-glass account is verified

✅ Sign-in logs have been reviewed

## 🛟 Recovery Options

<details> <summary><strong>Expand recovery options</strong></summary>

If access is lost:

- Use break-glass account
- Use Temporary Access Pass (TAP)
- Re-register authentication methods
  
</details>

## 🧠 Key Concepts

- Phase	Behavior
- Lab	MFA allows fallback (Authenticator permitted)
- Production	Only phishing-resistant methods allowed
  
## ⚡ Best Practices

<details> <summary><strong>Expand best practices</strong></summary>
  
- Always start in Report-only mode
- Never remove fallback too early
- Always test before enforcement
- Maintain at least one recovery path
- Use at least two YubiKeys for privileged users
  
</details> ```
