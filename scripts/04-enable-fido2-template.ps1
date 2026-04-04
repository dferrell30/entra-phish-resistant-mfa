param(
    [switch]$WhatIf
)

$current = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2"
$current | ConvertTo-Json -Depth 10

if ($WhatIf) {
    Write-Host "WhatIf specified. No changes made."
    return
}

# Example PATCH body - customize before use
$body = @{
    "@odata.type" = "#microsoft.graph.fido2AuthenticationMethodConfiguration"
    state = "enabled"
    isAttestationEnforced = $false
} | ConvertTo-Json

Invoke-MgGraphRequest `
    -Method PATCH `
    -Uri "https://graph.microsoft.com/v1.0/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2" `
    -Body $body `
    -ContentType "application/json"
