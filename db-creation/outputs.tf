locals {
  db_instance_address               = element(concat(aws_db_instance.default.*.address, aws_db_instance.default.*.address, [""]), 0)
  db_instance_arn                   = element(concat(aws_db_instance.default.*.arn, aws_db_instance.default.*.arn, [""]), 0)
  db_instance_availability_zone     = element(concat(aws_db_instance.default.*.availability_zone, aws_db_instance.default.*.availability_zone, [""]), 0)
  db_instance_endpoint              = element(concat(aws_db_instance.default.*.endpoint, aws_db_instance.default.*.endpoint, [""]), 0)
  db_instance_hosted_zone_id        = element(concat(aws_db_instance.default.*.hosted_zone_id, aws_db_instance.default.*.hosted_zone_id, [""]), 0)
  db_instance_id                    = element(concat(aws_db_instance.default.*.id, aws_db_instance.default.*.id, [""]), 0)
  db_instance_resource_id           = element(concat(aws_db_instance.default.*.resource_id, aws_db_instance.default.*.resource_id, [""]), 0)
  db_instance_status                = element(concat(aws_db_instance.default.*.status, aws_db_instance.default.*.status, [""]), 0)
  db_instance_name                  = element(concat(aws_db_instance.default.*.name, aws_db_instance.default.*.name, [""]), 0)
  db_instance_username              = element(concat(aws_db_instance.default.*.username, aws_db_instance.default.*.username, [""]), 0)
  db_instance_port                  = element(concat(aws_db_instance.default.*.port, aws_db_instance.default.*.port, [""]), 0)
  db_instance_ca_cert_identifier    = element(concat(aws_db_instance.default.*.ca_cert_identifier, aws_db_instance.default.*.ca_cert_identifier, [""]), 0)
  db_instance_domain                = element(concat(aws_db_instance.default.*.domain, [""]), 0)
  db_instance_domain_iam_role_name  = element(concat(aws_db_instance.default.*.domain_iam_role_name, [""]), 0)
  db_instance_master_password       = element(concat(aws_db_instance.default.*.password, aws_db_instance.default.*.password, [""]), 0)
}

output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = local.db_instance_address
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = local.db_instance_arn
}

output "db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = local.db_instance_availability_zone
}

output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = local.db_instance_endpoint
}

output "db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = local.db_instance_hosted_zone_id
}

output "db_instance_id" {
  description = "The RDS instance ID"
  value       = local.db_instance_id
}

output "db_instance_resource_id" {
  description = "The RDS Resource ID of default instance"
  value       = local.db_instance_resource_id
}

output "db_instance_status" {
  description = "The RDS instance status"
  value       = local.db_instance_status
}

output "db_instance_name" {
  description = "The database name"
  value       = local.db_instance_name
}

output "db_instance_username" {
  description = "The master username for the database"
  value       = local.db_instance_username
  sensitive   = true
}

output "db_instance_port" {
  description = "The database port"
  value       = local.db_instance_port
}

output "db_instance_ca_cert_identifier" {
  description = "Specifies the identifier of the CA certificate for the DB instance"
  value       = local.db_instance_ca_cert_identifier
}
