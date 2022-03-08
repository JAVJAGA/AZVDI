# Customized the values below for your environment and either rename to terraform.tfvars or env.auto.tfvars

resource_group_name  = "RG_hostpool"
region               = "west europe"
prefix               = "WVD"
rdsh_count           =  "2" # Number of Virtual Machines to deploy
hostpoolname         = "Hostpool1"
pooledhpmaxsessions  =  "2" #"Max sessions per pooled host"
#principal_ids        =  "1afd64cb-88ee-4c67-b529-fb52e60ce9e8"
subnet_id             = "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/Rg_Wizinkvdi/providers/Microsoft.Network/virtualNetworks/vnet_wizinkvdi/subnets/Backend" #subnet_id where deploy Virtual Machines
aad_group_name       = "AVDUsers"
avd_users =           [
  "jgm@jagamesa.com",
  "ggm@jagamesa.com",
  "fmj@jagamesa.info"
]
storage_rg_name      = "af-storage-rg"
vm_size              = "Standard_D2s_v3"
vm_image_id          =  "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/Rg_Wizinkvdi/providers/Microsoft.Compute/galleries/Wizinkgallery/images/imgvdi/versions/0.0.1" #Id  Virtual Machine image
vm_publisher          = "MicrosoftWindowsDesktop"
vm_offer            = "Windows-10"
vm_sku              = "21h1-evd"
vm_version          = "latest"
vm_timezone         = "Central European Standard Time"
azure_key_vault_name  = "KVwizink" # Name of Key Vault
azure_key_vault_resource_group_name = "kv_wizink_rg"
adminpasswordkv_id    = "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
adminuserdkv_id       = "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
admindomainpasswordkv_id = "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
admindomainuserkv_id = "/subscriptions/f6e247c0-ae94-48b3-aefa-15eadae77fbd/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
#local_admin_username = 
#local_admin_password = 
#vnet_range           = 
#subnet_range         = 
#dns_servers          = 
#aad_group_name       = 
#domain_name          = 
#domain_user_upn      = 
#domain_password      = 
#ad_vnet              = 
#ad_rg                = 

 
