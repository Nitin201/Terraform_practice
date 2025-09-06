# 🌍 Terraform Practice Examples

This repository contains **Terraform practice projects** to help learn and explore Infrastructure as Code (IaC) on AWS and other cloud platforms.

---

## 📂 Project Structure

terraform-practice-examples/
├── 01-ec2-apache/ # Launch EC2 instance + Apache Web Server
├── 02-s3-static-site/ # (coming soon) Host a static website on S3
├── 03-vpc-basic/ # (coming soon) Create a custom VPC
└── ...

yaml
Copy code

---

## 🚀 Getting Started

### Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured (`aws configure`)
- An AWS account with required IAM permissions

---

## 🛠 Usage

For each example:

1. Go to the project folder (example: `01-ec2-apache`)
   ```bash
   cd 01-ec2-apache
Initialize Terraform

bash
Copy code
terraform init
Validate and plan

bash
Copy code
terraform validate
terraform plan
Apply the configuration

bash
Copy code
terraform apply -auto-approve
When finished, clean up

bash
Copy code
terraform destroy -auto-approve
📌 Examples List
01 - EC2 + Apache (httpd)
Launches an EC2 instance, installs Apache, and serves a sample web page.

02 - S3 Static Website Hosting (coming soon)
Creates an S3 bucket with public access for hosting a static site.

03 - VPC Setup (coming soon)
Creates a custom VPC with subnets, route tables, and internet gateway.
