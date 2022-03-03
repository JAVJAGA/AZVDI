 # workspace-deskappgroup-association Variables

variable "workspace_id"{
    type = string
    description = "Id of Workspace create"
}

variable "deskappgroup_id"{
    type = string
    description = "Id of Desktop Application Group create"
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}