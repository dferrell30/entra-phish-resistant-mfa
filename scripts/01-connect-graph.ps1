$scopes = @(
    "Policy.Read.All",
    "Policy.ReadWrite.ConditionalAccess",
    "Application.Read.All",
    "Policy.ReadWrite.AuthenticationMethod"
)

Connect-MgGraph -Scopes $scopes
Get-MgContext
