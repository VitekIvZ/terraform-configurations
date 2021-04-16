provider "dns" {
  version = "~> 3.0"
  update {
    server        = "192.168.206.129"
    key_name      = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret    = "gJrbGvHtyob4zwAdzkSDPw=="
    //key_algorithm = "hmac-sha256"
    //key_secret = "y3G6kvYy25JQYUxKdvuae30xD5uG0RooivUPDUh2MLc="

  }
}

# Configure the GitLab Provider
provider "gitlab" {
  version  = "~> 3.0"
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