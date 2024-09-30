terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
  pm_api_url           = "https://192.168.0.200:8006/api2/json"
  pm_api_token_id      = "i@pam!new_token"
  pm_api_token_secret  = "99c6c81e-b3b2-4c45-90da-0cba81394b26"
  pm_tls_insecure      = true
}

# LXC container creation
resource "proxmox_lxc" "test_container" {
  count        = 1
  target_node  = var.proxmox_host
  ostemplate   = var.template_name   # Example: "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  password     = var.password        # Root password for the LXC container
  cores        = 2
  memory       = 2048
  swap         = 512
  
  rootfs {
    storage = "local-lvm"    # Specify the storage
    size   = "10G"           # Root filesystem size
  }

  network {
    name    = "eth0"
    bridge  = "vmbr0"
    ip      = "${var.lxc_ip}/24"
    gw      = var.gateway
  }

  hostname = var.container_name

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
}
