# Passkey Profiles

# Deploying Microsoft Authenticator Passkeys in Microsoft Entra ID

## Designing the Passkey Experience Before Broad Adoption

------------------------------------------------------------------------

## Introduction

Enabling passkeys is only the first step.

The next operational decision is determining how passkeys should be
experienced, governed, and supported within the organization.

A passkey profile represents the combination of technical configuration,
user experience decisions, security requirements, and operational
processes that determine how users adopt and use phishing-resistant
authentication.

The objective is not to create the most restrictive configuration
possible.

The objective is to create the strongest authentication experience that
the organization can successfully operate.

------------------------------------------------------------------------

# Operational Purpose

Passkey profiles define how an organization introduces and manages
passkey usage.

They help answer questions such as:

-   Which passkey experiences are supported?
-   Which users can register passkeys?
-   Which devices and platforms are acceptable?
-   What restrictions are required?
-   How should users be guided through registration?
-   How will administrators validate adoption?

A well-designed passkey profile balances security, usability, and
operational support.

------------------------------------------------------------------------

# Architectural Role

Passkey profiles sit between Authentication Methods capability and user
authentication experience.

The relationship can be represented as:

    Authentication Methods
            |
            ▼
    Passkey Configuration
            |
            ▼
    User Registration
            |
            ▼
    Authentication Strength
            |
            ▼
    Conditional Access

Authentication Methods makes passkeys available.

The passkey profile determines how that capability is implemented.

------------------------------------------------------------------------

# Passkeys and Public Key Authentication

Passkeys use public key cryptography rather than shared secrets.

During registration:

1.  The user's authenticator creates a cryptographic key pair.
2.  The public key is registered with Microsoft Entra ID.
3.  The private key remains protected by the authenticator.

During authentication:

1.  Microsoft Entra ID issues a challenge.
2.  The authenticator signs the challenge.
3.  Microsoft Entra ID verifies the response using the stored public
    key.

The private key is not transmitted during authentication.

This architectural model is the foundation for phishing resistance.

------------------------------------------------------------------------

# Microsoft Authenticator Passkeys

Microsoft Authenticator provides a passkey experience integrated with
Microsoft Entra ID.

Operational considerations include:

-   User familiarity with the Microsoft Authenticator application.
-   Mobile device readiness.
-   Registration experience.
-   Device replacement scenarios.
-   Recovery processes.
-   Support team readiness.

The technical capability is important, but the operational experience
determines adoption success.

------------------------------------------------------------------------

# Designing the User Experience

Security controls must be usable.

A passkey deployment should consider the user journey:

    Communication
          ↓
    Registration
          ↓
    First Authentication
          ↓
    Daily Usage
          ↓
    Recovery

Each step should be intentional.

Questions to consider:

-   Do users understand why the change is occurring?
-   Are registration instructions clear?
-   Can users complete enrollment without assistance?
-   Do users know what happens if their device is lost?
-   Does support understand the recovery process?

A poor user experience can create resistance even when the security
improvement is significant.

------------------------------------------------------------------------

# Device and Platform Considerations

Passkey deployments should consider the platforms users rely on.

Review:

-   Mobile operating systems.
-   Desktop operating systems.
-   Browser support.
-   Managed versus unmanaged devices.
-   Corporate and personal devices.
-   Remote work scenarios.

A pilot should include representative device scenarios.

Testing only one platform can create unexpected production issues.

------------------------------------------------------------------------

# Security and Usability Trade-offs

Every security decision introduces operational considerations.

Examples:

## More Restrictions

Benefits:

-   Greater control.
-   Reduced unexpected scenarios.
-   Easier governance.

Considerations:

-   Increased user friction.
-   Additional support requirements.
-   Reduced flexibility.

------------------------------------------------------------------------

## Fewer Restrictions

Benefits:

-   Easier adoption.
-   Simpler user experience.
-   Faster deployment.

Considerations:

-   Broader range of supported scenarios.
-   Additional governance requirements.
-   More operational review.

The correct balance depends on organizational risk tolerance.

------------------------------------------------------------------------

# Privileged User Passkey Profiles

Privileged users often require stronger authentication requirements.

A privileged passkey profile should consider:

-   Administrator account strategy.
-   Dedicated administrative identities.
-   Privileged Identity Management workflows.
-   Administrative device security.
-   Emergency access accounts.
-   Recovery procedures.

Protecting privileged identities is usually a strong early use case for
passkeys.

However, privileged deployments should still follow the same principles:

-   Plan.
-   Pilot.
-   Validate.
-   Enforce.

------------------------------------------------------------------------

# Registration Considerations

The passkey profile should define the expected registration experience.

Consider:

-   Who performs registration.
-   How identity is verified.
-   Whether Temporary Access Pass is used.
-   Whether guided enrollment is required.
-   How failed registrations are handled.
-   How users receive support.

Registration is the first security interaction users have with the new
authentication method.

------------------------------------------------------------------------

# Governance Considerations

A passkey profile should include ongoing governance.

Review:

-   Adoption rates.
-   Authentication method usage.
-   Exceptions.
-   User feedback.
-   Support trends.
-   Security incidents.
-   New Microsoft capabilities.

Security controls should evolve as the environment changes.

------------------------------------------------------------------------

# Validation Approach

A passkey profile should be validated before expanding deployment.

Validate:

## Registration

-   Users can register successfully.
-   Expected authentication methods appear.

## Authentication

-   Users can authenticate successfully.
-   Applications behave as expected.

## Policy

-   Authentication requirements evaluate correctly.
-   Conditional Access policies behave as designed.

## Operations

-   Support teams understand common issues.
-   Recovery procedures have been tested.

------------------------------------------------------------------------

# Common Mistakes

## Mistake 1: Designing Only for Technology

A technically correct configuration can still fail if users and support
teams are not prepared.

------------------------------------------------------------------------

## Mistake 2: Over-Restricting Too Early

Excessive restrictions during the initial rollout can create unnecessary
adoption barriers.

------------------------------------------------------------------------

## Mistake 3: Ignoring Recovery

Every credential eventually encounters lifecycle events.

Recovery must be designed before production enforcement.

------------------------------------------------------------------------

## Mistake 4: Assuming Registration Equals Adoption

Registration is only the beginning.

Organizations should measure successful authentication and operational
usage.

------------------------------------------------------------------------

# From the Field

The strongest passkey deployments are not the ones with the most
complicated configuration.

They are the ones where security, usability, and operations were
considered together.

The best profile is not the strictest profile.

It is the profile that achieves the security objective and can be
successfully operated over time.

------------------------------------------------------------------------

# Operational Takeaways

-   Passkey profiles define the operational experience, not just
    settings.
-   Public key authentication changes the security model.
-   User experience is part of security design.
-   Device and platform diversity must be tested.
-   Privileged users require deliberate planning.
-   Restrictions should match business requirements.
-   Registration and recovery are critical parts of the profile.
-   Adoption requires measurement beyond configuration.

------------------------------------------------------------------------

## Next Chapter

The next chapter examines user registration and the operational process
required to establish trusted passkey credentials.
