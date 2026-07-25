# Planning

# Deploying Microsoft Authenticator Passkeys in Microsoft Entra ID

## Preparing for a Production-Ready Deployment

------------------------------------------------------------------------

## Introduction

Successful identity deployments are planned before they are configured.

Microsoft Authenticator passkeys provide a stronger authentication
capability, but introducing them into production requires more than
enabling a new authentication method. Organizations must understand
their current environment, define deployment objectives, identify
affected users, prepare operational processes, and establish success
criteria before rollout begins.

Planning transforms a technical change into a controlled security
initiative.

The purpose of this chapter is to define the planning activities
required before deploying Microsoft Authenticator passkeys in Microsoft
Entra ID.

------------------------------------------------------------------------

# Planning Objectives

Before enabling passkeys, organizations should be able to answer:

-   Why are we deploying passkeys?
-   Which users should receive access first?
-   What authentication experience are we replacing or improving?
-   Which applications and workflows are affected?
-   How will users register?
-   How will recovery work?
-   How will we measure success?
-   When will enforcement begin?

A deployment without clear answers to these questions creates
unnecessary operational risk.

------------------------------------------------------------------------

# Define the Business Objective

The first planning step is understanding the desired outcome.

Common objectives include:

-   Reducing phishing exposure.
-   Improving protection for privileged identities.
-   Moving toward passwordless authentication.
-   Strengthening authentication requirements.
-   Improving alignment with Zero Trust principles.
-   Reducing reliance on weaker authentication methods.
-   Supporting regulatory or security requirements.

The objective determines the deployment approach.

For example:

A deployment focused on protecting administrators may begin with
privileged accounts.

A deployment focused on broad passwordless adoption may require a larger
user readiness program.

The technology may be the same, but the operational strategy changes.

------------------------------------------------------------------------

# Assess the Current Authentication Landscape

Before introducing passkeys, understand the current identity
environment.

Review:

## Existing Authentication Methods

Determine:

-   Which methods are currently enabled.
-   Which methods users actively use.
-   Which methods satisfy current Conditional Access policies.
-   Which methods may require replacement or reduction.

Examples:

-   Password plus SMS.
-   Microsoft Authenticator push.
-   Temporary Access Pass.
-   FIDO2 security keys.
-   Certificate-based authentication.

Understanding the current state prevents unexpected user impact.

------------------------------------------------------------------------

# Review Identity and Access Dependencies

Passkey deployment affects authentication workflows.

Review:

## Users

Consider:

-   Workforce users.
-   Administrators.
-   Contractors.
-   External users.
-   Service desk personnel.

------------------------------------------------------------------------

## Applications

Consider:

-   Microsoft 365 applications.
-   Enterprise applications.
-   Legacy applications.
-   Custom applications.
-   Remote access solutions.

------------------------------------------------------------------------

## Devices

Consider:

-   Windows devices.
-   Mobile devices.
-   macOS devices.
-   Browser compatibility.
-   Managed versus unmanaged devices.

A successful pilot represents the real environment, not only the easiest
scenario.

------------------------------------------------------------------------

# Licensing and Capability Review

Before deployment, verify that the required Microsoft capabilities are
available in the tenant.

Review:

-   Microsoft Entra licensing requirements.
-   Authentication capabilities available in the environment.
-   Conditional Access availability.
-   Identity Governance requirements where applicable.
-   Administrative roles required for configuration.

Licensing and feature availability should be validated before
implementation begins.

Microsoft capabilities continue to evolve, so current licensing guidance
should always be confirmed against official Microsoft documentation
before production deployment.

------------------------------------------------------------------------

# Identify the Pilot Population

A pilot should be intentional.

The first users should provide useful feedback while limiting
operational risk.

A strong pilot population may include:

-   Identity administrators.
-   Security team members.
-   Technical champions.
-   Help desk representatives.
-   Users from different platforms.
-   Users representing different business workflows.

Avoid selecting only users who are highly technical.

The pilot should expose real operational challenges.

------------------------------------------------------------------------

# Pilot Success Criteria

A pilot should have measurable outcomes.

Examples:

## Registration

Can users successfully register passkeys?

## Authentication

Can users authenticate successfully to required applications?

## Policy Evaluation

Do Conditional Access policies evaluate as expected?

## User Experience

Can users complete normal workflows?

## Support Readiness

Can support teams resolve common issues?

## Recovery

Can users recover access using approved processes?

A pilot without success criteria becomes a test without a conclusion.

------------------------------------------------------------------------

# Communication Planning

Authentication changes affect users directly.

Communication should explain:

-   What is changing.
-   Why the organization is making the change.
-   When users will be affected.
-   How registration works.
-   What support is available.
-   What users should do if problems occur.

Security changes are more successful when users understand the purpose
behind them.

------------------------------------------------------------------------

# Operational Readiness Checklist

Before production rollout, confirm:

## Governance

-   Ownership is defined.
-   Support responsibilities are documented.
-   Approval processes are complete.

## Technical Readiness

-   Authentication Methods are reviewed.
-   Authentication Strength requirements are defined.
-   Conditional Access policies are prepared.
-   Pilot testing is complete.

## User Readiness

-   Communications are prepared.
-   Training resources exist.
-   Support teams understand the process.

## Recovery Readiness

-   Lost device procedures exist.
-   Credential removal procedures exist.
-   Privileged recovery procedures are documented.

------------------------------------------------------------------------

# Rollout Strategy

A phased deployment reduces risk.

A typical approach:

    Lab Validation
          ↓
    Security Team Pilot
          ↓
    Privileged Users
          ↓
    Early Adopters
          ↓
    Business Groups
          ↓
    Organization-Wide Deployment

The exact sequence depends on organizational requirements.

The important principle is controlled expansion.

------------------------------------------------------------------------

# Rollback Planning

Even security improvements require rollback planning.

Before enforcement, determine:

-   How policies will be adjusted.
-   How exceptions will be handled.
-   How users will regain access if unexpected issues occur.
-   How incidents will be communicated.
-   How decisions will be documented.

Rollback does not mean abandoning the security objective.

It provides a controlled response when operational issues appear.

------------------------------------------------------------------------

# Evidence Planning

Determine what evidence will demonstrate deployment success.

Examples:

-   User registration completion.
-   Authentication success.
-   Conditional Access results.
-   Authentication method usage.
-   Support ticket trends.
-   User feedback.
-   Recovery test results.

Evidence should be defined before deployment begins.

------------------------------------------------------------------------

# From the Field

The planning phase is where many deployments are won or lost.

The technical configuration is usually the easiest part.

The difficult questions are operational:

Who goes first?

How do users recover?

How does support respond?

How do we know adoption is successful?

Taking time to answer those questions before enabling enforcement
creates a smoother rollout and reduces unnecessary risk.

------------------------------------------------------------------------

# Operational Takeaways

-   Planning should begin with business objectives.
-   Understand current authentication methods before introducing new
    ones.
-   Pilot groups should represent real production scenarios.
-   Success criteria should be defined before rollout.
-   User communication is part of the security design.
-   Recovery must be prepared before enforcement.
-   Evidence collection should be planned before deployment.
-   Phased rollout reduces operational risk.

------------------------------------------------------------------------

## Next Chapter

The next chapter begins implementation by examining Authentication
Methods configuration and how organizations should enable passkey
capability before moving toward enforcement.
