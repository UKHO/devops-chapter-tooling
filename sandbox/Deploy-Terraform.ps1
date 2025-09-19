param(
    [guid]$TenantId, 
    [guid]$SubscriptionId
)

Connect-AzAccount -tenantId $TenantId
Set-AzContext -Subscription $SubscriptionId

$repositoryDirectory = $(git rev-parse --show-toplevel)
$terraformDirectory = "$repositoryDirectory/sandbox/terraform"
$discoveryVariable = "$terraformDirectory/config/discovery.tfvars"

Write-Host $terraformDirectory
Write-Host $discoveryVariable

Set-Location $terraformDirectory
terraform init 
terraform plan -var-file="$discoveryVariable" -out=tfplan
terraform apply -var-file="$discoveryVariable" -auto-approve