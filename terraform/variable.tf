variable "my_ip" {
  type        = string
  description = "ip adress data"
  default     = "10.10.10.200"

}


variable "guest_name" {
  type        = string
  description = "name of my terraform"
  default     = "guest_name"

}


variable "esxi_password" {
    type = string
    description = "esxi password"
    
}


variable "esxi_username" {
    type = string
    description = "esxi username"
    
}