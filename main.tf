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

