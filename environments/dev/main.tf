module "rgs" {
    source = "../../modules/resource_group"
    rgs = var.rgs
}

module "vnet" {
    depends_on = [ module.rgs ]
    source = "../../modules/vnet"
    vnets = var.vnets
}

module "snet" {
    depends_on = [ module.vnet ]
    source = "../../modules/snet"
    snets = var.snets
}

module "public_ip" {
    depends_on = [ module.rgs ]
    source = "../../modules/public_ip"
    pips = var.pips
}

module "vm" {
    depends_on = [module.snet,module.public_ip]
    source = "../../modules/vm"
    vms = var.vms
}