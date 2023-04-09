connect-AzAccount
Get-AzContext -ListAvailable | Where{$_.Name -match 'PAY'} | Set-AzContext 

New-AzResourceGroup   -Name covid19_reporting   -Location "EAST US"

$templateFile="../arm/Create_ADF.json"
New-AzResourceGroupDeployment   -Name blanktemplate -ResourceGroupName covid19_reporting -TemplateFile $templateFile
 # Remove-AzResourceGroup -Name covid19_reporting -Verbose