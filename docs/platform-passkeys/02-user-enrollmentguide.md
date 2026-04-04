🔐 Microsoft Authenticator Enrollment Guide (MFA + Passkeys)

This guide walks users through:

- Setting up Microsoft Authenticator (MFA)
- Registering a passkey (passwordless sign-in)
- Optional Windows Hello setup
- Testing and troubleshooting

🧭 Authentication Overview

## 📱 Step 1 — Install Microsoft Authenticator
- Download the app:
iOS: App Store
Android: Google Play
- Open the app

## 🔑 Step 2 — Add Your Work Account

- Tap + Add account
- Select:
Work or school account
- Choose:
Scan QR code (recommended)
Follow your organization’s sign-in process

✅ Expected Result

- Your work account appears in Authenticator
- You can receive approval prompts

## 🔐 Step 3 — Set Up MFA (Multi-Factor Authentication)

If prompted during sign-in:

Choose:
- Approve a request
- Approve the notification on your phone
- Complete sign-in
- 
🔁 Alternative (Manual Setup)
- Go to:
https://mysignins.microsoft.com/security-info
- Click:
Add sign-in method
- Select:
Authenticator app
- Scan QR code using the app

✅ Expected Result

- MFA prompts appear on your phone
- You can approve sign-ins

---

## 🔑 Step 4 — Register a Passkey (Passwordless)

Passkeys allow you to sign in without a password.

📱 Option A — Microsoft Authenticator (Required)

Open:
https://mysignins.microsoft.com/security-info

Click:
Add sign-in method

Select:
Passkey (preview) or FIDO2 security key

Choose:
Use your phone

Follow prompts:

Confirm account

Approve on Authenticator

Use biometric (Face ID / fingerprint) or PIN

✅ Expected Result

- Passkey is registered
- You can sign in using your phone
- No password required

---

## 💻 Step 5 — (Optional) Set Up Windows Hello

⚠️ Recommended but not required

Go to:
Settings → Accounts → Sign-in options

Set up:
Windows Hello PIN
Fingerprint or facial recognition

✅ Expected Result
You can sign in using your device
No phone required (on that device)

🧪 Step 6 — Test Your Sign-In

Test 1 — Passkey (Recommended)
Open a new browser (Incognito / InPrivate)
Go to:
Microsoft 365 or your work app
Sign in

✅ You should see:

- Passkey prompt
- Authenticator approval
- No password required
- Test 2 — MFA
- Sign in normally
- Approve notification on your phone
- Test 3 — Windows Hello (Optional)
- Sign in on your device
- Use biometric or PIN

⚠️ Troubleshooting

❌ No Authenticator prompt
Ensure app is installed
Check notifications are enabled
Confirm account is added

❌ Passkey option missing
Ensure your organization enabled passkeys
Try again from:
https://mysignins.microsoft.com/security-info

❌ Cannot sign in
Use backup method (if available)
Contact IT support
🛟 Recovery Options

If you lose access:

1. Contact IT support
2. Request Temporary Access Pass (TAP)
3. Re-register your authentication methods

🧠 Key Takeaways
Microsoft Authenticator is required
Passkeys replace passwords
Windows Hello is optional but recommended
Always complete setup before enforcement

📌 Summary
Feature	Required	Purpose
Authenticator App	✅ Yes	MFA + passkey
Passkey	✅ Yes	Passwordless login
Windows Hello	⚠️ Optional	Device-based login

🔐 Security Reminder
- Never approve unexpected sign-in requests
- Do not share approval codes
- Report suspicious activity immediately
