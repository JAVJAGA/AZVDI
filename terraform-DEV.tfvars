resourcegroupname                          = "RG_Hostpool"
azure_location                             = "west europe"
prefix                                     = "WVD"
hostpool_name                              = "Hostpool1"
pooledhpmaxsessions                        =  "2" #"Max sessions per pooled host"
type                                       = "Pooled"
loadbalancertype                           = "DepthFirst"
deskappgroup_name                          = "WVD-APP"
pooledhpdesktopappfriendlyname             = "WVDAPP"
pooledhpdesktopappdescription              = "WVDAPP_APP_Desktop"
appgroup_type                              = "RemoteApp"
workspace_name                             = "Prosegur-Workspace"
friendlynameworkspace                      = "Prosegur-Workspace"
descriptionworkspace                       = "Prosegur-Workspace"
resourcegroupname_vm                       = "RG_Hostpool_vm"  
rdsh_count                                 = "2"
prefix_vm                                  = "psazpecvdi"
subnet_id                                  = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_VNET/providers/Microsoft.Network/virtualNetworks/VNET1/subnets/vdi"
networksecuritygroup_id                    = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_VNET/providers/Microsoft.Network/networkSecurityGroups/VDINSG"
vm_size                                    = "Standard_D2ads_v5"
vm_image_id                                = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_WE_AVD_AzureComputeGallery/providers/Microsoft.Compute/galleries/Prosegur_AzureComputeGallery/images/21h2/versions/16.0.0" #Id  Virtual Machine image
vm_publisher                               = "MicrosoftWindowsDesktop"
vm_offer                                   = "Windows-10"
vm_sku                                     = "win10-21h2-avd"
vm_version                                 = "latest"
vm_timezone                                = "Central European Standard Time"
azure_key_vault_name                       = "keyvaultprose" # Name of Key Vault
azure_key_vault_resource_group_name        = "RG_PACKER"
localadminpasswordkv_id                    = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_PACKER/providers/Microsoft.KeyVault/vaults/keyvaultprose"
localadminuserkv_id                        = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_PACKER/providers/Microsoft.KeyVault/vaults/keyvaultprose"
log_analytics_name                         = "wslaprosegur"    
resourcegroupname_wla                      = "rg_wslaprosegur"
#regtoken                                   = "eyJhbGciOiJSUzI1NiIsImtpZCI6IkZDMTBFOUQzNUQ4MEFCMjQyMTM2MTJBMDIwQjA3Q0U2Q0UxODRGMDAiLCJ0eXAiOiJKV1QifQ.eyJSZWdpc3RyYXRpb25JZCI6IjIxYjFiNjRiLWRiMDUtNDJhYS1iMzljLWI0OWViNmM4NzJhMCIsIkJyb2tlclVyaSI6Imh0dHBzOi8vcmRicm9rZXItZy1ldS1yMC53dmQubWljcm9zb2Z0LmNvbS8iLCJEaWFnbm9zdGljc1VyaSI6Imh0dHBzOi8vcmRkaWFnbm9zdGljcy1nLWV1LXIwLnd2ZC5taWNyb3NvZnQuY29tLyIsIkVuZHBvaW50UG9vbElkIjoiMzRkODNiYWUtYjM3ZC00Y2U4LWIyZTYtYTFmOWYzM2Q3ZmUxIiwiR2xvYmFsQnJva2VyVXJpIjoiaHR0cHM6Ly9yZGJyb2tlci53dmQubWljcm9zb2Z0LmNvbS8iLCJHZW9ncmFwaHkiOiJFVSIsIkdsb2JhbEJyb2tlclJlc291cmNlSWRVcmkiOiJodHRwczovL3JkYnJva2VyLnd2ZC5taWNyb3NvZnQuY29tLyIsIkJyb2tlclJlc291cmNlSWRVcmkiOiJodHRwczovL3JkYnJva2VyLWctZXUtcjAud3ZkLm1pY3Jvc29mdC5jb20vIiwiRGlhZ25vc3RpY3NSZXNvdXJjZUlkVXJpIjoiaHR0cHM6Ly9yZGRpYWdub3N0aWNzLWctZXUtcjAud3ZkLm1pY3Jvc29mdC5jb20vIiwibmJmIjoxNjUwNDk5MDAwLCJleHAiOjE2NTI5MDc1NzMsImlzcyI6IlJESW5mcmFUb2tlbk1hbmFnZXIiLCJhdWQiOiJSRG1pIn0.AGYuR5p9wxsijLxYEaR_k0ZxO7T6ClxInepape80rx6lWll9GmFF1GSSHHPxQTyFi6NQZuPULpmkS8dVIUE9nG-emwF_FeuVgjUdcSxLaCLOa-1tyio2Pl86HVN9Bve-GBawmZD3YB0M-XIlfwE2jpgGJ3S7S7ado7STsv43UKBbMEKjCBm_3O-xUZmL3M0VMVSfr_jfBPmakaWTaErwQDd_cDFul48D9vUHkPmAUqaIPX-0DjtdTu_PaTdI6rkqL9TCR1OIeCKhWz9mDhbNux7X-Fv62v-_Jqmd8BogP02WryvmdT0bZLBdlXUqvMKOS8xC1dn9QSSE-8EQr85TVA"
domain_name                                = "prosetest.com"
oupath                                     = "OU=TestVDI,DC=prosetest,DC=com"
domainadminpasswordkv_id                   = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_PACKER/providers/Microsoft.KeyVault/vaults/keyvaultprose"
domainadminuserkv_id                       = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/RG_PACKER/providers/Microsoft.KeyVault/vaults/keyvaultprose"
resource_group_scaling_plan                = "RG_scaling_plan"
scope_scaling_plan_id                      = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16"
scaling_plan_name                          = "Scale_Plan_PRO"
scaling_plan_friendly_name                 = "Scale Plan PRO"
scaling_plan_description                   = "Scale Plan PRO"
#role_definition_resource_id               = "4d240c3a-6b8f-4702-b8aa-a0b69e8e0229"
storage_account_id                         = "/subscriptions/ac6397ad-217f-45f9-8078-44e44c0f6e16/resourceGroups/rg_storagetfstate/providers/Microsoft.Storage/storageAccounts/stgprosegur1"
principal_ids                              = "83d1e637-76db-476d-9c88-86a4c9caa5cb"
display_name_group                         = "Javier García Menéndez"
role_definition                            = "Desktop Virtualization User"

