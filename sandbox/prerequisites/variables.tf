variable "tf_state_sa_name" {
  type        = string
  description = "Storage account name for storing the '.tfstate' files."
}
variable "subscription_id" {
  type        = string
  description = "Subscription where the infrastructure is being deployed to."
  validation {
    condition     = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", var.subscription_id))
    error_message = "Must be a valid GUID."
  }
}
