# Scripts

## Recommended environment
- PowerShell 7+
- Microsoft.Graph.Authentication
- Microsoft.Graph.Identity.SignIns

## Run order
1. `00-install-modules.ps1`
2. `01-connect-graph.ps1`
3. `02-get-breakglass-user.ps1`
4. `04-enable-fido2-template.ps1`
5. `05-create-ca-privileged-lab.ps1`
6. `03-get-authentication-strengths.ps1`
7. `06-create-ca-privileged-phishing-resistant.ps1`
8. `07-set-ca-policy-state.ps1`

## Notes
- Create all CA policies in Report-only first.
- Validate sign-in logs before enabling.
- Do not remove fallback until YubiKey enrollment and break-glass validation are complete.
