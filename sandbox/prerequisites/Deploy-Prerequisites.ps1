param(
    [Parameter(Mandatory = $true)][ValidateNotNull()] [guid]$TenantId,
    [Parameter(Mandatory = $true)][ValidateNotNull()] [guid]$SubscriptionId
)

Connect-AzAccount -tenantId $TenantId
Set-AzContext -Subscription $SubscriptionId

$repositoryDirectory = $( git rev-parse --show-toplevel )
$terraformDirectory = "$repositoryDirectory/sandbox/prerequisites"
$discoveryVariable = "$terraformDirectory/config/discovery.tfvars"

Write-Host $terraformDirectory
Write-Host $discoveryVariable

Set-Location $terraformDirectory
terraform init
terraform plan -var-file="$discoveryVariable" -out=tfplan
terraform apply tfplan -auto-approve