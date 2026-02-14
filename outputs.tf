output "frontend_url" {
  value = module.security.public_alb_dns
}

output "backend_url" {
  value = module.security.internal_alb_dns
}

output "db_endpoint" {
  value = module.database.db_endpoint
}
