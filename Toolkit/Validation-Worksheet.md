# Validation Worksheet

# Operational Blueprint #001

## Microsoft Authenticator Passkeys in Microsoft Entra ID

------------------------------------------------------------------------

## Purpose

This validation worksheet provides a structured method for confirming
that a Microsoft Authenticator passkey deployment is working as
designed.

The purpose of validation is to collect evidence that demonstrates:

-   Configuration is correct.
-   Users can successfully register.
-   Authentication works.
-   Conditional Access policies behave as expected.
-   Recovery processes function.
-   The organization is ready to expand deployment.

A deployment should not move forward based only on configuration status.

It should move forward based on validated outcomes.

------------------------------------------------------------------------

# Validation Summary

  Item                Details
  ------------------- ---------
  Validation Date     
  Environment         
  Validator           
  Deployment Phase    
  Validation Status   

------------------------------------------------------------------------

# Validation Result

  Status               Meaning
  -------------------- -----------------------------------
  Pass                 Expected outcome confirmed
  Pass With Findings   Working but improvements required
  Fail                 Issue prevents progression
  Not Tested           Validation not completed

------------------------------------------------------------------------

# 1. Configuration Validation

## Authentication Methods

☐ Passkey capability is enabled.

☐ Correct users or groups are assigned.

☐ Configuration matches the deployment plan.

☐ Configuration changes are documented.

Result:

    Document findings.

------------------------------------------------------------------------

## Authentication Strength

☐ Authentication requirements are defined.

☐ Required authentication methods are understood.

☐ Authentication Strength aligns with business requirements.

Result:

    Document findings.

------------------------------------------------------------------------

## Conditional Access

☐ Policies are configured as designed.

☐ Target users and applications are correct.

☐ Exclusions are documented.

☐ Emergency access considerations are reviewed.

Result:

    Document findings.

------------------------------------------------------------------------

# 2. Registration Validation

## User Enrollment

☐ Pilot users can register passkeys.

☐ Registration instructions are successful.

☐ Registration issues are documented.

☐ User feedback is collected.

Evidence:

    Document registration evidence.

------------------------------------------------------------------------

# 3. Authentication Validation

## Sign-In Testing

Validate:

☐ User authentication succeeds.

☐ Passkey authentication is recognized.

☐ Expected applications are accessible.

☐ Authentication experience meets expectations.

Test Users:

  User   Scenario   Result
  ------ ---------- --------
                    

------------------------------------------------------------------------

# 4. Conditional Access Validation

## Policy Evaluation

Confirm:

☐ Expected policy is applied.

☐ Authentication requirement is satisfied.

☐ Access decision is correct.

☐ Unexpected blocks are investigated.

Evidence:

    Document Conditional Access results.

------------------------------------------------------------------------

# 5. Application Validation

Review critical workflows.

  Application   Scenario   Result
  ------------- ---------- --------
                           

Validate:

☐ Microsoft 365 access.

☐ Enterprise applications.

☐ Administrative portals.

☐ Business-critical workflows.

------------------------------------------------------------------------

# 6. Device and Platform Validation

Test representative scenarios.

  Platform   Device   Result
  ---------- -------- --------
                      

Validate:

☐ Supported mobile scenarios.

☐ Desktop authentication.

☐ Browser experience.

☐ Managed device scenarios.

☐ Remote user scenarios.

------------------------------------------------------------------------

# 7. Recovery Validation

Test recovery workflows.

## Lost Device

☐ Process documented.

☐ Identity verification completed.

☐ Recovery successful.

------------------------------------------------------------------------

## New Device

☐ New registration process works.

☐ Old credential handling is understood.

------------------------------------------------------------------------

## Privileged Recovery

☐ Administrator recovery tested.

☐ Emergency access reviewed.

------------------------------------------------------------------------

# 8. Evidence Collection

Capture:

☐ Configuration evidence.

☐ Registration evidence.

☐ Authentication evidence.

☐ Conditional Access evidence.

☐ Recovery evidence.

☐ User feedback.

☐ Support feedback.

------------------------------------------------------------------------

# Findings Register

  Finding   Severity   Owner   Action
  --------- ---------- ------- --------
                               

------------------------------------------------------------------------

# Remediation Tracking

  Action   Owner   Due Date   Status
  -------- ------- ---------- --------
                              

------------------------------------------------------------------------

# Final Validation Decision

## Deployment Recommendation

☐ Ready for expansion.

☐ Ready with remediation actions.

☐ Additional testing required.

☐ Deployment should pause.

Decision:

    Document final validation decision.

------------------------------------------------------------------------

# Operational Principle

Validation is the point where a deployment moves from assumption to
confidence.

A successful security deployment is not defined by what was configured.

It is defined by what can be proven.

Evidence creates operational confidence.
