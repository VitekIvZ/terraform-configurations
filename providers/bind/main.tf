// locals {
//  minions = ["bob", "kevin", "stewart"]
//}
//resource "null_resource" "minions" {
//  for_each = toset(local.minions)
//  triggers = {
//    name = each.value
// }
//}
//output "minions" {
//  value = null_resource.minions
//}

//locals {
//  names = ["bob", "kevin", "stewart", "devops"]
//}
//resource "null_resource" "names" {
//  count = length(local.names)
//  triggers = {
//    name = local.names[count.index]
//  }
//}
//output "names" {
//  value = null_resource.names
//}

resource "dns_a_record_set" "test_1803" {
  zone = "my.vizlab.com."
  name = "test-1803"
  addresses = [
    "192.168.1.99",
  ]
  ttl = 300
}

/*# Add a group
resource "gitlab_group" "sample_group" {
    name = "example"
    path = "example"
    description = "An example group"
}

# Add a project to the group - example/example
resource "gitlab_project" "sample_group_project" {
    name = "example"
    namespace_id = gitlab_group.sample_group.id
}


resource "gitlab_user" "user" {
  name             = "User Foo"
  username         = "user"
  password         = "usergitlab"
  email            = "z-vi@i.ua"
  is_admin         = true
  projects_limit   = 4
  can_create_group = false
  is_external      = true
  reset_password   = false
}*/


//resource "dns_txt_record_set" "google" {
//  zone = "example.com."
//  txt = [
//    "google-site-verification=...",
//  ]
//  ttl = 300
//}

//resource "dns_a_record_set" "test2_1803" {
//  zone = local.domain
//  name = var.a_record
//  addresses = var.ip
//  ttl = 300
//}

//resource "null_resource" "simple" {
//  count = 2
//}

//output "simple" {
//  value = null_resource.simple
//}


