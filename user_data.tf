#!/bin/bash
set -eux

dnf update -y
dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Nginx</title>
</head>
<body>
    <h1>Hello from AWS EC2!</h1>
    <p>Nginx deployed using Terraform.</p>
    <p>VPC, Subnet, Route Table and Security Group configured.</p>
</body>
</html>
EOF