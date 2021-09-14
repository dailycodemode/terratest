#================================================================================================
# Data Sources
#================================================================================================
data "azurerm_client_config" "current" {}

#================================================================================================
# Global Variables
#================================================================================================
locals {

  location_abbreviated_map = {
    uksouth = "uks"
    ukwest  = "ukw"
  }

  tags                 = merge(var.global_tags, var.environment_tags)
  location_abbreviated = lookup(local.location_abbreviated_map, var.location, null)
  subscription_id      = lookup(var.subscription_id_map, var.subscription, null)
  label                = format("%s-%s", local.location_abbreviated, var.subscription)
}

variable "location" {
  description = "Environment Resource Locations e.g. uksouth, ukwest"
}

variable "location_abbreviated" {
  description = "Environment Resource Locations e.g. uks, ukw"
}

variable "customer_abbreviation" {
  type    = string
  default = ""
}

variable "subscription_id_map" {
  description = "SubAlias > SubID e.g. hub, spoke, nprd, prd"
  type        = map(string)
}

variable "subscription" {
  description = "Name of the Spoke e.g. hub, spoke, nprd, prd"
  type        = string
}

variable "environment" {
  description = "Name of the environment e.g. hub, nprd, dev, test, regr, prd"
  type        = string
}

variable "global_tags" {
  description = "Default tags which are merged into resource tags"
  type        = map(string)
  default     = {}
}

variable "environment_tags" {
  description = "Environment specific tags which are merged into resource tags"
  type        = map(string)
  default     = {}
}
