# Extensions
El modulo crea un recurso tipo Extensions , que une las maquinas virtuales creadas a un Workspace Lognalytics, a un dominio AD y la registra en el Hostpool, en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la Extensions es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|


## Variables de Entrada. Recurso

|Variable                                        |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|------------------------------------------------|:-----:|:-------------:|:------------------:|:-------------------------------------------------------------:|
||
|ResourceGroupName                               |String |Si             |                    |Grupo de recursos donde se crea la Subnet                      |
|Azure_Location                                  |String |No             |westeurope          |Localización de los recursos.                                  |
|prefix                                          |String |Si             |		      |Prefix of the name of the AVD machine(s)                  |
|rdsh_count                                      |string |Si             |                    |Number of Virtual machines to deploy                           |
|vm_id                                           |String |Si             |                    |ID of Virtual machines                                         |
|log_analytics_workspace_id                      |String |Si             |                    |Workspace ID of the Log Analytics Workspace to associate the VMs with |   
|log_analytics_workspace_primary_shared_key      |String |Si             |                    |Primary Shared Key of the Log Analytics Workspace to associate the VMs with|
|extension_loganalytics                          |String |Si             |True                |Should Log Analytics agent be attached to all servers          |                     
|domain_joined                                   |String |Si             |True                |Should the machine join a domain                               |
|domain_name                                     |String |Si             |                    |Name of the domain to join                                     |
|oupath                                          |String |Si             |                    |OU path to us during domain join                               |
|hostpool_id                                     |String |Si             |                    |Host Pool Id to Register Session Hosts                         |
|hostpool_name                                   |String |Si             |                    |Host Pool Name to Register Session Hosts                       |
|extension_custom_script                         |String |No             |false               |Should a custom script extension be run on all servers         |
|regtoken                                        |String |Si             |                    |Host Pool Registration Token                                   |
|extensions_custom_command                       |String |No             |                    |Command for the custom script extension to run                 |
|azure_key_vault_resource_group_name             |String |Si             |                    |azure_key_vault_resource_group_name                            |
|azure_key_vault_name                            |String |Si             |                    |azure_key_vault name                                           |
|admindomainpasswordkv_id                        |String |Si             |                    |Id of secret of domain password admin                          |
|admindomainuserkv_id                            |String |Si             |                    |Id of secret of domain user admin                              |
|Depending_Resource_id                           |String |Si             |                    |Identificador del recurso del que depende                      |

|Variable                              |Tipo   |Obligatoria    |Valor por Defecto                                                                           |Descripción                                                    |
|-------------------------------------|:-----:|:-------------:|:------------------------------------------------------------------------------------------:|:-------------------------------------------------------------:|
|artifactslocation                    |String |Si             |"https://wvdportalstorageblob.blob.core.windows.net/galleryartifacts/Configuration.zip"     |Location of WVD Artifacts"              |


Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |

