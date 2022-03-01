resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'toylaunchlearning'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
resource appServicePlan 'Microsoft.Web/serverFarms@2021-03-01' = {
  name: 'toy-product-learning'
  location: 'eastus'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2021-03-01' = {
  name: 'toy-product-learning-1'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
