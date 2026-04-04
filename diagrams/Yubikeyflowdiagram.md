# Authentication Flow

```mermaid
flowchart TD
    A[User starts sign-in] --> B{Conditional Access applies?}
    B -->|No| C[Standard Entra sign-in]
    B -->|Yes| D{Policy type}
    D -->|Lab policy| E[Require MFA]
    D -->|Privileged production| F[Require authentication strength: Phishing-resistant MFA]

    E --> G{Allowed methods}
    G -->|YubiKey| H[FIDO2 PIN + touch]
    G -->|Authenticator| I[Push / number match]
    G -->|Windows Hello| J[Hello for Business]

    F --> K{Allowed methods}
    K -->|YubiKey| H
    K -->|Windows Hello| J
    K -->|Authenticator| L[Blocked]

    H --> M[Access granted]
    I --> M
    J --> M
    L --> N[Access denied]
