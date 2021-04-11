terraform {
    required_version = "0.14.10"
    //backend "consul" {
    //    address = "http://192.168.206.133:8500"
    //    scheme = "http"
    //    path = "1803/dev/bind/terraform.tfstate"
    //    lock = true
    //}

    required_providers {
        dns = {
            source = "hashicorp/dns"
            version = "3.0.0"
        }
    }
}