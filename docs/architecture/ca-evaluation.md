# Conditional Access Evaluation Flow

```mermaid
flowchart TD
    A[User Sign-In] --> B{Break-glass?}
    B -->|Yes| C[Bypass CA]
    B -->|No| D[Evaluate Policies]

    D --> E{Policy Type}
    E -->|Lab| F[Require MFA]
    E -->|Production| G[Require Phishing-Resistant MFA]

    F --> H{Method}
    H -->|YubiKey| I[Allow]
    H -->|Authenticator| I
    H -->|Hello| I

    G --> J{Method}
    J -->|YubiKey| K[Allow]
    J -->|Hello| K
    J -->|Authenticator| L[Block]
