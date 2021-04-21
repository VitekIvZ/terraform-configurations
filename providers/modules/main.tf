provider "dns" {
  version = ">= 3.0.0"
  update {
    server        = "192.168.206.129"
    key_name      = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret    = "gJrbGvHtyob4zwAdzkSDPw=="
    //key_algorithm = "hmac-sha256"
    //key_secret = "y3G6kvYy25JQYUxKdvuae30xD5uG0RooivUPDUh2MLc="

  }
}

resource "dns_a_record_set" "this" {
    zone = var.zone
    name = var.a_record
    addresses = var.ip
    ttl = var.ttl
}

resource "dns_txt_record_set" "this" {
    zone = var.zone
    txt = var.txt_name
    ttl = var.ttl
}

