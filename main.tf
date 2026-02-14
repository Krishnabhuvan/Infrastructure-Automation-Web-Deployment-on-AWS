module "networking" {
  source = "./modules/networking"
}

module "security" {
  source = "./modules/security"

  vpc_id = module.networking.vpc_id

  web_subnet1 = module.networking.web_subnet1
  web_subnet2 = module.networking.web_subnet2

  app_subnet1 = module.networking.app_subnet1
  app_subnet2 = module.networking.app_subnet2
}

module "compute" {
  source = "./modules/compute"

  vpc_id = module.networking.vpc_id

  web_subnet1 = module.networking.web_subnet1
  app_subnet1 = module.networking.app_subnet1

  web_sg_id = module.security.web_sg_id
  app_sg_id = module.security.app_sg_id

  public_alb_arn  = module.security.public_alb_arn
  internal_alb_arn = module.security.internal_alb_arn
}

module "database" {
  source = "./modules/database"

  db_sg_id = module.security.db_sg_id

  db_subnet1 = module.networking.db_subnet1
  db_subnet2 = module.networking.db_subnet2
}
