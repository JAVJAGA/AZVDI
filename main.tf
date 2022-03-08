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

