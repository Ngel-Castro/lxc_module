terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }

}

provider "proxmox" {
  pm_api_url              = var.proxmox_host
  pm_api_token_id         = var.proxmox_token_id
  pm_api_token_secret     = var.proxmox_token_secret
  pm_tls_insecure         = true
  pm_debug                = true
}

resource "proxmox_lxc" "container" {
  for_each = { for idx, container in var.containers : idx => container }
  
  vmid          = each.value.vmid
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
    ip     = each.value.ip
    gw   = each.value.gw
  }
  tags = "${var.environment};${each.value.tags}"

}