variable "instance_type" {
  description = "Type d'instance EC2."
  type        = string
  default     = "t3.micro"
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

variable "name_prefix" {
  description = "Tags à appliquer aux ressources"
  type        = string
}

variable "tags_owner" {
  description = "Tag Owner à appliquer partout."
  type        = string
  default     = "John Doe"
}

variable "tags_course" {
  description = "Tag Course à appliquer partout."
  type        = string
  default     = "TerraformAWS"
}


variable "deployment_role" {
  description = "ARN du role de deployment."
  type        = string
}

variable "identity_center_region" {
  description = "Home region IAM Identity Center."
  type        = string
  default     = "eu-central-1"
}

variable "aws_region" {
  description = "Région AWS cible."
  type        = string
  default     = "eu-west-3" # Paris
}

variable "project_name" {
  description = "Nom logique du projet (sert de préfixe de nommage)."
  type        = string
  default     = "atelier01"
  validation {
    condition     = length(var.project_name) >= 3
    error_message = "project_name doit faire au moins 3 caractères."
  }
}