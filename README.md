# alb_terraform
## Project Overview
This project demonstrates the creation and management of AWS infrastructure using Terraform, with a focus on deploying an Application Load Balancer (ALB) and its supporting resources. The codebase is modular, following best practices for reusability and maintainability.

## Directory Structure

- `envs/` — Environment-specific configurations (e.g., `dev`).
  - Contains main Terraform files for each environment, including variables, outputs, and user data scripts.
- `modules/` — Reusable Terraform modules for different AWS resources:
  - `alb/` — Application Load Balancer
  - `ec2/` — EC2 instances
  - `route/` — Route tables
  - `sg/` — Security groups
  - `subnet/` — Subnets
  - `vpc/` — Virtual Private Cloud

## Key Learnings

- **Terraform Modules:** Modularizing infrastructure code for reusability and clarity.
- **Environment Separation:** Using environment folders to manage different deployments (e.g., dev, prod).
- **Variables and Outputs:** Leveraging variables for configuration flexibility and outputs for resource referencing.
- **User Data Scripts:** Automating EC2 instance initialization with shell scripts.
- **Resource Dependencies:** Managing dependencies between resources using Terraform's built-in mechanisms.
- **State Management:** Understanding the importance of Terraform state files and remote backends (not shown here, but recommended for production).

## How to Use

1. Navigate to the desired environment folder (e.g., `envs/dev`).
2. Initialize Terraform:
   ```
   terraform init
   ```
3. Review and apply the plan:
   ```
   terraform plan
   terraform apply
   ```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured (via environment variables or AWS CLI)

## Notes

- This project is for learning and demonstration purposes.
---
*Created as a hands-on exercise to learn Terraform and AWS infrastructure as code.*