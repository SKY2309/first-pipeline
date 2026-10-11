data "azurerm_subnet" "subnet" {
    for_each = var.vm
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_network_interface" "nic" {
    for_each = var.vm
   name                 = each.value.nicname
  resource_group_name  = each.value.resource_group_name
}