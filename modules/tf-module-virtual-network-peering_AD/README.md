# virtual-network-peering with network where is AD
El modulo crea un recurso tipo virtual-network-peering en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la virtual-network-peering es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|


## Variables de Entrada. Recurso

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                  |String |No             |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|ResourceGroupName     |String |Si             |                   |Grupo de recursos donde se crea la Subnet                      |
|Azure_Location        |String |No             |westeurope         |Localización de los recursos.                                  |
|hubresourcegroupname  |String |Si             |                   |Name of the resource group where the  vnet hub resource is deployed |    
|vnethub_name          |String |Si             |                   |Name of the VNET Hub                                           |    
|vnet_name             |String |Si             |		   |Nombre de la Vnet donde esta  Azure VDI                        |
|vnet_id               |String |Si             |                   |Id de la Vnet donde esta  Azure VD                             |
|vnethub_id            |String |Si             |                   |Id of the VNET Hub                                             |




## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |

