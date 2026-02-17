variable "instance_a_name" {
  description = "Nom de l'instance en AZ #1."
  type        = string
}

variable "instance_b_name" {
  description = "Nom de l'instance en AZ #2."
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2."
  type        = string
  default     = "t3.micro"
}

variable "ebs_volume_size_gb" {
  description = "Taille des disques EBS additionnels (en Go)."
  type        = number
  default     = 8
  validation {
    condition     = var.ebs_volume_size_gb >= 1
    error_message = "ebs_volume_size_gb doit être >= 1."
  }
}

variable "ebs_volume_type" {
  description = "Type des volumes EBS."
  type        = string
  default     = "gp3"
}

variable "subnet_a_id" {
  description = "ID du premier subnet (provient du module network)"
  type        = string
}

variable "subnet_b_id" {
  description = "ID du second subnet (provient du module network)"
  type        = string
}

variable "security_group_id" {
  description = "ID du SG créé dans le module network"
  type        = string
}

variable "az_a" {
  description = "Zone de disponibilité A (ex: eu-west-3a)"
  type        = string
}

variable "az_b" {
  description = "Zone de disponibilité B (ex: eu-west-3b)"
  type        = string
}

variable "common_tags" {
  description = "Tags à appliquer aux ressources"
  type        = map(string)
}