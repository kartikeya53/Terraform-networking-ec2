output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "route_table_id" {
  value = aws_route_table.public.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "nginx_url" {
  value = "http://${aws_instance.web.public_ip}"
}