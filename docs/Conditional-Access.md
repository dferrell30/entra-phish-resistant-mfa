# Conditional Access

# Deploying Microsoft Authenticator Passkeys in Microsoft Entra ID

## Moving From Passkey Adoption to Production Enforcement

------------------------------------------------------------------------

## Introduction

Conditional Access is the enforcement layer that turns authentication
requirements into real access decisions.

A successful passkey deployment does not begin with Conditional Access
enforcement.

It begins with enabling the capability, preparing users, validating the
experience, and then introducing requirements based on organizational
risk.

Conditional Access is where the organization moves from:

> "Users can authenticate using passkeys."

to:

> "This access scenario requires phishing-resistant authentication."

This transition must be planned carefully because authentication policy
changes directly affect user access.

------------------------------------------------------------------------

# Operational Purpose

The purpose of Conditional Access in a passkey deployment is to apply
authentication requirements to specific access scenarios.

Conditional Access determines:

-   Which users are affected.
-   Which applications are protected.
-   Under what conditions stronger authentication is required.
-   Which authentication strength must be satisfied.

The objective is not maximum restriction.

The objective is appropriate security control based on risk.

------------------------------------------------------------------------

# Architectural Role

Conditional Access is the decision engine that evaluates access
requests.

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
    Access Decision

Each component has a separate purpose.

Authentication Methods provides capability.

Authentication Strength defines acceptable authentication assurance.

Conditional Access applies the requirement.

------------------------------------------------------------------------

# Capability Before Enforcement

The most important deployment principle for Conditional Access is:

## Do Not Enforce What Has Not Been Validated

A common deployment mistake is creating a Conditional Access requirement
before users have successfully registered and tested the new
authentication method.

A safer sequence is:

    Enable Capability
            ↓
    Pilot Registration
            ↓
    Validate Authentication
            ↓
    Create Policy
            ↓
    Pilot Enforcement
            ↓
    Expand Deployment

This reduces the chance of unexpected user lockout or business
disruption.

------------------------------------------------------------------------

# Policy Design Considerations

A Conditional Access policy should begin with the business requirement.

Ask:

-   What are we protecting?
-   Why does this scenario require stronger authentication?
-   Which users need this requirement?
-   Which applications are affected?
-   What exceptions exist?
-   How will success be measured?

The policy should represent a security decision, not simply a technical
setting.

------------------------------------------------------------------------

# User and Group Targeting

Targeting should be intentional.

Consider:

## Pilot Users

Initial enforcement should include a controlled group that represents
real usage patterns.

Include:

-   Security teams.
-   Identity teams.
-   Technical champions.
-   Representative business users.

Avoid testing only with highly technical administrators.

------------------------------------------------------------------------

## Privileged Users

Administrative users are often strong candidates for phishing-resistant
authentication.

Consider protecting:

-   Privileged administrators.
-   Security administrators.
-   High-impact roles.
-   Administrative portals.

However, privileged enforcement requires recovery planning and emergency
access considerations.

------------------------------------------------------------------------

# Application Targeting

Applications should be evaluated based on risk.

Consider:

## High Priority

-   Administrative portals.
-   Security management platforms.
-   Sensitive business applications.
-   Systems containing confidential information.

## Lower Priority

-   Applications with compatibility limitations.
-   Legacy authentication dependencies.
-   Workflows requiring additional testing.

A phased application rollout allows organizations to identify issues
before broad enforcement.

------------------------------------------------------------------------

# Exclusions and Emergency Access

Every Conditional Access strategy requires careful handling of
exceptions.

Emergency access accounts exist to provide controlled recovery during
identity outages or configuration issues.

Operational considerations include:

-   Emergency account protection.
-   Monitoring.
-   Documentation.
-   Testing.
-   Limited use.

Exclusions should never become unmanaged bypass paths.

Every exception should have a documented reason and ownership.

------------------------------------------------------------------------

# Privileged Identity Considerations

Privileged access requires additional planning.

Review:

-   Administrative account design.
-   Privileged Identity Management workflows.
-   Authentication requirements.
-   Administrative device security.
-   Emergency access procedures.
-   Recovery scenarios.

Strong authentication controls are most valuable when applied to
identities with the greatest potential impact.

------------------------------------------------------------------------

# Pilot Enforcement Strategy

A recommended enforcement approach:

    Report-Only
          ↓
    Limited Pilot
          ↓
    Expanded Pilot
          ↓
    Production Enforcement
          ↓
    Continuous Review

Report-only provides visibility into expected impact before enforcement.

Pilot enforcement confirms:

-   Users can satisfy the requirement.
-   Applications function correctly.
-   Support teams are prepared.
-   Exceptions are understood.

------------------------------------------------------------------------

# Rollback Planning

Rollback planning should exist before enforcement.

A rollback plan should define:

-   Who can modify the policy.
-   How the policy will be adjusted.
-   How users will regain access.
-   How incidents will be communicated.
-   How decisions will be documented.

Rollback is not a failure.

It is a controlled operational response.

------------------------------------------------------------------------

# Validation

Conditional Access validation should confirm the intended outcome.

Review:

## Policy Evaluation

Confirm:

-   The correct users are targeted.
-   The correct applications are protected.
-   The expected authentication strength is required.

## Authentication Experience

Confirm:

-   Users can authenticate successfully.
-   Passkeys satisfy the requirement.
-   Users understand the experience.

## Operational Evidence

Collect:

-   Sign-in results.
-   Conditional Access evaluation details.
-   Authentication method information.
-   User feedback.
-   Support trends.

Evidence should demonstrate that the policy works as designed.

------------------------------------------------------------------------

# Common Mistakes

## Mistake 1: Enforcing Too Early

Users should have the opportunity to register and validate passkeys
before enforcement.

------------------------------------------------------------------------

## Mistake 2: Protecting Everything at Once

Broad enforcement without testing increases operational risk.

------------------------------------------------------------------------

## Mistake 3: Ignoring Emergency Access

Strong controls require resilient recovery options.

------------------------------------------------------------------------

## Mistake 4: Creating Permanent Exceptions

Exceptions should be governed, reviewed, and reduced whenever possible.

------------------------------------------------------------------------

# From the Field

Conditional Access is where security strategy becomes operational
reality.

Creating a policy is easy.

Creating a policy that improves security without disrupting the business
requires understanding users, applications, recovery, and evidence.

The strongest deployments are not the ones with the most restrictive
policies.

They are the ones where the organization understands why the policy
exists and can confidently operate it.

------------------------------------------------------------------------

# Operational Takeaways

-   Conditional Access is the enforcement layer.
-   Authentication capability should exist before enforcement.
-   Policies should be based on risk.
-   Pilot enforcement before broad rollout.
-   Protect privileged access intentionally.
-   Emergency access requires governance.
-   Rollback planning should happen before deployment.
-   Evidence should confirm policy effectiveness.

------------------------------------------------------------------------

## Next Chapter

The next chapter focuses on operational validation and how organizations
prove that their passkey deployment is working through measurable
evidence.
