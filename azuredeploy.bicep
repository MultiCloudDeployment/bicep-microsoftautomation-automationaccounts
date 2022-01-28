param name string
param location string = resourceGroup().location
param tags object = {}
param DisableLocalAuth bool = false
param PublicNetworkAccess bool = true
@allowed([
  'Free'
  'Basic'
])
param SkuName string = 'Free'

resource AutomationAccount 'Microsoft.Automation/automationAccounts@2021-06-22' = {
  name: name
  location: location
  tags: tags
  properties: {
    disableLocalAuth: DisableLocalAuth
    publicNetworkAccess: PublicNetworkAccess
    sku: {
      name: SkuName
    }
  }
}
