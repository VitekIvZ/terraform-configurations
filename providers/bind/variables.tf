//variable "vault_address" {}

variable "a_record" {
  description = "DNS A Record"
  type        = string
}

variable "zone" {
  description = "DNS zone"
  type        = string
}

variable "ip" {
  description = "IP"
  type        = list(string)
  default     = []
}

variable "minio_region" {
  description = "Default MINIO region"
  default     = "eu-central-1"
}

variable "minio_server" {
  description = "Default MINIO host and port"
  default = "192.168.206.133:9000"
}

variable "minio_access_key" {
  description = "MINIO user"
  default = "minioadmin"
}

variable "minio_secret_key" {
  description = "MINIO secret user"
  default = "minioadmin"
}