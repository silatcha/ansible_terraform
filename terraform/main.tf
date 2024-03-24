
module "lab20_tp_module_app" {
  source     = "./lab20_tp_module"
  my_ip      = "10.10.10.200"
  guest_name = "cytech-lab20-TP-APP"
}

module "lab20_tp_module_bdd" {
  source     = "./lab20_tp_module"
  my_ip      = "10.10.10.201"
  guest_name = "cytech-lab20-TP-BDD"
}
