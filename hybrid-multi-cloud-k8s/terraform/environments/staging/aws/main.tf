provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "${var.project_name}-staging-app-server-${count.index}"
  }
}
