# Storage
El modulo crea un recurso tipo Storage, with a Fileshare
## Variables de Entrada. Nomenclatura
Para configurar la Storage es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Company            |String |No             |wz                 |Nombre de la compañia                                          |
|CloudProvider      |String |No             |az                 |Nomenclatura: Compañia. Valores: aw, az, gc, oc                |
|Environment        |String |No             |                   |Nomenclatura: Proveedor Cloud. Valores: dev, prod, uat         |
|Region             |String |Si             |euwe               |Región al que pertenece el recurso                             |
|Service            |String |Si             |                   |Nombre del servicio al que pertenece el recurso                |
|Instance           |String |Si             |                   |Numero de instancia del recurso                                |
|Resource           |String |Si             |                   |Abreviatura del recurso                                        |


## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                                 |
|----------------------         |:-----:|:-------------:|:-----------------:|:--------------------------------------------------------------------------:|
|Name                	        |String |No             |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|ResourceGroupName              |String |Si             |                   |Grupo de recursos donde se crea el Hostpool                                 |
|Azure_Location                 |String |No             |westeurope         |Localización de los recursos.                                               |
|adresourcegroupname            |String |Si             |                   |Name of the  Active Directory resource group where the resource is deployed |
|storage_rg_name	        |String |Si             |                   |Resource Group Storage                                                      |    
|account_tier                   |String |Si             |                   |account storage tier                                                        |
|account_replication_type       |String |Si             |                   |account storage replication type                                            |
|account_kind                   |String |Si             |                   |account storage kind                                                        |
|principal_ids                  |String |Si             |                   |The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN | 





## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
                          
                           |

