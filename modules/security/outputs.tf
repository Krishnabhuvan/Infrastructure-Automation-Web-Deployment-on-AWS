output "web_sg_id" {
  value = aws_security_group.web_sg.id
}

output "app_sg_id" {
  value = aws_security_group.app_sg.id
}

output "db_sg_id" {
  value = aws_security_group.db_sg.id
}
output "public_alb_arn" {
  value = aws_lb.public_alb.arn
}

output "internal_alb_arn" {
  value = aws_lb.internal_alb.arn
}
output "public_alb_dns" {
  value = aws_lb.public_alb.dns_name
}

output "internal_alb_dns" {
  value = aws_lb.internal_alb.dns_name
}
