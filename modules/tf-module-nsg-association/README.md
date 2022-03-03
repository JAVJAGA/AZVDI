# network-security-group-association
El modulo crea un recurso tipo network-security-group-association en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar la network-security-group-association es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|
## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Name                           |String |Si             |                   |Nombre de la regla  |
|subnet_id                      |String |Si             |                   |Id de la Subnet donde se asocia el NSG                     |
|networksecuritygroup_id        |String |Si             |                   |Id of the security group                   |





## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id del recurso                                                 |


