// ContentVersion: 1.0.0.3

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
@description('The name of the Reosurce Group')
param ResourceGroupName string

var deploymentName = '${name}-deployment'

module AutomationAccount 'automationaccount.bicep' = {
  name: deploymentName
  scope: resourceGroup(ResourceGroupName)
  params: {
    name: name
    location: location
    tags: tags
    DisableLocalAuth: DisableLocalAuth
    PublicNetworkAccess: PublicNetworkAccess
    SkuName: SkuName
  }
}
