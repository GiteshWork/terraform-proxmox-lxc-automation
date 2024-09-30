variable "proxmox_host" {
  description = "The Proxmox host where the LXC will be created"
  type        = string
  default     = "pve1" # Example value, adjust based on your Proxmox environment
}

variable "template_name" {
  description = "LXC OS template name"
  type        = string
  default     = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
}

variable "lxc_ip" {
  description = "The IP address for the LXC container"
  type        = string
}

variable "gateway" {
  description = "The gateway IP address for the LXC container"
  type        = string
  default     = "192.168.0.1"
}

variable "password" {
  description = "Set the password for the container"
  type        = string
 }

variable "container_name" {
  description = "Set the name for the container"
  type        = string
 }