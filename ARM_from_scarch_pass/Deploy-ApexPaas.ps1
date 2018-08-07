### Define Deployment Variables
{
$resourceGroupLocation = 'UK South'
$resourceGroupName = 'apex-paas'
$resourceDeploymentName = 'apex-paas-deployment'
$templatePath = $env:SystemDrive + '\' + 'dev\arm\current'
$templateFile = 'apexPaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $resourceGroupLocation `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}
