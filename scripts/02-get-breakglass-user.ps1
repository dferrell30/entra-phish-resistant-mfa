param(
    [Parameter(Mandatory = $true)]
    [string]$UserPrincipalName
)

Import-Module Microsoft.Graph.Identity.SignIns
$result = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/users/$UserPrincipalName?`$select=id,displayName,userPrincipalName"
$result
