module "rds-db-vpc--" {
  source = "./modules/rds-db-vpc+sng+pg"
  vpcA-cidr_block = var.vpc-cidr
  vpc-region = var.prov-region
  db-sn-ids = [module.rds-db-vpc--.tf_SN-APr.id, module.rds-db-vpc--.tf_SN-BPu.id]
}

module "rds-db-sg-" {
  source = "./modules/rds-db-sg"
  sg-vpc = module.rds-db-vpc--.tf-Avpc.id
  ingr-sg = var.sg-ingr-pts
  ingr-cidrs = var.sg-ingr-cidr
}

module "rds-db-i" {
  count = var.r-cnt
  depends_on = [module.rds-db-sg-.A-sg, module.rds-db-vpc--]
  source = "./modules/rds-db-i"
  db-AZ  = module.rds-db-vpc--.tf_SN-APr.availability_zone
  db-sng-n = module.rds-db-vpc--.rds-db-sng.name
  p-word = var.db-pw
  rds-pg-n = module.rds-db-vpc--.rds-db-pg.name
  u-name = var.db-un
  db-sg-ids = [module.rds-db-sg-.A-sg.id]
  db-i-tag = "rds-db-i-xp-${count.index+1}"
}