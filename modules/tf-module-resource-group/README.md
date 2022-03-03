# Virtual Network Gateway
El modulo crea un un Resource Group.

## Variables de Entrada. Nomenclatura
Para crear el nombre del grupo de recursos se necesitan las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Company            |String |No             |wz                 |Nombre de la compañia                                          |
|CloudProvider      |String |No             |az                 |Nomenclatura: Compañia. Valores: aw, az, gc, oc                |
|Environment        |String |No             |dev                |Nomenclatura: Proveedor Cloud. Valores: dev, prod, uat         |
|Region             |String |Si             |euwe               |Región al que pertenece el recurso                             |
|Service            |String |Si             |                   |Nombre del servicio al que pertenece el recurso                |
|Instance           |String |Si             |                   |Numero de instancia del recurso                                |


## Variables de Entrada. Recurso
Variables especificas para la creación del grupo de recursos.

|Variable                      |Tipo   |Obligatoria |Valor por Defecto  |Descripción                                                    |
|------------------------------|:-----:|:----------:|:-----------------:|:-------------------------------------------------------------:|
|ResourceGroupName             |String |Si          |                   |Grupo de recursos donde se crea la VNET                        |
|Depending_Resource_id         |String |Si          |Null               |Identificador del recurso del que depende                      |

## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |
