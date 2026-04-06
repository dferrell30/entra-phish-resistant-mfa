## 🧾 Licensing & Architecture (P1 vs P2)

This deployment primarily relies on Microsoft Entra ID P1.  
Microsoft Entra ID P2 provides additional risk-based and adaptive capabilities.

---

### 🔐 Feature Comparison

| Capability | Entra ID P1 | Entra ID P2 |
|-----------|------------|------------|
| FIDO2 / Passkeys (YubiKey, Authenticator, Hello) | ✅ | ✅ |
| Conditional Access | ✅ | ✅ |
| Authentication Strengths (Phishing-resistant MFA) | ✅ | ✅ |
| Block legacy authentication | ✅ | ✅ |
| Device-based access control | ✅ | ✅ |
| Identity Protection (user/sign-in risk) | ❌ | ✅ |
| Risk-based Conditional Access | ❌ | ✅ |
| Automatic user risk remediation | ❌ | ✅ |
| Sign-in risk detection | ❌ | ✅ |

| Capability | Microsoft 365 Business Premium | Microsoft 365 E5 |
|-----------|-------------------------------|------------------|
| Microsoft Entra ID plan | Entra ID P1 | Entra ID P2 |
| Conditional Access | ✅ Yes (P1) | ✅ Yes (P2) |
| Authentication Strengths (phish‑resistant MFA enforcement) | ✅ Yes | ✅ Yes |
| Supported MFA methods | Authenticator, FIDO2/Passkeys, WHfB, OATH, SMS/Voice | Same |
| Phishing‑resistant MFA (FIDO2 / Passkeys) | ✅ Supported | ✅ Supported |
| Risk‑based Conditional Access (user/sign‑in risk) | ❌ Not included | ✅ Included (Identity Protection) |
| Identity Protection alerts & remediation | ❌ Not included | ✅ Included |
| Privileged Identity Management (PIM / JIT admin) | ❌ Not included | ✅ Included |
| Access Reviews / Entitlement Management | ❌ Not included | ✅ Included |
| Token Protection (device‑bound tokens) | ✅ Available | ✅ Available |

---

### 🧠 Architecture Impact

#### ✅ Entra ID P1 (Baseline Architecture)

Supports:

- YubiKey (hardware phishing-resistant MFA)
- Microsoft Authenticator passkeys
- Windows Hello for Business
- Conditional Access enforcement
- Authentication strength policies

👉 This is sufficient for:

- Phishing-resistant authentication
- Privileged access protection
- Standard user passwordless rollout

---

#### 🔐 Entra ID P2 (Advanced Security)

Adds:

- Risk-based Conditional Access  
- User risk and sign-in risk evaluation  
- Adaptive authentication enforcement  

Example:

```plaintext
If sign-in risk = high → require phishing-resistant authentication
If user risk = high → block access or require remediation
