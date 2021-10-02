
provider "aws" {
  region = "us-east-1"
}
variable "cont"{
    default = 5
}

resource "aws_sqs_queue" "terraform_queue" {
  count = var.cont
  name = "fila-criada-${count.index}"
  tags = {
    Environment = "production"
  }
}