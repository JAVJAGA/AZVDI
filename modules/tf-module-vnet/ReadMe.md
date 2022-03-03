# Virtual Network Gateway
El modulo crea un recurso tipo Virtual Network Gateway en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la VNET es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Company            |String |No             |wz                 |Nombre de la compañia                                          |
|CloudProvider      |String |No             |az                 |Nomenclatura: Compañia. Valores: aw, az, gc, oc                |
|Environment        |String |No             |dev                |Nomenclatura: Proveedor Cloud. Valores: dev, prod, uat         |
|Region             |String |Si             |euwe               |Región al que pertenece el recurso                             |
|Service            |String |Si             |                   |Nombre del servicio al que pertenece el recurso                |
|Instance           |String |Si             |                   |Numero de instancia del recurso                                |
|Resource           |String |Si             |                   |Abreviatura del recurso                                        |

## Variables de Entrada. Recurso

|Variable                      |Tipo   |Obligatoria |Valor por Defecto  |Descripción                                                    |
|------------------------------|:-----:|:----------:|:-----------------:|:-------------------------------------------------------------:|
|Name                          |String |No          |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|ResourceGroupName             |String |Si          |                   |Grupo de recursos donde se crea la VNET                        |
|Azure_Location                |String |No          |westeurope         |Localización de los recursos.                                  |
|tags                          |Object |Si          |                   |Etiquetas del recurso                                          |
|Type                          |String |No          |VPN                |Type of Virtual Network Gateway: VPN or Express route          |
|vpn_type                      |String |No          |RouteBased         |Routing Type                                                   |
|active-active                 |String |No          |false              |If true make an active-active configuration                    |
|enable_bgp                    |String |No          |false              |Enable or disable BGP in the Virtual Network Gateway           |
|sku                           |String |No          |VpnGw1             |Configuration of size and capacity                             |
|IPConfigName                  |String |Si          |                   |Name of the IP config used in the resource                     |
|public_ip_address_id          |String |Si          |                   |Id of the public IP                                            |
|Subnet_id                     |String |Si          |                   |The ID of the gateway subnet                                   |
|Private_ip_address_allocation |String |No          |Dynamic            |Type of IP assignment                                          |
|Depending_Resource_id         |String |Si          |Null               |Identifier of the resource on which it depends                 |

## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |
|sku                   |       |               |                   |Configuration of size and capacity                             |