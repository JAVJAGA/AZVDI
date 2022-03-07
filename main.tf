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

