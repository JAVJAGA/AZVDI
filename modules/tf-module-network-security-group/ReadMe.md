# Modulos Terraform Network Security Group
Los siguientes módulos permite el despliegue de recursos de tipo Network Security Group.

## Variables de Entrada. Nomenclatura

Para configurar la VNET es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto|Descripción                                                    |
|-------------------|:-----:|:-------------:|:---------------:|:-------------------------------------------------------------:|
|Company            |String |No             |wz               |Nombre de la compañia                                          |
|CloudProvider      |String |No             |az               |Nomenclatura: Compañia. Valores: aw, az, gc, oc                |
|Environment        |String |No             |dev              |Nomenclatura: Proveedor Cloud. Valores: dev, prod, uat         |
|Region             |String |Si             |euwe             |Región al que pertenece el recurso                             |
|Service            |String |Si             |                 |Nombre del servicio al que pertenece el recurso                |
|Instance           |String |Si             |                 |Numero de instancia del recurso                                |
|Resource           |String |Si             |                 |Abreviatura del recurso                                        |

## Variables de Entrada. Recurso

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                  |String |No             |Autocompletada     |Se autocompleta automaticamente con variables de nomenclatura  |
|Resource_Group_Name   |String |Si             |                   |Resource Group donde crear el NSG                              |
|tags                  |Object |Si             |                   |Etiquetas del recurso                                          |


## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |