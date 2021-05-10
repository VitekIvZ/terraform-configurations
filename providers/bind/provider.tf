provider "dns" {
  #version = "~> 3.1.0"
  update {
    server        = "192.168.206.129"
    key_name      = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret = data.vault_generic_secret.bind.data["key"]
    //key_secret    = "gJrbGvHtyob4zwAdzkSDPw=="
    //key_algorithm = "hmac-sha256"
    //key_secret = "y3G6kvYy25JQYUxKdvuae30xD5uG0RooivUPDUh2MLc="

  }
}

# Configure the GitLab Provider
provider "gitlab" {
  #version  = ">= 3.6.0"
  base_url = "http://192.168.206.135/api/v4/"
  token    = "zrkPb3GxosoBKjNUHiH1"
}

# Configure the Minio Provider
provider "minio" {
  minio_server = var.minio_server
  minio_region = var.minio_region
  minio_access_key = var.minio_access_key
  minio_secret_key = var.minio_secret_key
}

# Configure the Consul provider
provider "consul" {
  address    = "192.168.206.133:8500"
  scheme = "http"
  datacenter = "vizlab"
}

provider "vault" {
  #version  = "~> 2.19.1"
  address    = "http://192.168.206.135:8200"
}