# azure/management/bootstrap/variables.tf

variable "management_subscription_id" {
  description = "Azure management subscription ID"
  type        = string
  sensitive   = true
}

variable "storage_account_name" {
  description = "Globally unique storage account name for Terraform state"
  type        = string
}