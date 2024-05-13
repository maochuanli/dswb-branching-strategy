resource "local_file" "example" {
  content  = "This is an example file created by ${var.name} ${var.secret}."
  filename = "example.txt"
}

output "name" {
  value = var.name
}
