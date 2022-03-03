# workspace-deskappgroup-association
El modulo crea un recurso que asocia el Workspacecon el Desktop application group en el resource group  que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la workspace-deskappgroup-association es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
                                  |

## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------         |:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|ResourceGroupName              |String |Si             |                   |Grupo de recursos donde se crea el Hostpool                    |
|Azure_Location                 |String |No             |westeurope         |Localización de los recursos.                                  |
|workspace_id                   |String |Si             |                   |Id del Workspace                                               |
|deskappgroup_id	        |String |Si             |                   |Id de Desktop Application Group  |    
|Depending_Resource_id          |String |Si             |Null               |Id del recurso del que depende el despliegue                   |



## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
                          
                           

