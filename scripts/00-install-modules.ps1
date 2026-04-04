$modules = @(
    "Microsoft.Graph.Authentication",
    "Microsoft.Graph.Identity.SignIns"
)

foreach ($module in $modules) {
    if (-not (Get-Module -ListAvailable -Name $module)) {
        Install-Module $module -Scope CurrentUser -Repository PSGallery -Force
    }
}

Write-Host "Required modules installed."
