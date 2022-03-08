# Customized the values below for your environment and either rename to terraform.tfvars or env.auto.tfvars

resource_group_name  = "RG_hostpool"
region               = "west europe"
prefix               = "WVD"
rdsh_count           =  "2" # Number of Virtual Machines to deploy
hostpoolname         = "Hostpool1"
pooledhpmaxsessions  =  "2" #"Max sessions per pooled host"
type                 = "pooled"
loadbalancertype     = "DepthFirst"

 
