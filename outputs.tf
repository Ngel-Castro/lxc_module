output "container_vmids" {
  value = { for k, v in proxmox_lxc.container : k => v.vmid }
}

output "container_ips" {
  value = { for k, v in proxmox_lxc.container : k => v.network[0].ip }
}