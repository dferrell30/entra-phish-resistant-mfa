
## Automation scripts

Microsoft Graph PowerShell currently supports Conditional Access policy creation with the `Microsoft.Graph.Identity.SignIns` module, and Microsoft’s authentication guidance recommends using Graph scopes appropriate to the action. Microsoft also documents `Update` support for the FIDO2/passkey authentication method policy through Graph. :contentReference[oaicite:1]{index=1}

### `scripts/prerequisites.ps1`

```powershell
# Connect to Microsoft Graph with the scopes needed for CA and auth method work
$scopes = @(
    "Policy.Read.All",
    "Policy.ReadWrite.ConditionalAccess",
    "Policy.ReadWrite.AuthenticationMethod",
    "Directory.Read.All"
)

Connect-MgGraph -Scopes $scopes
Get-MgContext
