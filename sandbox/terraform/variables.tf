variable "tf_state_sa_name" {
  type        = string
  description = "Storage account name for storing .tfstate"
  //  validation {
  //    condition     = can(regex("^[a-zA-Z0-9]{4,20}$", var.tf_state_sa_name))
  //    error_message = "Value must be 4-20 characters long and only contain alphanumeric characters."
  //  }
}
