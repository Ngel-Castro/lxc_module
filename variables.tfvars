containers = [
    { 
        name = "container-1", 
        target_node = "proxmox", 
        storage = "Kingstone-data",
        storage_size = "10G",
        full_clone   = true
        template_name = "samsung-ssd:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
        network_bridge = "vmbr0"
        memory = 2048
        cores  = 2
    },
    { 
        name = "container-1", 
        target_node = "proxmox", 
        storage = "Kingstone-data",
        storage_size = "10G",
        full_clone   = true
        template_name = "samsung-ssd:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
        network_bridge = "vmbr0"
        memory = 2048
        cores  = 2
    }
]
environment       = "dev"