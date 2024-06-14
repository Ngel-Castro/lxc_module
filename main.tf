resource "proxmox_lxc" "container" {
  for_each = { for idx, container in var.containers : idx => container }
  
  hostname      = "${each.value.name}-${var.environment}"
  target_node   = each.value.target_node
  ostemplate    = each.value.template_name
  password      = var.default_password
  swap          = 512
  memory        = each.value.memory
  cores          = each.value.cores
  unprivileged  = each.value.unprivileged
  rootfs {
    storage = each.value.storage
    size    = each.value.storage_size
  }
  start         = true

  network {
    name   = "eth0"
    bridge = each.value.network_bridge
    ip     = "dhcp"
  }
  tags = "${var.environment};${each.value.tags}"
}