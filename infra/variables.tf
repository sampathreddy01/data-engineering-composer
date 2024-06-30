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

variable "service_account_usage" {
  type = list(string)
}

variable "service_account_displayname" {
  type = list(string)
}