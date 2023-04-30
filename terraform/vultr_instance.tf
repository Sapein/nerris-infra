output "vultr_instance_ip" {
  value = [vultr_instance.nerris.main_ip, vultr_instance.nerris.v6_main_ip]
}
