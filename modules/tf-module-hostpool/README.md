# Host Pool
El modulo crea un recurso tipo Host Pool en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la Host Pool es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|


## Variables de Entrada. Recurso

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                  |String |No             |	           |Name of Hostpool 						   |
|ResourceGroupName     |String |Si             |                   |Grupo de recursos donde se crea el Hostpool                    |
|Azure_Location        |String |No             |westeurope         |Localización de los recursos.                                  |
|tags                  |Object |Si             |                   |Etiquetas del recurso                                          |
|prefix		       |String |Si             |                   |Prefijo del nombre de las máquinas WVD                         |
|rdsh_count 	       |String |Si             |                   |Número de maquinas a desplegar en cada Hostpool                |
|type 		       |String |Si             |Pooled             |Tipo de HostPool a desplegar, puede ser Personal o Pooled      |
|load_balancer_type    |String |Si             |                   |Tipo de balanceador de carga a aplicar en el HostPool, puede ser "BreadthFirst" or "DepthFirst"         |
|pooledhpmaxsessions   |String |Si             |                   |Límite máximo de sesiones           |
|Depending_Resource_id |String |Si             |Null               |Identificador del recurso del que depende                      |



## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             |
|regtoken              |       |               |                   |Token de registro al Hostpool                                  |

