# Terraform Proxmox LXC Automation

This repository provides Terraform configurations to automate the creation and management of LXC containers within a Proxmox environment. By leveraging Infrastructure as Code (IaC) principles, it ensures consistent and efficient deployment of containerized applications.

## Features

- **Automated LXC Container Provisioning**: Define and deploy LXC containers with specified configurations using Terraform.
- **Customizable Resource Allocation**: Set parameters for CPU, memory, storage, and network interfaces to tailor containers to specific needs.
- **Scalable Deployments**: Manage multiple containers efficiently, facilitating scalable application deployments.
- **Version Control**: Track infrastructure changes over time, enabling easy rollbacks and collaborative development.

## Prerequisites

- **Proxmox VE**: A running instance of Proxmox Virtual Environment.
- **Terraform**: Installed on your local machine.
- **Proxmox API Access**: Ensure API access is enabled on your Proxmox server.

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/GiteshWork/terraform-proxmox-lxc-automation.git
   cd terraform-proxmox-lxc-automation
