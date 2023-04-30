terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.14.1"
    }
  }
}

# Configure the Vultr Provider
provider "vultr" {
  api_key = var.vultr_api_key 
  rate_limit = 100
  retry_limit = 3
}

resource "vultr_instance" "nerris" {
  plan = var.vultr_server
  region = var.vultr_region
  os_id = var.vultr_osid
  hostname = var.vultr_hostname
  backups = "disabled"
  ssh_key_ids = [vultr_ssh_key.main_ssh_key.id]
  enable_ipv6 = true
}

resource "vultr_ssh_key" "main_ssh_key" {
  name = "main_ssh_key"
  ssh_key = var.vultr_ssh_key
}
