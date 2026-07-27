# 🛒 ShopEase – Highly Available AWS Web Application Infrastructure

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![EC2](https://img.shields.io/badge/EC2-Running-success)
![ALB](https://img.shields.io/badge/Application_Load_Balancer-Configured-blue)
![Auto Scaling](https://img.shields.io/badge/Auto_Scaling-Enabled-green)
![CloudWatch](https://img.shields.io/badge/CloudWatch-Monitoring-yellow)
![S3](https://img.shields.io/badge/Amazon_S3-Storage-red)

## 📌 Project Overview

**ShopEase** is a beginner-friendly AWS Infrastructure project that demonstrates how to deploy a **highly available and scalable web application** using core AWS services.

The project follows AWS best practices by implementing:

- Custom VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Security Groups
- IAM Roles
- EC2 Auto Scaling
- Application Load Balancer
- Amazon S3
- Amazon CloudWatch

The infrastructure is designed to provide **high availability, scalability, security, and automated provisioning**.

---

# 🏗️ Architecture

> **(Add your AWS Architecture Diagram here)**

```
                    Internet
                        │
              Application Load Balancer
                        │
         ┌──────────────┴──────────────┐
         │                             │
   EC2 Web Server               EC2 Web Server
      (AZ-1)                        (AZ-2)
         │                             │
         └──────────────┬──────────────┘
                        │
               Auto Scaling Group
                        │
      ┌────────────────────────────────┐
      │                                │
 Private Subnet 1              Private Subnet 2
      │                                │
      └────── DB Subnet Group (Prepared) ──────┘

                Amazon S3 Bucket
                CloudWatch Alarm
```

---

# 🎯 Objectives

- Build a secure AWS networking environment
- Deploy multiple EC2 web servers
- Configure an Application Load Balancer
- Implement Auto Scaling for high availability
- Configure monitoring using CloudWatch
- Store project assets in Amazon S3
- Follow AWS best practices for networking and security

---

# ☁️ AWS Services Used

| Service | Purpose |
|----------|---------|
| Amazon VPC | Custom isolated network |
| Public Subnets | Host web servers |
| Private Subnets | Database subnet planning |
| Internet Gateway | Internet connectivity |
| NAT Gateway | Private subnet outbound internet access |
| Route Tables | Network routing |
| Security Groups | Firewall configuration |
| IAM Role | Secure EC2 permissions |
| EC2 | Web servers |
| Launch Template | Standardized EC2 deployment |
| Auto Scaling Group | Automatic scaling and recovery |
| Application Load Balancer | Traffic distribution |
| Target Group | Health checks |
| Amazon S3 | Asset storage |
| Amazon CloudWatch | Monitoring |

---

# 📁 Project Structure

```
aws-shopease-3tier-webapp/

│
├── README.md
│
├── architecture/
│   └── architecture-diagram.png
│
├── screenshots/
│   ├── 01-vpc
│   ├── 02-subnets
│   ├── 03-routing
│   ├── 04-security-groups
│   ├── 05-ec2
│   ├── 06-load-balancer
│   ├── 07-auto-scaling
│   ├── 08-s3
│   └── 09-cloudwatch
│
├── userdata/
│   └── userdata.sh
│
└── documentation/
    ├── deployment-guide.md
    ├── troubleshooting.md
    └── cleanup-guide.md
```

---

# 🚀 Deployment Steps

## Phase 1 – Networking

- Created Custom VPC
- Created 2 Public Subnets
- Created 2 Private Subnets
- Attached Internet Gateway
- Configured NAT Gateway
- Created Public Route Table
- Created Private Route Table

---

## Phase 2 – Security

- Created Security Groups
- Configured HTTP access
- Configured SSH access
- Attached IAM Role to EC2

---

## Phase 3 – Compute

- Launched two Amazon Linux EC2 instances
- Automated Apache installation using User Data
- Hosted a custom HTML web page

---

## Phase 4 – Load Balancer

- Created Target Group
- Registered EC2 Instances
- Configured Health Checks
- Created Application Load Balancer

Traffic is automatically distributed between both EC2 instances.

---

## Phase 5 – Auto Scaling

- Created Launch Template
- Created Auto Scaling Group
- Configured Desired Capacity = 2
- Configured Minimum Capacity = 2
- Configured Maximum Capacity = 4

The infrastructure automatically replaces unhealthy instances.

---

## Phase 6 – Amazon S3

Created:

- Asset Bucket
- Folder Structure
- Lifecycle Rule
- Versioning

```
assets/
backups/
logs/
```

---

## Phase 7 – Monitoring

Configured CloudWatch Alarm for:

- EC2 CPU Utilization

---

# 🔐 Security Features

- Security Groups
- IAM Role
- Private Subnets
- NAT Gateway
- Health Checks
- Auto Scaling
- Least Privilege Access


# 💡 Challenges Faced

## Target Group Health Check Failed

Resolved by:

- Verifying Security Groups
- Checking Apache Service
- Correcting Health Check Path

---

## AWS Free Plan Limitation

Unable to deploy Amazon RDS because the account reached its free plan resource limit.

To demonstrate the database design, a DB Subnet Group was created instead.

---

# 📚 Skills Demonstrated

- AWS Networking
- VPC Design
- EC2
- IAM
- Linux
- Apache
- User Data
- Load Balancer
- Auto Scaling
- CloudWatch
- Amazon S3
- High Availability
- Infrastructure Design

---

# 📈 Future Improvements

- Amazon RDS
- Route 53
- HTTPS using ACM
- AWS WAF
- Terraform
- CI/CD Pipeline
- Docker
- Kubernetes

---

# 🎓 What I Learned

During this project I gained hands-on experience in:

- Designing AWS networking architecture
- Deploying scalable web applications
- Configuring high availability
- Implementing Auto Scaling
- Managing security using IAM and Security Groups
- Monitoring AWS infrastructure
- Understanding production-ready cloud architecture

---

# 👨‍💻 Author

**Shabin Shareefa**

Cloud & DevOps Engineer

- 🌐 Portfolio: https://shabinshareefa5018.github.io/Portfolio-website/
- 💼 LinkedIn: https://linkedin.com/in/shabinshareefa5018
- 📧 Email: shabinshareefainfo@gmail.com

---

## ⭐ If you found this project useful, consider giving it a star!
