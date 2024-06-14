output "container_vmids" {
  value = { for k, v in proxmox_lxc.container : k => v.vmid }
}