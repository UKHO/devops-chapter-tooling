Connect-AzAccount -tenantId "9134ca48-663d-4a05-968a-31a42f0aed3e"
Set-AzContext -Subscription "0eaeb992-8461-4308-ab7c-81d9f9b29356"

$repositoryDirectory = $(git rev-parse --show-toplevel)
$terraformDirectory = "$repositoryDirectory/sandbox/terraform"
$discoveryVariable = "$terraformDirectory/config/discovery.tfvars"

Write-Host $terraformDirectory
Write-Host $discoveryVariable

Set-Location $terraformDirectory
terraform init 
terraform plan -var-file="$discoveryVariable" -out=tfplan
terraform apply -var-file="$discoveryVariable" -auto-approve