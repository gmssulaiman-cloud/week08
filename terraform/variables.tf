variable "resource_group_name" {
  type        = string
  description = "Azure resource group name"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "australiaeast"
}

variable "acr_name" {
  type        = string
  description = "Azure Container Registry name"
}

variable "storage_account_name" {
  type        = string
  description = "Azure Storage Account name"
}

variable "aks_cluster_name" {
  type        = string
  description = "Azure Kubernetes Service cluster name"
}