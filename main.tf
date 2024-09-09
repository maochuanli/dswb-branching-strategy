resource "local_file" "example" {
  content  = "This is an example file created by ${var.name} ${var.secret}."
  filename = "example.txt"
}

output "name" {
  value = var.name
}

# Loop over each workspace and create a provider for each
provider "databricks" {
  for_each      = var.workspaces
  alias         = each.key
  host          = each.value.host
  client_id     = each.value.client_id
  client_secret = each.value.client_secret
}

