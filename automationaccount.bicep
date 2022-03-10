// ContentVersion: 1.0.0.2

@description('The resource name')
param name string
@description('Gets or sets the location of the resource.')
param location string = resourceGroup().location
@description('Gets or sets the tags attached to the resource.')
param tags object = {}
@description('Indicates whether requests using non-AAD authentication are blocked')
param DisableLocalAuth bool = false
@description('Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet')
param PublicNetworkAccess bool = true
@description('The account SKU.')
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
