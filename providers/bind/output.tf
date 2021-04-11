//output "record_name" {
//    value = module.a-record.record_name
//}

//output "zone_name" {
//    value = module.a-record.dns_zone
//}

output "google_addrs" {
  value = "${join(",", data.dns_a_record_set.google.addrs)}"
}

output "google_addrs_" {
  value = data.dns_a_record_set.google.addrs
}