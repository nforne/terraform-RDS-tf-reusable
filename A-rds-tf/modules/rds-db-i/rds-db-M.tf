resource "aws_db_instance" "rds-db-i" {

  identifier = var.db-i-tag

  engine            = "mysql"
  engine_version    = "8.0.20"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  max_allocated_storage = 100
  storage_type      = "gp2"
  storage_encrypted = false
  kms_key_id        = ""
  license_model     = ""

  name              = null
  username             = var.u-name
  password             = var.p-word
  port                                = 3306
  domain                              = ""
  domain_iam_role_name                = ""
  iam_database_authentication_enabled = false

  replicate_source_db = ""

  snapshot_identifier = ""

  vpc_security_group_ids = var.db-sg-ids
  db_subnet_group_name   = var.db-sng-n
  parameter_group_name   = var.rds-pg-n
  option_group_name      = ""

  availability_zone   = var.db-AZ
  multi_az            = false
  iops                = 0
  publicly_accessible = true
  monitoring_interval = 0
  monitoring_role_arn = ""

  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = false
  apply_immediately           = false
  maintenance_window          = ""
  skip_final_snapshot         = true
  copy_tags_to_snapshot       = false
  final_snapshot_identifier   = var.db-i-tag

  performance_insights_enabled          = false
  performance_insights_retention_period = 0

  backup_retention_period = 0
  backup_window           = ""

  character_set_name = ""

  ca_cert_identifier = "rds-ca-2019"

  enabled_cloudwatch_logs_exports = []

  deletion_protection      = false
  delete_automated_backups = true

  timeouts {
    create = null
    delete = null
    update = null
  }
   tags = {
      Name = var.db-i-tag
    }
}


