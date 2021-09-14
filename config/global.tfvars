#================================================================================================
# Environment Configuration
#================================================================================================
global_tags = {
  Owner       = "alan.dias@ofgem.gov.uk",
  Department  = "DDAT",
  Service     = "IT",
  Terraform   = "True",
  "AzDO Repo" = "na"
}

customer_abbreviation = "ofg"
subscription_id_map = {
  HUB  = "dd5c621b-30f8-4b0a-b477-d653dc8adace"
  PRD  = "91ab504f-e528-4c07-b78f-6af1ab3b84c0"
  PK8S = "22f7edb7-c8d5-474b-9031-b804000f3abb"
  NPRD = "12c4aa27-07ab-4e4b-ba6c-82667c02165b"
  NK8S = "d3b64e8b-5644-46af-90b5-066cde050d1d"
  SBOX = "6f3c5ef5-080e-407a-9e96-2f2db9fcd56a"
  CORE = "503be530-5487-4aa5-a6ca-effc1d78ab28"
  SSRV = "bee03fff-68de-401a-8810-668cf1b7a800"
}

# #================================================================================================
# # Palo Alto Ext/untrusted NICs: UKS
# #================================================================================================
# backend_address_pool_ips = ["10.128.1.6", "10.128.1.7"]

# #================================================================================================
# # Global IPs to add to Storage Account Firewalls
# #================================================================================================
# global_ip_rules = [
#   "195.94.45.94", # VDC 1
#   "195.94.45.126" # VDC 2
# ]

# #================================================================================================
# # Log Analytics Workspace: Hub
# #================================================================================================
# diag_log_workspace = "/subscriptions/dd5c621b-30f8-4b0a-b477-d653dc8adace/resourceGroups/uks-hub-mgmt-rg-01/providers/Microsoft.OperationalInsights/workspaces/ofg-uks-hub-lz-logs-workspace"


# #================================================================================================
# # KeyVault Global Configuration
# #================================================================================================
# keyvault_whitelist_ips = [
#   "195.94.45.94/32",  # VDC 1
#   "195.94.45.126/32", # VDC 2
#   "80.233.39.231/32",
#   "80.233.47.231/32"
# ]

# keyvault_id = "/subscriptions/dd5c621b-30f8-4b0a-b477-d653dc8adace/resourceGroups/uks-hub-mgmt-rg-01/providers/Microsoft.KeyVault/vaults/uks-hub-frdoor-kv"