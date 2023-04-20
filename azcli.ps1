az group create -g covid19_reporting -l eastus3
az deployment group create -g covid19_reporting -f '..\bicep\Create_ADF.bicep'

# az group create --name covid19_reporting --location eastus
# az deployment group create --resource-group covid19_reporting --template-file main.bicep
