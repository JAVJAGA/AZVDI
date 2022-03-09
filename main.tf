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




locals {
     
     id=module.hostpool.id
  
     
}