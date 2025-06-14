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
