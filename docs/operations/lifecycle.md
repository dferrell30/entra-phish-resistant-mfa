# YubiKey Lifecycle Management

## Stages

| Stage | Action |
|------|--------|
| Provision | Assign key to user |
| Active Use | Monitor usage and validate access |
| Recovery | Use fallback or TAP if needed |
| Reset | Wipe FIDO2 credentials before reuse |
| Reassignment | Reissue to new user after reset |

## Rules

- Always issue two keys for privileged users where possible
- Never leave a privileged user with only one recovery path
- Track ownership and purpose of each key

## Reset Rule

> Never reset a YubiKey unless another authentication method is available.
