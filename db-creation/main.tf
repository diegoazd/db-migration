provider "aws" {
  region = local.region
}

locals {
  name   = "postgresql-oauthdb"
  region = "us-east-1"
  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = "postgres"
  engine_version       = var.engine_version
  instance_class       = "db.t2.micro"
  name                 = "oauthdb"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.postgres12"
  storage_type         = var.storage_type
  skip_final_snapshot  = true
  publicly_accessible  = true
  storage_encrypted    = var.storage_encrypted
  vpc_security_group_ids = ["sg-0a1a3817cab583615"]
}
