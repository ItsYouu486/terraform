# 1. Appel du module Réseau
module "network" {
  source      = "../modules/network" # Chemin vers ton dossier network
  name_prefix = var.name_prefix
  common_tags = var.common_tags
  az_a        = var.az_a
  az_b        = var.az_b
  # Les autres variables comme vpc_cidr utiliseront leurs valeurs par défaut 
  # définies dans le variables.tf du module si tu ne les mets pas ici.
}

# 2. Appel du module Instances (Compute)
module "compute" {
  source             = "../modules/instance" # Chemin vers ton dossier instance
  
  # C'EST ICI QUE LE CABLAGE SE FAIT :
  # On donne au module instance les IDs générés par le module network
  subnet_a_id        = module.network.subnet_a_id
  subnet_b_id        = module.network.subnet_b_id
  security_group_id  = module.network.instance_sg_id
  
  # Variables de configuration
  instance_a_name    = "web-srv-a"
  instance_b_name    = "web-srv-b"
  instance_type      = var.instance_type
  ebs_volume_size_gb = 8
  ebs_volume_type    = "gp3"
  az_a               = var.az_a
  az_b               = var.az_b
  common_tags        = var.common_tags
}