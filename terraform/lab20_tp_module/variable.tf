

variable "guest_name" {
    type = string
    description = "name of my terraform"
    default = "cytech-lab20-TP"
    
}

variable "disk_store" {
    type = string
    description = "DATA STORE"
    default =  "datastore1"
    
}


variable "esxi_hostport" {
    type = string
    description = "esxi port"
    default = 22
    
}

variable "esxi_hostname" {
    type = string
    description = "esxi name"
    default =  "vms-formation.adlere.fr"
    
}

variable "esxi_username" {
    type = string
    description = "esxi username"
    default = "root"
    
}

variable "esxi_password" {
    type = string
    description = "esxi password"
    default =  "dry34aqKUJmK"
    
}


variable "my_ip" {
    type = string
    description = "ip adress data"
    default = "10.10.10.200"
    
}

variable "boot_disk_size" {
    type = number
    description = "disk size"
    default = 20480
    
}

variable "memsize" {
    type = number
    description = "memory size"
    default = 1024
    
}


variable "numvcpus" {
    type = number
    description = "number of vcpu"
    default = 1
    
}

variable "clone_from_vm" {
    type = string
    description = "path of file"
    default = "_template-debian"
}



variable "instance_ids" {
    type = string
    description = "id instance"
    default = "VM cytech-lab20"
}

variable "hostname" {
    type = string
    description = "hostname of instance"
    default = "VM cytech-lab20"
}


variable "data_file" {
    type = string
    description = "number of vcpu"
    default = "cloud-config.yml"
}

variable "mapvm" {
    type = map(string)
    description = "map  of vm"
    default = {
        "cytech-lab20-TP-APP":"10.10.10.200",
        "cytech-lab20-TP-BDD":"10.10.10.201",
    }
}
  
   

