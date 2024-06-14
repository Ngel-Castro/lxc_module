## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_lxc.container](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc1/docs/resources/lxc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_containers"></a> [containers](#input\_containers) | n/a | <pre>list(object({<br>    name = string<br>    target_node = string<br>    storage = string<br>    storage_size = string<br>    full_clone = bool<br>    template_name = string<br>    network_bridge = string<br>    memory = number<br>    cores  = number<br><br>  }))</pre> | n/a | yes |
| <a name="input_default_password"></a> [default\_password](#input\_default\_password) | Default LXC container password | `string` | `"changeme"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | on which enviroment the project will be running | `string` | `"dev"` | no |
| <a name="input_proxmox_host"></a> [proxmox\_host](#input\_proxmox\_host) | Value for proxmox cluster/server | `string` | `"https://192.168.0.131:8006/api2/json"` | no |
| <a name="input_proxmox_token_id"></a> [proxmox\_token\_id](#input\_proxmox\_token\_id) | Proxmox Token user@pam!token\_id | `string` | `"terraform-prov@pve!terraform"` | no |
| <a name="input_proxmox_token_secret"></a> [proxmox\_token\_secret](#input\_proxmox\_token\_secret) | Proxmox token secret | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_vmids"></a> [container\_vmids](#output\_container\_vmids) | n/a |
