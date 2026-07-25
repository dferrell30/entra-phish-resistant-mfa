# Architecture

# Deploying Microsoft Authenticator Passkeys in Microsoft Entra ID

## Understanding the Identity Architecture Before Deployment

------------------------------------------------------------------------

## Introduction

A successful passkey deployment begins with understanding the
architecture behind the authentication experience.

Microsoft Authenticator passkeys are not a standalone feature that can
be enabled in isolation. They operate as part of a larger Microsoft
Entra identity architecture that includes authentication methods,
registration workflows, authentication requirements, Conditional Access
policies, user lifecycle management, and operational validation.

The technical configuration is only one layer.

The architectural objective is to understand how each component
contributes to the final security outcome:

> Provide users with a phishing-resistant authentication experience
> while maintaining operational control, recoverability, and governance.

------------------------------------------------------------------------

# The Authentication Architecture

A Microsoft Entra passkey deployment can be understood as a series of
connected control layers.

    User Identity
          |
          ▼
    Authentication Method Availability
          |
          ▼
    Passkey Registration
          |
          ▼
    Authentication Strength Evaluation
          |
          ▼
    Conditional Access Decision
          |
          ▼
    Application Access
          |
          ▼
    Operational Monitoring

Each layer has a specific purpose.

A deployment becomes difficult to operate when these layers are treated
as separate configurations rather than one authentication system.

------------------------------------------------------------------------

# Microsoft Entra ID as the Identity Control Plane

Microsoft Entra ID acts as the central identity platform where
authentication decisions are evaluated.

The platform manages:

-   User identities.
-   Authentication methods.
-   Authentication policies.
-   Access requirements.
-   Conditional Access decisions.
-   Authentication events.
-   Audit information.

From an operational perspective, Entra ID is not simply storing
credentials.

It is evaluating whether an identity, using a specific authentication
method, satisfies the requirements necessary to access a resource.

This distinction is important because modern identity security is based
on continuously evaluating access rather than assuming that
authentication alone grants trust.

------------------------------------------------------------------------

# Where Passkeys Fit

Passkeys are a phishing-resistant authentication method based on public
key cryptography.

Unlike passwords, the authentication process does not require users to
provide a reusable secret to the service.

During registration:

1.  A cryptographic key pair is created.
2.  The public key is registered with Microsoft Entra ID.
3.  The private key remains protected by the user's authenticator.

During authentication:

1.  Microsoft Entra ID issues an authentication challenge.
2.  The authenticator signs the challenge.
3.  Entra ID verifies the response using the registered public key.

The private credential is never transmitted to Microsoft Entra ID or
exposed during authentication.

This architectural difference is what provides phishing resistance.

------------------------------------------------------------------------

# Authentication Methods Architecture

Authentication Methods define which authentication capabilities are
available to users.

This layer answers:

-   Which users can register passkeys?
-   Which users can use passkeys?
-   Which authentication methods are permitted?
-   What registration experience is available?

A common operational mistake is assuming that enabling a stronger
authentication method automatically changes user behavior.

It does not.

The authentication method policy creates capability.

Additional controls determine when and where that capability becomes
required.

------------------------------------------------------------------------

# Authentication Strength Architecture

Authentication Strength defines the security requirement that must be
satisfied during authentication.

This layer answers:

> "What level of authentication assurance is required for this access
> decision?"

For example:

-   A low-risk application may accept broader authentication options.
-   A sensitive administrative application may require
    phishing-resistant authentication.

Authentication Strength separates the authentication method from the
access requirement.

This provides flexibility because organizations can decide where
stronger authentication is necessary without immediately requiring every
user to change their authentication experience.

------------------------------------------------------------------------

# Conditional Access Architecture

Conditional Access is the enforcement layer.

It evaluates signals and applies access requirements.

Examples of signals include:

-   User identity.
-   Application being accessed.
-   Device state.
-   Location.
-   Risk signals.
-   Authentication strength.

For passkey deployments, Conditional Access is where organizations move
from:

"Users are allowed to use passkeys"

to:

"Users must satisfy phishing-resistant authentication requirements."

This transition should occur only after readiness has been validated.

------------------------------------------------------------------------

# Registration and Bootstrap Architecture

A passkey deployment must answer an important question:

How does a user establish their first trusted credential?

Registration is a security boundary.

Organizations should define:

-   Who can register.
-   How identity is verified before registration.
-   Whether Temporary Access Pass is used.
-   How privileged users register.
-   How remote users complete enrollment.
-   How registration problems are handled.

The initial registration experience is often where operational gaps
appear.

A strong authentication method can be weakened by a poorly designed
enrollment process.

------------------------------------------------------------------------

# Recovery Architecture

Recovery is part of the authentication architecture, not a separate
support activity.

A production deployment should define how users recover from:

-   Lost devices.
-   Replaced devices.
-   Deleted passkeys.
-   Authentication failures.
-   Account recovery scenarios.

Recovery processes should balance two goals:

1.  Restore legitimate user access.
2.  Prevent recovery workflows from becoming attack paths.

This is especially important for privileged identities.

------------------------------------------------------------------------

# Privileged Identity Considerations

Privileged accounts require additional architectural planning.

Administrative identities often have:

-   Higher business impact.
-   Stronger Conditional Access requirements.
-   Additional governance requirements.
-   Separate administrative workflows.

Passkeys can significantly improve privileged authentication security,
but the deployment must consider:

-   Administrator account strategy.
-   Emergency access accounts.
-   Privileged Identity Management.
-   Recovery procedures.
-   Administrative device security.

A privileged identity deployment should be treated as a controlled
security initiative.

------------------------------------------------------------------------

# Hybrid Identity Considerations

Organizations operating hybrid identity environments should consider how
identity architecture affects deployment.

Relevant considerations include:

-   Source of authority for user identities.
-   Synchronization dependencies.
-   Administrative identity separation.
-   Legacy authentication dependencies.
-   Application authentication patterns.
-   Migration considerations.

Passkeys authenticate users through Microsoft Entra ID, but the
surrounding identity architecture still influences the deployment
experience.

A strong authentication method does not remove the need for identity
lifecycle governance.

------------------------------------------------------------------------

# Zero Trust Alignment

Passkey deployments align strongly with Zero Trust principles.

## Verify Explicitly

Authentication decisions are based on strong identity verification
rather than password knowledge alone.

## Use Least Privilege

Stronger authentication requirements can be applied where risk is
highest, especially for privileged access.

## Assume Breach

Phishing-resistant authentication reduces exposure to common credential
attacks and improves resilience against identity compromise.

Passkeys are one component of a broader Zero Trust identity strategy.

------------------------------------------------------------------------

# Architectural Decision Points

Before deployment, organizations should decide:

  -----------------------------------------------------------------------
  Decision                            Considerations
  ----------------------------------- -----------------------------------
  Pilot population                    Which users provide representative
                                      validation?

  Privileged rollout                  How will administrators be
                                      protected?

  Registration method                 How will users establish their
                                      first passkey?

  Authentication requirements         Where is phishing-resistant
                                      authentication required?

  Recovery process                    How will access be restored
                                      securely?

  Enforcement timing                  When is the organization ready for
                                      Conditional Access enforcement?

  Evidence collection                 What proves deployment success?
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# From the Field

The most common architectural mistake I see with authentication projects
is treating the authentication method as the entire solution.

A stronger approach is to design the complete operating model.

The authentication method, registration process, Conditional Access
policy, recovery workflow, and validation process all contribute to the
security outcome.

The technology enables the capability.

The architecture determines whether it succeeds.

------------------------------------------------------------------------

# Operational Takeaways

-   Passkeys are part of an identity architecture, not an isolated
    feature.
-   Authentication Methods enable capability.
-   Authentication Strength defines assurance requirements.
-   Conditional Access enforces decisions.
-   Registration is a security boundary.
-   Recovery must be designed before enforcement.
-   Privileged identities require deliberate planning.
-   Hybrid identity considerations remain important.
-   Zero Trust principles should guide authentication design.
-   Architecture should be understood before configuration begins.

------------------------------------------------------------------------

## Next Chapter

The next chapter focuses on deployment planning, including readiness
assessment, pilot design, user communication, prerequisites, licensing
considerations, and operational preparation before enabling Microsoft
Authenticator passkeys.
