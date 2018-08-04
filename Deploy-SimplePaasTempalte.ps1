### Define Deployment Variables
{
$location = 'UK South'
$resourceGroupName = 'apex-resource-paas'
$resourceDeploymentName = 'apex-paas-deployment'
$templatePath = $env:SystemDrive + '\' + 'Dev\ARM\Current'
$templateFile = 'simplePaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
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
