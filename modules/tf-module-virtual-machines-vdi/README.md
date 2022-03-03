# Virtual Machines
El modulo crea un recurso tipo Virtual Machines en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la Virtual Machines es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|


## Variables de Entrada. Recurso

|Variable                              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                                 |String |No             |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|ResourceGroupName                    |String |Si             |                   |Grupo de recursos donde se crea la Subnet                      |
|Azure_Location                       |String |No             |westeurope         |Localización de los recursos.                                  |
|prefix                               |String |Si             |		          |Prefix of the name of the AVD machine(s)                       |
|rdsh_count                           |string |Si             |                   |Number of Virtual machines to deploy                           |
|vm_size                              |String |Si             |                   |Size of Virtual machines to deploy                             |                      
|subnet_id                            |String |Si             |                   |ID of subnet where deploy the Virtual Machines                 |
|networksecuritygroup_id              |String |Si             |                   |ID of the Network Security Group                               |
|vm_image_id                          |String |Si             |                   |ID of the custom image to use                                  |
|vm_publisher                         |String |Si             |                   |Publisher of the vm image                                      |
|vm_offer                             |String |Si             |                   |Offer of the vm image                                          |
|vm_sku                               |String |Si             |                   |Sku of the vm image                                            |
|vm_version                           |String |Si             |                   |Version of the vm image                                        |
|vm_timezone                          |String |Si             |                   |The vm_timezone of the vms                                     |
|azure_key_vault_resource_group_name  |String |Si             |                   |azure_key_vault_resource_group_name                            |
|azure_key_vault_name                 |String |Si             |                   |azure_key_vault name                                           |
|localadminpasswordkv_id              |String |Si             |                   |Id of secret of local password admin                           |
|localadminuserdkv_id                 |String |Si             |                   |Id of secret of local user admin                               |
|Depending_Resource_id                |String |Si             |                   |Identificador del recurso del que depende                      |









## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |

