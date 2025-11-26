variable "vms" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    nic                  = string
    location             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    vnet_name            = string
    subnet_name          = string
    backend_subnet_name  = string
    public_ip_address_id = list(string)
  }))
}
