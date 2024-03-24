data "template_file" "init" {
    template = file("lab20_tp_module/templates/metadata.tpl.yml")
    vars = {
        my_ip = var.my_ip
        name= var.guest_name
    }

}