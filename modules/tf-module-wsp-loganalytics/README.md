# Modulo log Analytics
El modulo crea un recurso tipo log Analytics en el resource group que se especifique.

## Variables de Entrada. Nomenclatura
Para configurar el log Analytics es necesario completar las siguientes variables:

|Variable           |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|-------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
                                  |

## Variables de Entrada. Recurso

|Variable                       |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------         |:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|ResourceGroupName              |String |Si             |                   |Resource group Name where deploy the resource                  |
|Azure_Location                 |String |No             |westeurope         |Azure location                                                 |
|log_analytics_name	        |String |Si             |                   |Name of the log Analytics                                      |        
|tags                           |Object |Si             |                   |Resource´s labels                                              |




## Variables de Salida

|Variable              |Tipo   |Obligatoria    |Valor por Defecto  |Descripción                                                    |
|----------------------|:-----:|:-------------:|:-----------------:|:-------------------------------------------------------------:|
|Id                    |       |               |                   |Id of resource                                                 |
|wsloganalytics_id     |       |               |                   |Id of workspace of log analytics                               |
|primary_shared_key    |       |               |                   |Key of workspace of log analytics                               
