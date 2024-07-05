variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "kms_keychain_name" {
  type = string
}

variable "kms_key_name" {
  type = string
}

variable "kms_keys" {
  type = map(object({
    kms_keychain_name = string
    kms_key_name      = string
  }))
}

variable "service_accounts" {
  type = map(object({
    name         = string
    display_name = string
  }))
}

# variable "iam_roles" {
#   type = map(object({
#     service_account_name = string
#     roles_attached       = list(string)
#   }))
# }

variable "iam_roles" {
  type = map(list(string))
}