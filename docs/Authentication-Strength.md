# Authentication Strength

# Deploying Microsoft Authenticator Passkeys in Microsoft Entra ID

## Defining When Phishing-Resistant Authentication Is Required

------------------------------------------------------------------------

## Introduction

Authentication Methods determine what authentication capabilities users
can use.

Authentication Strength determines what level of authentication is
required.

This distinction is one of the most important architectural concepts in
a passkey deployment.

A common mistake is assuming that enabling passkeys automatically
improves security everywhere. Enabling a stronger method creates the
capability. Authentication Strength and Conditional Access determine
when that capability becomes part of an access decision.

A successful deployment requires understanding both sides:

-   Making stronger authentication available.
-   Requiring stronger authentication where risk justifies it.

------------------------------------------------------------------------

# Operational Purpose

Authentication Strength provides a way to define the authentication
requirements needed to access protected resources.

It answers the question:

> "What type of authentication is strong enough for this access
> decision?"

Examples:

-   Standard workforce access.
-   Sensitive applications.
-   Administrative access.
-   High-risk operations.

This allows organizations to apply stronger authentication requirements
based on business risk instead of requiring identical controls
everywhere.

------------------------------------------------------------------------

# Architectural Role

Authentication Strength operates between authentication capability and
access enforcement.

The relationship is:

    Authentication Methods
            |
            ▼
    Available Authentication Options
            |
            ▼
    Authentication Strength
            |
            ▼
    Conditional Access Policy
            |
            ▼
    Resource Access Decision

Each component has a different responsibility.

## Authentication Methods

Provides available authentication capabilities.

## Authentication Strength

Defines acceptable authentication assurance.

## Conditional Access

Applies the requirement to a specific access scenario.

------------------------------------------------------------------------

# Why Authentication Strength Matters for Passkeys

A passkey deployment often has two phases:

## Phase 1: Adoption

Users are allowed to register and use passkeys.

The organization validates:

-   Registration.
-   User experience.
-   Application compatibility.
-   Support readiness.

------------------------------------------------------------------------

## Phase 2: Enforcement

Access policies require phishing-resistant authentication.

Authentication Strength provides the mechanism for moving from adoption
to enforcement.

This separation reduces operational risk.

------------------------------------------------------------------------

# Authentication Strength and Phishing Resistance

Not all MFA methods provide the same security properties.

Authentication Strength allows organizations to distinguish between
authentication experiences with different levels of protection.

For example:

A traditional MFA method may provide additional verification but remain
vulnerable to certain phishing techniques.

A phishing-resistant method such as a passkey provides stronger
protection because the authentication exchange is tied to the legitimate
service and uses cryptographic verification.

The operational goal is not simply requiring MFA.

The goal is requiring the appropriate authentication strength for the
risk being addressed.

------------------------------------------------------------------------

# Designing Authentication Requirements

Organizations should determine where stronger authentication is
required.

Common scenarios include:

## Privileged Administration

Administrative roles often represent the highest-impact identities.

Consider requiring phishing-resistant authentication for:

-   Administrator portals.
-   Privileged role activation.
-   Security configuration changes.
-   High-impact administrative workflows.

------------------------------------------------------------------------

## Sensitive Applications

Applications containing sensitive information may require stronger
authentication.

Examples:

-   Financial systems.
-   Security management platforms.
-   Administrative tools.
-   Business-critical applications.

------------------------------------------------------------------------

## High-Risk Users

Risk-based identity decisions may require stronger authentication for
specific users or scenarios.

The design should align authentication requirements with business risk.

------------------------------------------------------------------------

# Built-In and Custom Authentication Strength Considerations

Organizations should evaluate the available authentication strengths and
determine which best matches their security requirements.

Consider:

-   Which authentication methods satisfy the requirement.
-   Whether existing workflows remain supported.
-   Whether the authentication experience is understandable to users.
-   Whether exceptions require governance.

The strongest possible requirement is not always the best operational
choice.

The correct requirement is the one that achieves the security objective
while remaining supportable.

------------------------------------------------------------------------

# Conditional Access Relationship

Authentication Strength becomes effective when combined with Conditional
Access.

A typical flow:

    User Attempts Access
            |
            ▼
    Conditional Access Evaluates Policy
            |
            ▼
    Authentication Strength Requirement Applied
            |
            ▼
    User Completes Required Authentication
            |
            ▼
    Access Granted

Conditional Access determines the scenario.

Authentication Strength determines the authentication requirement.

Together, they create the enforcement model.

------------------------------------------------------------------------

# Deployment Strategy

A recommended approach:

    Enable Passkeys
            ↓
    Allow Registration
            ↓
    Validate Adoption
            ↓
    Create Authentication Strength Requirement
            ↓
    Pilot Enforcement
            ↓
    Expand Enforcement
            ↓
    Monitor

This prevents organizations from creating access disruption before users
are ready.

------------------------------------------------------------------------

# Privileged Access Considerations

Privileged access is often the first area where organizations require
phishing-resistant authentication.

Consider:

-   Administrative role assignments.
-   Privileged Identity Management activation.
-   Emergency access accounts.
-   Separate administrator identities.
-   Administrative device security.
-   Recovery procedures.

The objective is reducing identity compromise risk while maintaining
operational availability.

------------------------------------------------------------------------

# Exception Management

Exceptions are sometimes required.

Examples:

-   Application limitations.
-   Temporary user situations.
-   Business requirements.
-   Migration scenarios.

However, exceptions should be:

-   Documented.
-   Approved.
-   Time-bound where possible.
-   Reviewed regularly.

An unmanaged exception becomes a permanent security gap.

------------------------------------------------------------------------

# Validation

Authentication Strength should be validated through evidence.

Review:

## Policy Evaluation

Confirm Conditional Access evaluates the expected requirement.

## Authentication Experience

Confirm users can satisfy the requirement.

## Application Access

Confirm business applications continue functioning.

## Operational Impact

Review:

-   Support requests.
-   User feedback.
-   Authentication failures.
-   Exceptions.

A policy is successful when the intended security outcome is achieved
without unexpected operational impact.

------------------------------------------------------------------------

# Common Mistakes

## Mistake 1: Enforcing Before Adoption

Requiring passkeys before users are prepared creates avoidable
disruption.

------------------------------------------------------------------------

## Mistake 2: Confusing Authentication Methods With Authentication Strength

Allowing a method does not mean requiring that method.

------------------------------------------------------------------------

## Mistake 3: Applying One Requirement Everywhere

Different resources have different risk levels.

------------------------------------------------------------------------

## Mistake 4: Ignoring Recovery

Strong authentication still requires operational recovery planning.

------------------------------------------------------------------------

# From the Field

Authentication Strength is where security strategy becomes operational
reality.

The technology team can enable a passkey.

The security team can define a requirement.

But the organization must decide where stronger authentication changes
are appropriate and how they will be operated.

The best deployments are not the ones that enforce the strongest control
everywhere.

They are the ones that apply the right control to the right risk.

------------------------------------------------------------------------

# Operational Takeaways

-   Authentication Methods enable capability.
-   Authentication Strength defines requirements.
-   Conditional Access applies those requirements.
-   Enforcement should follow readiness.
-   Stronger authentication should align with risk.
-   Privileged access deserves early attention.
-   Exceptions require governance.
-   Evidence should validate policy effectiveness.

------------------------------------------------------------------------

## Next Chapter

The next chapter examines Conditional Access integration and how
organizations safely move from passkey adoption to production
enforcement.
