connect-AzAccount
Get-AzContext -ListAvailable | Where{$_.Name -match 'PAY'} | Set-AzContext 

Remove-AzResourceGroup -Name covid19_reporting -Verbose


# Converting ARM to Bicep
# az bicep decompile --file template.json


#// deploy the bicep code into azure
#//az group create --name AzRG001 --location eastus
# az deployment group create --resource-group AzRG001 --template-file Create_AzureDatabricks.bicep --parameters workspaceName=adb_workspace001
# az configure --defaults group=<name>`


# az group delete -n AzRG001
# az group delete -n NetworkWatcherRG

#if bicep upgrade errorout, run below command it will reset configuration for bicep

# az config set bicep.use_binary_from_path=False
