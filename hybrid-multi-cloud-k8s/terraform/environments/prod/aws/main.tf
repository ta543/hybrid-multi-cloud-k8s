provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "${var.project_name}-app-server-${count.index}"
  }
}

resource "aws_db_instance" "prod_db" {
  allocated_storage    = var.db_size
  storage_type         = "gp2"
  engine               = var.db_engine
  instance_class       = var.db_instance_class
  name                 = "prodDB"
  username             = "admin"
  password             = "securepassword"
  parameter_group_name = "default.${var.db_engine}"

  tags = {
    Name = "${var.project_name}-database"
  }
}
