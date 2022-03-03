# Workspace
El modulo crea un recurso tipo Workspace en el resource group  que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la Workspace es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
                                  |

## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------         |:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|ResourceGroupName              |String |Si             |                   |Grupo de recursos donde se crea el Hostpool                    |
|Azure_Location                 |String |No             |westeurope         |Localización de los recursos.                                  |
|tags                           |Object |Si             |                   |Etiquetas del recurso                                          |
|workspace_name		        |String |Si             |                   |Name of Workspace                                              |    
|friendlynameworkspace          |String |Si             |                   |friendlyname que se dara al Workspace                          |
|descriptionworkspace           |String |Si             |                   |descripción que se dara al Workspace                           |
|Depending_Resource_id          |String |Si             |Null               |Id del recurso del que depende el despliegue                   |



## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
                          
                           |

