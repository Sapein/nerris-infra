variable "vultr_api_key" {
  description = "API Key for Vultr"
  type = string
  sensitive = true
}

variable "vultr_ssh_key" {
  description = "SSH Key for a vultur server"
  type = string
  sensitive = true
}
