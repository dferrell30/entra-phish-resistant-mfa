param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$BreakGlassObjectId
)

$globalAdminRoleTemplateId = "62e90394-69f5-4237-9190-012177145e10"
$displayName = "CA - Privileged - MFA (Lab)"

$existing = Get-MgIdentityConditionalAccessPolicy -All | Where-Object { $_.DisplayName -eq $displayName }
if ($existing) {
    Write-Host "Policy already exists: $displayName"
    return
}

$params = @{
    displayName = $displayName
    state       = "enabledForReportingButNotEnforced"
    conditions  = @{
        users = @{
            includeRoles = @($globalAdminRoleTemplateId)
            excludeUsers = @($BreakGlassObjectId)
        }
        applications = @{
            includeApplications = @("All")
        }
        clientAppTypes = @(
            "browser",
            "mobileAppsAndDesktopClients"
        )
    }
    grantControls = @{
        operator = "OR"
        builtInControls = @("mfa")
    }
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $params
