# Private endpoint
El modulo crea un recurso tipo private endpoint de acceso al Storage, una Zona Privada DNS.
Para configurar la  Private endpoint es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|


## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                                 |
|----------------------         |:-----:|:-------------:|:-----------------:|:--------------------------------------------------------------------------:|
|Azure_Location                 |String |No             |westeurope         |Localización de los recursos.                                               |
|storage_rg_name	        |String |Si             |                   |Resource Group Storage                                                      |    
|account.storage.id             |String |Si             |                   |Id account Storage                                                     |                                                            |
|subnet_id                      |String |Si             |                   |Id of the subnet where create the private endpoint                          |
|pendpoint_name                 |String |Si             |                   |Name of the Private Endpoint                                                |
|private_dns_zone_name          |String |Si             |                   |Name of the Private Dns Zone                                                |
|private-dns-zone-group         |String |Si             |                   |Name of the Private Dns Group                                                |
|privateserviceconnection_name  |String |Si             |                   |private service connection name                                             |




## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
                          
                           |

