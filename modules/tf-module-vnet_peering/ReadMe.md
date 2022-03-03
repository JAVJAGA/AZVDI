# Vnet Peering
El modulo crea una conexión tipo 'peering' entre dos VNets.

## Variables de Entrada. Nomenclatura
Para configurar la VNET es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Company            |String |No             |wz                 |Nombre de la compañía                                          |
|CloudProvider      |String |No             |az                 |Nomenclatura: Compañía. Valores: aw, az, gc, oc                |
|Environment        |String |No             |dev                |Nomenclatura: Proveedor Cloud. Valores: dev, prod, uat         |
|Region             |String |Si             |euwe               |Región al que pertenece el recurso                             |
|Service            |String |Si             |                   |Nombre del servicio al que pertenece el recurso                |
|Instance           |String |Si             |                   |Número de instancia del recurso                                |
|Resource           |String |Si             |                   |Abreviatura del recurso                                        |

## Variables de Entrada. Recurso

|Variable                  |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|--------------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                      |String |No             |Autocompletada     |Nombre del peering                                             |
|ResourceGroupName         |String |Si             |                   |Grupo de recursos donde se crea la VNET                        |
|VirtualNetworkName        |String |No             |                   |Nombre de la VNET Origen                                       |
|RemoteVirtualNetworkId    |String |Si             |Null               |Nombre de la VNET Destino                                      |
|AllowVirtualNetworkAccess |String |Si             |Null               |Permitir acceso desde la VNET remota                           |
|AllowForwardedTraffic     |String |Si             |Null               |Permitir reenvio de trafico entre VNETS                        |
|AllowGatewayTransit       |String |Si             |Null               |Permite el uso del gateway local                               |
|UseRemoteGateway          |String |Si             |Null               |Nombre de la VNET Destino                                      |
|Depending_Resource_id     |String |Si             |Null               |Identifier of the resource on which it depends                 |

## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
