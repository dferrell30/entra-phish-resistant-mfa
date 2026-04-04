# 🔐 Entra Phishing-Resistant MFA Deployment Guide

This guide provides a complete, end-to-end process for deploying phishing-resistant MFA using YubiKeys (FIDO2/passkeys) in Microsoft Entra ID.

---

# 🧰 PowerShell Setup

## Install PowerShell 7

Check version:

```powershell
$PSVersionTable.PSVersion
```

You should see version 7.x or higher.

If not installed:
https://github.com/PowerShell/PowerShell

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
Verify Connection
Get-MgContext
🚀 Script Execution Runbook
Step 1 — Navigate to Scripts
cd .\scripts
Step 2 — Install Modules
.\00-install-modules.ps1
Step 3 — Connect to Graph
.\01-connect-graph.ps1
Step 4 — Identify Break-Glass Account
.\02-get-breakglass-user.ps1 -UserPrincipalName "breakglass@yourtenant.onmicrosoft.com"

Copy the returned:

id → BreakGlassObjectId
Step 5 — Review FIDO2 Configuration (Optional)
.\04-enable-fido2-template.ps1 -WhatIf
Step 6 — Create Lab Conditional Access Policy
.\05-create-ca-privileged-lab.ps1 -BreakGlassObjectId "<object-id>"
Result
Report-only policy
Allows:
YubiKey
Authenticator fallback
Step 7 — Test Authentication

Test:

New browser session
Sign-in options
YubiKey login
Authenticator fallback
Step 8 — Get Authentication Strength ID
.\03-get-authentication-strengths.ps1

Find:

Phishing-resistant MFA

Copy the id

Step 9 — Create Phishing-Resistant Policy
.\06-create-ca-privileged-phishing-resistant.ps1 `
  -BreakGlassObjectId "<object-id>" `
  -AuthenticationStrengthId "<strength-id>"
Result
Report-only
Enforces:
YubiKey
Windows Hello
Blocks:
Authenticator
Step 10 — Validate in Sign-in Logs

Check:

Entra → Sign-in logs

Verify:

Policy applied
Authentication method used

Step 11 — Enable Policy

.\07-set-ca-policy-state.ps1 `
  -DisplayName "CA - Privileged - Require Phishing-Resistant MFA" `
  
  -State enabled
⚠️ Critical Safety Checks

Before enabling:

✅ YubiKey registered and working
✅ Backup key available (recommended)
✅ Break-glass account verified
✅ Sign-in logs reviewed
🛟 Recovery Options

If locked out:

Use break-glass account
Use Temporary Access Pass (TAP)
Re-register authentication methods
🧠 Key Concepts
Phase	Behavior
Lab	MFA allows fallback
Production	Only phishing-resistant methods
⚡ Best Practices
Always start in Report-only mode
Never remove fallback too early
Always test before enforcement
Maintain at least one recovery path
