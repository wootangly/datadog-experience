data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = "true"

  filter {
    name = "name"
    # values = ["ubuntu/images/hvm-ssd/ubuntu-hirsute-21.04-amd64-server*"]
    values = ["ubuntu/images/hvm-ssd/ubuntu-groovy-20.10-amd64-server*"]
    # values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server*"]
  }
}

data "aws_ami" "centos" {
  owners      = ["125523088429"]
  most_recent = "true"

  filter {
    name   = "name"
    values = ["CentOS 7.9*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "aws_ami" "debian" {
  owners      = ["136693071363"]
  most_recent = "true"

  filter {
    name   = "name"
    values = ["debian-11-arm64-*"]
  }
}

data "aws_ami" "rehl" {
  owners      = ["309956199498"]
  most_recent = "true"

  filter {
    name   = "name"
    values = ["RHEL-8.4*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
