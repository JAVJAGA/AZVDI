module "hostpool"{
    source = "./modules/tf-module-hostpool"
    azure_location = var.azure_location
    resourcegroupname  = var.resourcegroupname
    prefix               = var.prefix
    hostpool_name         = var.hostpool_name
    pooledhpmaxsessions  =  var.pooledhpmaxsessions
    type                 = var.type
    loadbalancertype     = var.loadbalancertype
}

module "deskappgroup" {
    source = "./modules/tf-module-deskappgroup"
    hostpool_id = local.id
    resourcegroupname = var.resourcegroupname
    azure_location = var.azure_location
    deskappgroup_name = var.deskappgroup_name
    pooledhpdesktopappfriendlyname = var.pooledhpdesktopappfriendlyname
    pooledhpdesktopappdescription = var.pooledhpdesktopappdescription
    appgroup_type= var.appgroup_type
    depends_on = [module.hostpool.id]
}
module "workspace" {
    source = "./modules/tf-module-workspace"
    resourcegroupname = var.resourcegroupname
    azure_location = var.azure_location
    workspace_name = var.workspace_name
    friendlynameworkspace = var.friendlynameworkspace
    descriptionworkspace   = var.descriptionworkspace
    depends_on = [module.hostpool.id]
}

module "workspace-deskappgroup-association" {
    source = "./modules/tf-module-workspace-deskappgroup-association"
    workspace_id         = module.workspace.id
    deskappgroup_id = module.deskappgroup.id
    depends_on = [module.workspace.id, module.deskappgroup.id]
}

module "virtual-machines" {
    source = "./modules/tf-module-virtual-machines-vdi" 
    resourcegroupname                    = var.resourcegroupname_vm
    azure_location                       = var.azure_location   
    rdsh_count                           = var.rdsh_count 
    prefix                               = var.prefix_vm
    subnet_id                            = var.subnet_id
    networksecuritygroup_id              = var.networksecuritygroup_id
    vm_size                              = var.vm_size 
    vm_image_id                          = var.vm_image_id
    vm_publisher                         = var.vm_publisher
    vm_offer                             = var.vm_offer
    vm_sku                               = var.vm_sku 
    vm_version                           = var.vm_version
    vm_timezone                          = var.vm_timezone
    azure_key_vault_name                 = var.azure_key_vault_name
    azure_key_vault_resource_group_name  = var.azure_key_vault_resource_group_name
    localadminpasswordkv_id              = var.localadminpasswordkv_id
    localadminuserkv_id                  = var.localadminuserkv_id
    depends_on = [module.hostpool.id]

}

module "wsp-loganalytics"{
    source = "./modules/tf-module-wsp-loganalytics"
    ResourceGroupName = var.resourcegroupname_wla
    azure_location    = var.azure_location  
    log_analytics_name = var.log_analytics_name
    

}

module "extensions" {
    source = "./modules/tf-module-extensions_new"
    vm_ids                  = local.vm_ids
    resourcegroupname       = var.resourcegroupname_vm
    rdsh_count              = var.rdsh_count 
    prefix                  = var.prefix_vm
    log_analytics_workspace_id = local.wsloganalytics_id
    log_analytics_workspace_primary_shared_key = local.primary_shared_key
    hostpoolname            = local.name
    regtoken                = local.regtoken


}

locals {     
     id=module.hostpool.id
     name=module.hostpool.name
     regtoken=module.hostpool.regtoken
     vm_ids=module.virtual-machines.vm_ids 
     wsloganalytics_id=module.wsp-loganalytics.wsloganalytics_id
     primary_shared_key= module.wsp-loganalytics.primary_shared_key
}