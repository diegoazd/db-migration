variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = string
  default     = 5
}

variable "storage_type" {
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD). The default is 'io1' if iops is specified, 'standard' if not. Note that this behaviour is different from the AWS web console, where the default is 'gp2'."
  type        = string
  default     = "standard"
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
  default     = false
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "12.7"
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
  default     = "postgres"
}

variable "password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  type        = string
  default     = "postgres.192837"
}
