# Desktop Application Group
El modulo crea un recurso tipo Desktop Application Group en el resource group y en el Hostpool que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar el Desktop Application Group es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
                                  |

## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------         |:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|ResourceGroupName              |String |Si             |                   |Grupo de recursos donde se crea el Hostpool                    |
|Azure_Location                 |String |No             |westeurope         |Localización de los recursos.                                  |
|tags                           |Object |Si             |                   |Etiquetas del recurso                                          |
|deskappgroup_name	        |String |Si             |                   |Name of the Desktop Application Group                          |        
|type 		                |String |Si             |Desktop            |Tipo de Desktop Application Group a Desplegar                  |
|pooledhpdesktopappfriendlyname |String |Si             |                   |"Friendly Name" para el Desktop Application Group              |
|pooledhpdesktopappdescription  |String |Si             |                   |Descripción del Desktop Application Group                      |
|hostpool_id                    |String |Si             |                   |Id del Hostpool donde ira el Desktok Application Group         |
|Depending_Resource_id          |String |Si             |Null               |Id del recurso del que depende el despliegue                   |



## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
|Name                  |       |               |                   |Nombre del recurso                                             
                           |

