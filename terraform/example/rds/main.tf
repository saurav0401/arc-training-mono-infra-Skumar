module "rds" {
  source              = "../../../modules/rds"
  region              = var.region
  db_name             = var.db_name
  db_identifier       = var.db_identifier
  subnet_ids          = data.aws_subnets.poc_arc_subnets.ids
  vpc_id              = data.aws_vpc.vpc_arc_poc.id
  db_engine           = var.db_engine
  db_engine_version   = var.db_engine_version
  master_username     = var.master_username
  db_port             = var.db_port
  db_instance_class   = var.db_instance_class
  allocated_storage   = var.db_storage_size
  ingress_rules       = var.ingress_rules
  egress_rules        = var.egress_rules
  multi_az            = var.multi_az
  skip_final_snapshot = var.skip_final_snapshot
  tags                = var.tags
}
