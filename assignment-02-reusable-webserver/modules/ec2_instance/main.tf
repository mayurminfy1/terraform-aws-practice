resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  tags                   = var.tags


  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              echo "<h1>This is working</h1>" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
            EOF

}

