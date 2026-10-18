resource "aws_instance" "web" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = file("${path.module}/user_data.sh")

  user_data_replace_on_change = true

  depends_on = [
    aws_route_table_association.public
  ]

  tags = {
    Name = "${var.project_name}-ec2"
  }
}