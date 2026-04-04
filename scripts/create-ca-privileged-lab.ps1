param(
    [Parameter(Mandatory)]
    [string]$BreakGlassObjectId
)

# Global Administrator role template ID
$globalAdminRoleTemplateId = "62e90394-69f5-4237-9190-012177145e10"

$params = @{
    displayName = "CA - Privileged - MFA (Lab)"
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
