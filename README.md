# Create Azure Automation account

This template creates an Automation Account in Azure

Azure Automation delivers a cloud-based automation and configuration service that provides consistent management across your Azure and non-Azure environments. It consists of process automation, update management, and configuration features. Azure Automation provides complete control during deployment, operations, and decommissioning of workloads and resources.

## Parameters

Parameter name | Required | Description
-------------- | -------- | -----------
name           | Yes      | The resource name
location       | No       | Gets or sets the location of the resource.
tags           | No       | Gets or sets the tags attached to the resource.
DisableLocalAuth | No       | Indicates whether requests using non-AAD authentication are blocked
PublicNetworkAccess | No       | Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
SkuName        | No       | The account SKU.
ResourceGroupName | Yes      | The name of the Reosurce Group

### name

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

The resource name

### location

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Gets or sets the location of the resource.

- Default value: `[resourceGroup().location]`

### tags

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Gets or sets the tags attached to the resource.

### DisableLocalAuth

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Indicates whether requests using non-AAD authentication are blocked

- Default value: `False`

### PublicNetworkAccess

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet

- Default value: `True`

### SkuName

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The account SKU.

- Default value: `Free`

- Allowed values: `Free`, `Basic`

### ResourceGroupName

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

The name of the Reosurce Group
