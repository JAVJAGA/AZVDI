# Modulos Terraform para Azure Networking

Los siguientes módulos permite el despliegue de recursos de tipo 'Networking'.

## Virtual Network
El modulo crea un recurso tipo Virtual network en el resource group que se especifique.

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

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                  |String |No             |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|SubnetName            |String |Si             |                   |Nombre de la subnet                                            |
|Subnet_Address_Space  |String |No             |10.10.0.0/24       |Espacio de direcciones CIDR                                    |
|tags                  |Object |Si             |                   |Etiquetas del recurso                                          |
|Depending_Resource_id |String |Si             |Null               |Identificador del recurso del que depende                      |


## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |

