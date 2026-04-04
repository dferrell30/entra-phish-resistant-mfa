<#
Template only.
Review the current FIDO2/passkey policy in your tenant first, then update it carefully.
Do not run blind in production.
#>

# Example: inspect the current authentication methods policy
Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2"
