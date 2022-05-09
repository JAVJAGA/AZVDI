# Roles
The module creates a resource type Roles, assigns an existing Azure AD group to a Desktop Application Group in the resource group you specify, assigns also the"Storage File Data SMB Share Contributor" permission in the Storage account you specify and “Desktop Virtualization User”  roll to this group.
## Variables de Entrada. Nomenclatura
Para configurar los Roles es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
                                  |

## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Description                                                                                               |
|----------------------         |:-----:|:-------------:|:-----------------:|:--------------------------------------------------------------------------------------------------------:|
|principal_ids                  |String |Si             |                   |"The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN"   |                |
|dag_id                         |String |Si             |                   |The Id of the desktop application group where the role should be assigned    
|storage_account_id             |String |Si             |                   |The Id of the Storage Account where the role should be assigned                                           |
|role_definition                |String |Si             |                   |Definition Role to Active directory group                                                                 |
|display_name_group	            |String |Si             |                   |display name of active directory security group what must access to resources                             |    
|Depending_Resource_id          |String |Si             |Null               |Id del recurso del que depende el despliegue
                                                              |



## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |
                          
                           |

