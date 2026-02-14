# Frontend VM
resource "aws_instance" "frontend" {
  ami           = "ami-0c2af51e265bd5e0e"
  instance_type = "t2.micro"

  key_name = "epic-key"

  subnet_id       = var.web_subnet1
  security_groups = [var.web_sg_id]

  user_data = file("${path.root}/scripts/frontend.sh")
}


# Backend VM – PRIVATE
resource "aws_instance" "backend" {
  ami           = "ami-0c2af51e265bd5e0e"
  instance_type = "t2.micro"

  key_name = "epic-key"

  subnet_id       = var.app_subnet1
  security_groups = [var.app_sg_id]


  associate_public_ip_address = false

  user_data = file("${path.root}/scripts/backend.sh")

  
}

resource "aws_lb_target_group_attachment" "frontend" {
  target_group_arn = aws_lb_target_group.frontend_tg.arn
  target_id        = aws_instance.frontend.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "backend" {
  target_group_arn = aws_lb_target_group.backend_tg.arn
  target_id        = aws_instance.backend.id
  port             = 3001
}
