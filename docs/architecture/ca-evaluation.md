# Conditional Access Evaluation Flow

```mermaid
flowchart TD
    A[User Sign-In] --> B{Break-glass account?}
    B -->|Yes| C[Excluded from Conditional Access]
    B -->|No| D[Evaluate Conditional Access Policies]

    D --> E{Policy Type}
    E -->|Lab| F[Require MFA]
    E -->|Production| G[Require Phishing-Resistant MFA]

    F --> H{Authentication Method}
    H -->|YubiKey| I[Access Allowed]
    H -->|Authenticator| I
    H -->|Windows Hello| I

    G --> J{Authentication Method}
    J -->|YubiKey| K[Access Allowed]
    J -->|Windows Hello| K
    J -->|Authenticator| L[Access Blocked]
