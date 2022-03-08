module "hostpool"{
    source = "./modules/tf-module-hostpool"
    azure_location = "westeurope"
    resourcegroupname  = "RG_hostpool"
    prefix               = "WVD"
    hostpool_name         = "Hostpool1"
    pooledhpmaxsessions  =  "2" #"Max sessions per pooled host"
    type                 = "Pooled"
    loadbalancertype     = "DepthFirst"

   

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

