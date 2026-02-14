# AWS 3-Tier Infrastructure Automation using Terraform

![Terraform](https://img.shields.io/badge/Infrastructure-Terraform-623CE4?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/Cloud-Amazon_AWS-FF9900?style=for-the-badge\&logo=amazonaws)
![Architecture](https://img.shields.io/badge/Architecture-3_Tier-blue?style=for-the-badge)
![IaC](https://img.shields.io/badge/Approach-Infrastructure_as_Code-success?style=for-the-badge)

---

# Project Overview

This project demonstrates a **production-ready AWS 3-Tier Architecture deployed using Terraform**, following Infrastructure as Code (IaC) and modular design principles.

The infrastructure is fully automated and consists of networking, security, compute, and database layers built using reusable Terraform modules.

This project reflects real-world DevOps practices used in enterprise cloud environments.

---

# Architecture Diagram

```
                Internet
                   │
                   ▼
            Internet Gateway
                   │
                   ▼
               Public Subnet
                   │
                   ▼
             EC2 Instance
          (Web / App Server)
                   │
                   ▼
             Private Subnet
                   │
                   ▼
               AWS RDS
              (Database)
```

---

# Infrastructure Components

## Networking Layer

* Custom VPC
* Public Subnet
* Private Subnet
* Internet Gateway
* Route Tables

## Security Layer

* Security Groups
* Controlled inbound and outbound access
* Layer-based isolation

## Compute Layer

* EC2 Instance deployment
* Secure SSH access
* Automated provisioning

## Database Layer

* AWS RDS instance
* Private subnet deployment
* Secure backend database

---

# Terraform Modular Structure

This project follows a modular architecture:

```
modules/
│
├── networking/
├── security/
├── compute/
└── database/
```

Each module handles a specific infrastructure component, improving scalability and maintainability.

---

# Project Structure

```
aws-3tier-terraform/
│
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
│
├── modules/
│   ├── networking/
│   ├── security/
│   ├── compute/
│   └── database/
│
├── scripts/
│
├── .gitignore
└── README.md
```

---

# Deployment Steps

## Initialize Terraform

```
terraform init
```

Initializes Terraform and downloads required providers.

---

## Preview Infrastructure

```
terraform plan
```

Shows execution plan before deployment.

---

## Deploy Infrastructure

```
terraform apply
```

Creates AWS infrastructure automatically.

---

## Destroy Infrastructure

```
terraform destroy
```

Removes all resources safely.

---

# Key DevOps Skills Demonstrated

Infrastructure as Code (IaC)
Terraform modular architecture
AWS cloud infrastructure automation
EC2 provisioning
AWS RDS deployment
Secure VPC networking
Cloud security best practices
Infrastructure lifecycle management

---

# Real-World Use Case

This architecture is commonly used in:

* Enterprise cloud applications
* SaaS platforms
* Production web applications
* DevOps automation pipelines
* Cloud-native systems

---

# Deployment Result

Successfully provisioned:

* VPC
* Subnets
* Security Groups
* EC2 Instance
* AWS RDS Database

Using fully automated Terraform configuration.

---

# Author

Karanam Krishna Bhuvan
DevOps Engineer | Terraform | AWS | Cloud Automation

GitHub: https://github.com/Krishnabhuvan

---



