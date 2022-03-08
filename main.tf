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
    hostpool_id = module.hostpool.id
    resourcegroupname = var.resourcegroupname
    azure_location = var.azure_location
    name = var.deskappgroup_name
    pooledhpdesktopappfriendlyname = var.pooledhpdesktopappfriendlyname
    pooledhpdesktopappdescription = var.pooledhpdesktopappdescription
    type = var.appgroup_type
    depends_on = [module.hostpool.id]
}

