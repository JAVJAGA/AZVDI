variable "hostpool_id" {
  type       = string
  description = "ID of HostPool  where deploy Desktop App Group"
}

variable "workspace_id"{
    type = string
    description = "Id of Workspace create"
}

variable "deskappgroup_id"{
    type = string
    description = "Id of Desktop Application Group create"
}

variable "wslog_analytics_id" {
  description = "ID of the Log Analytics"
}