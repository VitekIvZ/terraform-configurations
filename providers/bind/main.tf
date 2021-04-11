resource "dns_a_record_set" "test_1803" {
    zone = "my.vizlab.com."
    name = "test-1803"
    addresses = [
        "192.168.1.99",
    ]
    ttl = 300
}

resource "dns_a_record_set" "test2_1803" {
  zone = local.domain
  name = var.a_record
  addresses = var.ip
  ttl = 300
}

//resource "null_resource" "simple" {
//  count = 2
//}

//output "simple" {
//  value = null_resource.simple
//}


