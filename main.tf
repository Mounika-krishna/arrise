module "ec2" {
  source = "./modules/ec2"

  ami_id = var.ami_id
  instances = var.instances

}

module "iam" {
  source = "./modules/iam"

  cli_users = var.cli_users
  full_users = var.full_users
}
