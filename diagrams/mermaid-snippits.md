
### `docs/architecture/ca-evaluation.md`

```md
# Conditional Access Evaluation

```mermaid
flowchart TD
    A[Privileged user sign-in] --> B{Break-glass account?}
    B -->|Yes| C[Excluded from CA]
    B -->|No| D[Target: All cloud apps]

    D --> E{Policy mode}
    E -->|Report-only| F[Log outcome only]
    E -->|On| G[Enforce grant controls]

    G --> H{Lab or Production}
    H -->|Lab| I[Grant: Require MFA]
    H -->|Production| J[Grant: Require auth strength]

    I --> K{Method used}
    K -->|YubiKey| L[Allowed]
    K -->|Authenticator| L
    K -->|Windows Hello| L

    J --> M{Method used}
    M -->|YubiKey| N[Allowed]
    M -->|Windows Hello| N
    M -->|Authenticator| O[Blocked]
