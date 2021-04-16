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

variable "ttl" {
    description = "TTL"
    type = string
    default = 300
}

variable "txt_name" {
    description = "TXT"
    type = list(string)
    default = []
}