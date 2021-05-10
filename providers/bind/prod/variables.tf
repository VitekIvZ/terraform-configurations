variable "a_record" {
    description = "DNS A Record"
    type = string
}

variable "zone" {
    description = "DNS zone"
    type = string
}

variable "ip" {
    description = "IP"
    type = list(string)
    default = []
}

variable "vault_address" {
    version  = "~> 2.19.1"
  address    = "http://192.168.206.135:8200"
}

