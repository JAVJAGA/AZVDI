# Customized the values below for your environment and either rename to terraform.tfvars or env.auto.tfvars

resourcegroupname  = "RG_hostpool"
azure_location      = "west europe"
prefix               = "WVD"
hostpool_name         = "Hostpool1"
pooledhpmaxsessions  =  "2" #"Max sessions per pooled host"
type                 = "Pooled"
loadbalancertype     = "DepthFirst"
pooledhpdesktopappfriendlyname = "WVDAPP"
pooledhpdesktopappdescription = "WVDAPP_APP_Desktop"
appgroup_type= "Desktop"

 
