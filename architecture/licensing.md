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
