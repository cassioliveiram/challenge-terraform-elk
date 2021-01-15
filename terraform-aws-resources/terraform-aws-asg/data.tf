data "aws_ami" "img-packer" {
  most_recent = true

  filter {
    name   = "name"
    values = ["challenge-pagarme*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["344965637185"] # Cassio Moreira
}

data "aws_caller_identity" "current" {}
