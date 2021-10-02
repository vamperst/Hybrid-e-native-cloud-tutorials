variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}

variable "project" {
  default = "lab-fiap"
}

variable "nomeGrupo" {
  default = "teste"
}

variable "env" {
  default = "prod"
}