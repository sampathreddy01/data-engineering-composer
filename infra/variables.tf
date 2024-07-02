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

variable "dataproc_sa" {
  type = string
}

variable "service_accounts" {
  type = map(object({
    name         = string
    display_name = string
  }))
}