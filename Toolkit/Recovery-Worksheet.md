# Recovery Worksheet

# Operational Blueprint #001

## Microsoft Authenticator Passkeys in Microsoft Entra ID

------------------------------------------------------------------------

## Purpose

This recovery worksheet provides a structured process for planning,
testing, and operating recovery scenarios associated with Microsoft
Authenticator passkey deployments.

Recovery should be designed before enforcement begins.

The objective is to ensure users can regain access securely while
maintaining identity assurance and preventing recovery processes from
becoming weaker authentication paths.

------------------------------------------------------------------------

# Recovery Information

  Item                  Details
  --------------------- ---------
  Recovery Plan Owner   
  Security Owner        
  Support Owner         
  Review Date           
  Environment           

------------------------------------------------------------------------

# Recovery Principles

Recovery processes should:

☐ Verify identity before restoring access.

☐ Use approved administrative processes.

☐ Maintain auditability.

☐ Protect privileged identities.

☐ Avoid bypassing security controls.

☐ Be tested before production enforcement.

------------------------------------------------------------------------

# Scenario 1: Lost Device Recovery

## Scenario Details

A user loses access to the device containing their passkey.

------------------------------------------------------------------------

## Recovery Process

Document:

1.  How the user reports the issue.

2.  How identity verification occurs.

3.  Who performs recovery actions.

4.  How old credentials are handled.

5.  How a new credential is registered.

6.  How successful recovery is validated.

------------------------------------------------------------------------

## Validation

☐ Process documented.

☐ Identity verification completed.

☐ Recovery successfully tested.

☐ Evidence captured.

Findings:

    Document results.

------------------------------------------------------------------------

# Scenario 2: New Device Registration

## Scenario Details

A user replaces or upgrades their device.

------------------------------------------------------------------------

## Recovery Process

Document:

☐ New device registration process.

☐ Old device credential handling.

☐ User communication.

☐ Support involvement.

☐ Validation steps.

------------------------------------------------------------------------

## Validation

Result:

    Document test results.

------------------------------------------------------------------------

# Scenario 3: Credential Removal

## Scenario Details

A registered passkey must be removed or replaced.

------------------------------------------------------------------------

## Process

Document:

-   Who can remove credentials.
-   Approval requirements.
-   Audit requirements.
-   User notification process.

------------------------------------------------------------------------

## Validation

☐ Removal process tested.

☐ Replacement process tested.

☐ Evidence captured.

------------------------------------------------------------------------

# Scenario 4: Privileged Identity Recovery

## Scenario Details

An administrator requires recovery assistance.

------------------------------------------------------------------------

## Additional Controls

Review:

☐ Privileged account ownership.

☐ Administrative identity verification.

☐ Privileged Identity Management workflows.

☐ Emergency access procedures.

☐ Approval requirements.

------------------------------------------------------------------------

## Validation

☐ Administrator recovery tested.

☐ Security review completed.

☐ Audit evidence collected.

------------------------------------------------------------------------

# Scenario 5: Emergency Access

## Scenario Details

Identity services or authentication policies prevent normal access.

------------------------------------------------------------------------

## Emergency Access Review

☐ Emergency accounts exist.

☐ Emergency accounts are protected.

☐ Emergency access is monitored.

☐ Testing schedule exists.

☐ Usage is reviewed.

------------------------------------------------------------------------

# Help Desk Recovery Workflow

## Support Readiness

Confirm:

☐ Help desk understands recovery procedures.

☐ Identity verification steps are documented.

☐ Escalation paths exist.

☐ Security boundaries are understood.

☐ Common issues are documented.

------------------------------------------------------------------------

# Recovery Evidence

Capture:

☐ Recovery request details.

☐ Identity verification evidence.

☐ Administrative actions.

☐ Credential changes.

☐ Validation results.

☐ Lessons learned.

------------------------------------------------------------------------

# Recovery Findings Register

  Finding   Severity   Owner   Action
  --------- ---------- ------- --------
                               

------------------------------------------------------------------------

# Recovery Testing Results

  Scenario                 Result   Date   Owner
  ------------------------ -------- ------ -------
  Lost Device                              
  New Device                               
  Credential Replacement                   
  Privileged Recovery                      
  Emergency Access                         

------------------------------------------------------------------------

# Operational Improvements

Document improvements identified during testing:

    Record lessons learned and future enhancements.

------------------------------------------------------------------------

# Final Recovery Assessment

☐ Recovery processes are documented.

☐ Support teams are prepared.

☐ Privileged recovery has been tested.

☐ Emergency access has been reviewed.

☐ Recovery evidence has been collected.

Assessment Result:

☐ Ready

☐ Ready With Actions

☐ Needs Review

☐ Not Ready

------------------------------------------------------------------------

# Operational Principle

A secure authentication deployment is measured not only by how users
authenticate successfully.

It is also measured by how safely the organization responds when
authentication fails.

Recovery is not an exception to security.

Recovery is part of security.
