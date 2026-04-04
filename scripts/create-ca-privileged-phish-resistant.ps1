param(
    [Parameter(Mandatory)]
    [string]$BreakGlassObjectId,

    # Built-in authentication strength policy ID for phishing-resistant MFA.
    # Look this up in your tenant before use.
    [Parameter(Mandatory)]
    [string]$PhishResistantAuthStrengthId
)

$globalAdminRoleTemplateId = "62e90394-69f5-4237-9190-012177145e10"

$params = @{
    displayName = "CA - Privileged - Require Phishing-Resistant MFA"
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
        authenticationStrength = @{
            id = $PhishResistantAuthStrengthId
        }
    }
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $params
