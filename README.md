# 🚀 Take Home Assignment 1  
## 🌐 Deploy a Static Website on AWS S3 Using Terraform

---

### 📋 Overview

| Section         | Details |
|----------------|---------|
| 🎯 **Objective** | Use Terraform to deploy a static HTML website on AWS S3 — automate bucket creation, static hosting config, public access setup, and file upload. |
| 🧠 **Background** | Amazon S3 supports highly available, low-cost static website hosting. This project automates the setup using infrastructure-as-code with Terraform. |
| 🔧 **Prerequisites** | <ul><li>✅ Terraform CLI</li><li>✅ AWS CLI (configured with S3 access)</li></ul> |

---

### 🛠️ Terraform Commands

| Command | What It Does |
|--------|---------------|
| `terraform init` | Initialize working directory |
| `terraform plan` | Preview resource creation |
| `terraform apply` | Create AWS infrastructure |
| `terraform destroy` | Delete all created resources |

---

### 🌐 Website Deployment

| Step | Action |
|------|--------|
| ✅ | Run `terraform apply` and wait for successful provisioning |
| 🔗 | Copy the `website_endpoint` from the output |
| 🌍 | Paste it in your browser to view the live site |

---

### 🧹 Cleanup

| Command | Purpose |
|---------|---------|
| `terraform destroy` | Clean up AWS resources to avoid unnecessary costs |

---

### 📸 Screenshots

| Description                   | Preview |
|-------------------------------|---------|
| ✅ S3 Bucket Backend     | ![S3 Bucket Config](https://github.com/mayurminfy1/photos/blob/main/ass1/ss2.png?raw=true) |
| 🔗 URL Output (Terraform Apply)| ![URL Output](https://github.com/mayurminfy1/photos/blob/main/Screenshot%202025-06-14%20123929.png?raw=true) |
| 🌍 Live Website in Browser     | ![Website Screenshot](https://github.com/mayurminfy1/photos/blob/main/ass1/ss1.png?raw=true) |
| 🗑️ S3 Bucket Destroyed         | ![S3 Bucket Destroyed](https://github.com/mayurminfy1/photos/blob/main/ass1/ss4.png?raw=true) |


---

### 🔗 Website URL

🌐 **Live Website**:  
[`http://day-2-mayur-s3-bucket.s3-website.ap-south-1.amazonaws.com`](http://day-2-mayur-s3-bucket.s3-website.ap-south-1.amazonaws.com)

---

✅ _This assignment demonstrates infrastructure automation, S3 static hosting, and website deployment using Terraform in a clean, modular structure._


# 🚀 Take Home Assignment 2
## 🧩 Refactor the Web Server into a Reusable Terraform Module

### 📋 Overview
### Section	Details
🎯 Objective	Create and use a local Terraform module to deploy a reusable EC2 web server. Refactor your code to promote DRY (Don't Repeat Yourself) best practices.
🧠 Background	Copy-pasting infra code doesn’t scale! Terraform modules allow you to organize, reuse, and parameterize your infrastructure components—just like functions in code. This project modularizes the EC2 web server deployment.
🔧 Prerequisites	<ul><li>✅ Terraform CLI</li><li>✅ AWS CLI (configured with EC2/VPC access)</li></ul>



### 🛠️ Terraform Commands
### Command-What It Does
terraform init	Initialize Terraform (detects and loads local module)
terraform plan	Preview module instantiation and infra changes
terraform apply	Deploy VPC, subnet, and EC2 via your module
terraform destroy	Remove all provisioned resources



### 🛠️ Terraform Commands

| Command | What It Does |
|--------|---------------|
| `terraform init` | Initialize working directory |
| `terraform plan` | Preview resource creation |
| `terraform apply` | Create AWS infrastructure |
| `terraform destroy` | Delete all created resources |

### Module->ec2_Instance->main.tf

```
  resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  tags                   = var.tags

  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd
              echo "<h1>Deployed via Terraform - day2-mayur</h1>" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
              EOF
}
```





### 📸 Screenshots

| Description                   | Preview |
|-------------------------------|---------|
| ✅ Instance Created     | ![Instance Created](https://github.com/mayurminfy1/photos/blob/main/ass2/ss1.png?raw=true) |
| ✅ Instance Summary     | ![Instance](https://github.com/mayurminfy1/photos/blob/main/ass2/ss2.png?raw=true) |
| 🌍 Web Server in Browser     | ![Website Screenshot](https://github.com/mayurminfy1/photos/blob/main/ass2/ss3.png?raw=true) |
| 🗑️ AWS Services Destroyed         | ![ Destroyed](https://github.com/mayurminfy1/photos/blob/main/ass2/ss5.png?raw=true) |

### 🔗 Website URL

🌐 **Live Website**: 

  [`http//3.109.206.116`](http//3.109.206.116)

✅ This assignment demonstrates Terraform modules for reusable, maintainable AWS infrastructure. You’ve learned to structure, parameterize, and call modules just like functions in your code!


