remote_state {
  backend = "consul"
  config = {
    address = "http://192.168.206.133:8500"
    scheme = "http"
    path   = "${path_relative_to_include()}/terraform.tfstate"
    lock   = true
    }
}

inputs = {
    aws_region = "eu-central-1"
    terraform_remote_state_file_name = "terraform.tfstate"
    #vault_address = "https://vault-f.my.vizlab.com:8200"
}

