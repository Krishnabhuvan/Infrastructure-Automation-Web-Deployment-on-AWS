output "vpc_id" {
  value = aws_vpc.main.id
}

output "web_subnet1" {
  value = aws_subnet.web1.id
}

output "web_subnet2" {
  value = aws_subnet.web2.id
}

output "app_subnet1" {
  value = aws_subnet.app1.id
}

output "app_subnet2" {
  value = aws_subnet.app2.id
}

output "db_subnet1" {
  value = aws_subnet.db1.id
}

output "db_subnet2" {
  value = aws_subnet.db2.id
}
