resource "aws_db_subnet_group" "db_subnets" {
  name = "db-subnets"

  subnet_ids = [
    var.db_subnet1,
    var.db_subnet2
  ]
}
