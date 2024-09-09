variable "name" {
  default = "Hello"
}

variable "secret" {
  default = "HelloSecret"
}

variable "workspaces" {
  type = map(object({
    host          = string
    client_id     = string
    client_secret = string
  }))
}