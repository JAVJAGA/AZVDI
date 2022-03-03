
resource "azurerm_network_interface_security_group_association" "nsgassociation" {
  count                     = "${var.rdsh_count}"
  network_interface_id      = element(azurerm_network_interface.rdsh.*.id, count.index)
  network_security_group_id = var.networksecuritygroup_id 
  depends_on = [azurerm_virtual_machine.windows_vm]
}


resource "azurerm_network_interface" "rdsh" {
  count                     = "${var.rdsh_count}"
  name                      = "${var.prefix}${format("%003d", count.index + 1)}-nic"
  location                  = var.azure_location
  resource_group_name       = var.resourcegroupname
  

  ip_configuration {
    name                          = "nic${format("%003d", count.index + 1)}_config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "dynamic"
}
  }





resource "azurerm_virtual_machine" "windows_vm" {
  count                 = "${var.rdsh_count}"
  name                  = "${var.prefix}${format("%003d", count.index + 1)}"
  location              = var.azure_location
  resource_group_name   = var.resourcegroupname
  network_interface_ids = ["${azurerm_network_interface.rdsh.*.id[count.index]}"]
  vm_size               = "${var.vm_size}"
  # Zone info
  zones = [2]
  license_type = "Windows_Client"
  depends_on = [azurerm_network_interface.rdsh]
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    id        = "${var.vm_image_id != "" ? var.vm_image_id : ""}"
    publisher = "${var.vm_image_id == "" ? var.vm_publisher : ""}"
    offer     = "${var.vm_image_id == "" ? var.vm_offer : ""}"
    sku       = "${var.vm_image_id == "" ? var.vm_sku : ""}"
    version   = "${var.vm_image_id == "" ? var.vm_version : ""}"
  }

  storage_os_disk {
    name              = "${lower(var.prefix)}${format("%003d", count.index + 1)}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
    
  }

  os_profile {
    computer_name  = "${var.prefix}${format("%003d", count.index + 1)}"
    admin_password = data.azurerm_key_vault_secret.localadminpasswordkvsecret.value
    admin_username = data.azurerm_key_vault_secret.localadminuserkvsecret.value
  }

  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = true
    timezone                  = "${var.vm_timezone}"
  }

 
}


  data "azurerm_key_vault" "kv" {
  name                = var.azure_key_vault_name
  resource_group_name = var.azure_key_vault_resource_group_name
}

  data "azurerm_key_vault_secret" "localadminpasswordkvsecret" {
  name         = "localadminpassword"
  key_vault_id = var.localadminpasswordkv_id
}

  data "azurerm_key_vault_secret" "localadminuserkvsecret" {
  name         = "localadminuser"
  key_vault_id = var.localadminuserkv_id
  }
  
