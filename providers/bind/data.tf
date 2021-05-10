data "dns_a_record_set" "google" {
  host = "google.com"
}

data "vault_generic_secret" "bind" {
  path = "kv2/bind"
}