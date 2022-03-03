module "resource-group"{
    source = "./modules/tf-module-resource-group"
    azure_location = "westeurope"

    # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "WVDVDI"
    instance = "01"
    tags = {
        Country = "ES"
    }

}

module "hostpool" {
    source = "./modules/tf-module-hostpool"
    resourcegroupname = module.resource-group.name
    azure_location = "westeurope"
    prefix               = "Wvd"
    rdsh_count           =  "2" 
    pooledhpmaxsessions  =  "5"
            # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "HostpoolWVDVDI"
    resource= "hostpool"
    instance = "01"
    depends_on = [module.resource-group.id]
    tags = {
        Country = "ES"
    
    }
    
}
module "workspace" {
    source = "./modules/tf-module-workspace"
    resourcegroupname = module.resource-group.name   
    azure_location = "westeurope"
    workspacename = "WizinkVDI-Workspace"
    prefix               = "Wvd"
    depends_on = [module.hostpool.id]
}




module "deskappgroup" {
    source = "./modules/tf-module-deskappgroup"
    hostpool_id = module.hostpool.id
    resourcegroupname = module.resource-group.name
    azure_location = "westeurope"
    prefix               = "Wvd"
    pooledhpdesktopappfriendlyname = "Desktop AppGroup"
    pooledhpdesktopappdescription = "WVD application group"
    depends_on = [module.hostpool.id]
}

module "workspace-deskappgroup-association" {
    source = "./modules/tf-module-workspace-deskappgroup-association"
    workspace_id         = module.workspace.id
    deskappgroup_id = module.deskappgroup.id
    depends_on = [module.workspace.id, module.deskappgroup.id]
}

module "roles" {
     source = "./modules/tf-module-roles"
     dag_id = module.deskappgroup.id
     #aad_group_name = data.azuread_group.aad_group_name
     principal_ids = "d044bcdd-4eca-4a95-b746-908f61e7d7e1"
     depends_on = [module.hostpool.id, module.virtual-network-peering.id]
}

module "storage" {
     source = "./modules/tf-module-storage"
     azure_location          = "westeurope" 
     storage_rg_name         =  "RG_storage-vdi"
     principal_ids           = module.roles.principal_ids
     depends_on = [module.hostpool.id, module.virtual-network-peering.id, module.roles.principal_ids]
}


module "virtual-network"{
    source = "./modules/tf-module-virtual-network"
    azure_location = "westeurope"
    resourcegroupname = module.resource-group.name
    vnet_address_space = ["172.16.0.0/16"]
    dns_servers = [ "10.10.10.11", "10.10.10.13" ]    
    # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "netWVDVDI"
    instance = "01"
    tags = {
        Country = "ES"
    }
}

module "virtual-network-subnet"{
    source = "./modules/tf-module-virtual-network-subnet"
    resourcegroupname = module.resource-group.name
    vnet_name = module.virtual-network.name
    subnet_address_space = ["172.16.0.0/24"]
    # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "subnetWVDVDI"
    instance = "01"
    tags = {
        Country = "ES"
    }
}


module "network-security-group"{
    source = "./modules/tf-module-network-security-group"
    resourcegroupname = module.resource-group.name
    azure_location = "westeurope"
     # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "nsgWVDVDI"
    instance = "01"
    tags = {
        Country = "ES"
    }
}

module "network-security-rule"{
    source = "./modules/tf-module-network-security-rule"
    resourcegroupname = module.resource-group.name
    networksecuritygroup_name = module.network-security-group.name
    name                       = "Https"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

}

module "network-security-group-association" {
    source = "./modules/tf-module-network-security-group-association"
    subnet_id = module.virtual-network-subnet.id
    networksecuritygroup_id = module.network-security-group.id
    Depending_Resource_id = module.virtual-network-subnet.id
    
}

module "virtual-network-peering" {
    source = "./modules/tf-module-virtual-network-peering"
    advnet_name = "vnet_ad_wizink"       
    adresourcegroupname = "Rg_Wizinkvdi"
    ad_vnet_data_id = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/Rg_Wizinkvdi/providers/Microsoft.Network/virtualNetworks/vnet_ad_wizink"
    resourcegroupname = module.resource-group.name
    vnet_name = module.virtual-network.name
    vnet_id = module.virtual-network.id
    

}


module "virtual-machines" {
    source = "./modules/tf-module-virtual-machines" 
    resourcegroupname = module.resource-group.name
    azure_location          = "westeurope"   
    rdsh_count              =  "2"
    prefix                  = "Wvd"
    subnet_id                = module.virtual-network-subnet.id
    networksecuritygroup_id  = module.network-security-group.id
    vm_size                 = "Standard_D2s_v3"
    vm_image_id             = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/Rg_Wizinkvdi/providers/Microsoft.Compute/galleries/wizinkgalleryvdi/images/img10_21h1g2/versions/1.0.0" #Id  Virtual Machine image
    vm_publisher            = "MicrosoftWindowsDesktop"
    vm_offer                = "Windows-10"
    vm_sku                  = "21h1-evd-g2"
    vm_version              = "latest"
    vm_timezone             = "Central European Standard Time"
    azure_key_vault_name    = "KVwizink" # Name of Key Vault
    azure_key_vault_resource_group_name = "kv_wizink_rg"
    adminpasswordkv_id      = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
    adminuserdkv_id         = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
    depends_on = [module.hostpool.id, module.virtual-network-peering.id]

}



module "extensions" {
    source = "./modules/tf-module-extensions"
    vm_ids                  = module.virtual-machines.vm_ids
    hostpoolname            = module.hostpool.name
    regtoken                = module.hostpool.regtoken  
    resourcegroupname       = module.resource-group.name
    azure_location          = "westeurope"  
    rdsh_count              =  "2"
    prefix                  = "Wvd"
    azure_key_vault_name                = "KVwizink" # Name of Key Vault
    azure_key_vault_resource_group_name = "kv_wizink_rg"
    admindomainpasswordkv_id            = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
    admindomainuserkv_id                = "/subscriptions/1eb5386e-8079-4fa5-997b-74e68eebbc92/resourceGroups/kv_wizink_rg/providers/Microsoft.KeyVault/vaults/KVwizink"
    depends_on = [module.hostpool.id, module.virtual-machines.vm_ids]
}
