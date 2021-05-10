resource "vault_policy" "test_t" {
  name = "prod"

  policy = <<EOT
path "kv2/prod/ua/database" {
  capabilities = ["update"]
}
EOT
}

resource "vault_token" "test_tt" {
  #role_name = "app"

  policies = ["prod"]

  renewable = true
  ttl = "24h"

  renew_min_lease = 43200
  renew_increment = 86400

  #gpg_key = "keybase:my_username"
}