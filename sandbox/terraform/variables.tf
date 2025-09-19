variable "tf_state_sa_name" {
  type        = string
  description = "Storage account name for storing the '.tfstate' files."
}
variable "subscription_id" {
  type        = string
  description = "Subscription where the infrastructure is being deployed to."
}
