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