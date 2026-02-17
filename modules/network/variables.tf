variable "vpc_name" {
  description = "Nom du VPC."
  type        = string
  default     = "vpc-atelier01"
}

variable "vpc_cidr" {
  description = "CIDR du VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_a_cidr" {
  description = "CIDR du subnet en AZ #1."
  type        = string
  default     = "10.10.1.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR du subnet en AZ #2."
  type        = string
  default     = "10.10.2.0/24"
}

variable "common_tags" {
  description = "Tags à appliquer aux ressources"
  type        = map(string)
}

variable "name_prefix" {
  description = "Tags à appliquer aux ressources"
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

variable "allowed_ssh_cidr" {
  description = "CIDR autorisé à se connecter en SSH (laboratoire)."
  type        = string
  default     = "0.0.0.0/0"
}