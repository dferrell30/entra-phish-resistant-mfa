$result = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrength/policies"
$result.value | Select-Object id, displayName, policyType, requirementsSatisfied
