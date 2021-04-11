provider "dns" {
    version = "~> 3.0"
    update {
        server  =   "192.168.206.129"
        key_name = "terr-key."
        key_algorithm = "hmac-md5"
        key_secret = "gJrbGvHtyob4zwAdzkSDPw=="
        //key_algorithm = "hmac-sha256"
        //key_secret = "y3G6kvYy25JQYUxKdvuae30xD5uG0RooivUPDUh2MLc="
        
    }
}