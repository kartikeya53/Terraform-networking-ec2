aws_region         = "ap-south-1"
project_name       = "terraform-nginx"
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
instance_type      = "t3.micro"

# Example: "203.0.113.10/32"
# Replace with your actual public IPv4 address.
my_ip = ""