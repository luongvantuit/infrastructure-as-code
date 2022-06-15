# AMI OS Ubuntu architecture ARM64
data "aws_ami" "tf_ami_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true

  filter {
    name   = "architecture"
    values = [var.architecture]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-22.04-arm64-server-*"]
  }
}


data "aws_ami" "tf_ami_linux" {

}
