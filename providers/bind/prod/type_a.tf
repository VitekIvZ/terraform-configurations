locals {
    a = "blabla"
    txt = [
        "v=spf1 include:_spf.microsoft.com ~all"
    ]
}

module "a-record" {
    source = "../../modules"
    a_record = var.a_record
    zone = var.zone
    ip = var.ip
    txt_name = local.txt
}