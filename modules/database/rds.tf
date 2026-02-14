resource "aws_db_instance" "mysql" {
  identifier = "app-mysql"

  engine         = "mysql"
  instance_class = "db.t3.micro"

  allocated_storage = 20

  multi_az = true

  username = "admin"
  password = "Admin123!"

  vpc_security_group_ids = [var.db_sg_id]

  db_subnet_group_name = aws_db_subnet_group.db_subnets.name

  skip_final_snapshot = true
}
