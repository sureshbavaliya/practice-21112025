variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    zones               = list(string)
    domain_name_label   = string
    tags                = map(string)
  }))
}