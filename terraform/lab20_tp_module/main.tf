



resource "esxi_guest" "cytech-lab20-TP" {

    guest_name = var.guest_name
    disk_store = var.disk_store
    boot_disk_size= var.boot_disk_size
    memsize=var.memsize
    numvcpus=var.numvcpus
    network_interfaces {
        virtual_network = "VLAN FORMATION 1"
    }
    clone_from_vm      = var.clone_from_vm
    

    guestinfo = {
        "metadata.encoding" = "gzip+base64"
        "metadata"          = base64gzip(data.template_file.init.rendered)
        
    }

     provisioner "local-exec" {
    command = "echo ${self.ip_address} >> private_ips.txt"
  }


    
}



locals {
    instance_ids = var.instance_ids
    hostname = var.hostname
}



