variable "scalr_azurerm_subscription_id" {}

variable "scalr_azurerm_client_id" {}

variable "scalr_azurerm_client_secret" {}

variable "scalr_azurerm_tenant_id" {}

variable "region" {
default = "East US"
}

variable "rg_name" {
description = "Resource Group Name"
}

variable "network_name" {
description = "Network Name"
}

variable "cidr" {
default = ["10.0.0.0/16"]
description = "Subnet CIDR Block"
type = list(string)
}
