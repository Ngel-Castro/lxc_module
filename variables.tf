variable "containers" {
  type = list(object({
    name = string
    target_node = string
    storage = string
    storage_size = string
    full_clone = bool
    template_name = string
    network_bridge = string
    memory = number
    cores  = number

  }))
}
variable "proxmox_host" {
  description = "Value for proxmox cluster/server"
  type        = string
  default     = "https://192.168.0.131:8006/api2/json"
}

variable "proxmox_token_id" {
  description = "Proxmox Token user@pam!token_id"
  type        = string
  default     = "terraform-prov@pve!terraform"
}

variable "proxmox_token_secret" {
  description = "Proxmox token secret"
  type        = string
}

variable "environment" {
  description = "on which enviroment the project will be running"
  type        = string
  default     = "dev"
}

variable "default_password" {
  description = "Default LXC container password"
  type        = string
  default     = "changeme"
}
