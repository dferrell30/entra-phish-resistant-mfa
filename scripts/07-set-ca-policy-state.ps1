param(
    [Parameter(Mandatory = $true)]
    [string]$DisplayName,

    [Parameter(Mandatory = $true)]
    [ValidateSet("enabled", "disabled", "enabledForReportingButNotEnforced")]
    [string]$State
)

$policy = Get-MgIdentityConditionalAccessPolicy -All | Where-Object { $_.DisplayName -eq $DisplayName }

if (-not $policy) {
    throw "Policy not found: $DisplayName"
}

$params = @{
    state = $State
}

Update-MgIdentityConditionalAccessPolicy `
    -ConditionalAccessPolicyId $policy.Id `
    -BodyParameter $params

Write-Host "Updated policy '$DisplayName' to state '$State'."
