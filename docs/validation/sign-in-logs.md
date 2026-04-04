# Sign-in Logs Validation

## Location

Entra → Sign-in logs

## What to check

- Authentication method:
  - FIDO2 (YubiKey)
  - Microsoft Authenticator

## Goal

Confirm:
- Correct policy applied
- Correct method used

## What success looks like

| Scenario | Expected Result |
|--------|------------------|
| Lab policy | YubiKey or Authenticator succeeds |
| Production policy | Only YubiKey or Windows Hello succeeds |
| Break-glass account | Excluded from Conditional Access |
