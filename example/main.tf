module "lxc_containers" {
  source = "github.com/Ngel-Castro/lxc_module?ref=stable"

  # Pass in required variables
    proxmox_host            = var.proxmox_host
    proxmox_token_id        = var.proxmox_token_id
    proxmox_token_secret    = var.proxmox_token_secret
    containers              = var.containers
    environment             = var.environment
}