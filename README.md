# Terraform Multi-Environment Infrastructure Setup (Azure)

This project demonstrates how to implement Infrastructure as Code (IaC) using Terraform to provision multiple environments on Azure Cloud. The environments supported are:

- Development (`dev`)
- Quality Assurance (`qa`)
- Production (`prod`)

---

## 📁 Project Structure

```
📦 TASK 7-Task 8 - Minh Nguyen
└─ └─ infras/
   ├─ backend/
   │  ├─ backend_resources/
   │  │  ├─ main.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ backend_dev.tfvars/
   │  ├─ backend_prod.tfvars/
   │  ├─ backend_qa.tfvars/
   │  └─ backend.tf/
   ├─ core/
   │  ├─ app_service/
   │  │  ├─ app_service.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ app_service_plan/
   │  │  ├─ app_service_plan.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ key_vault/
   │  │  ├─ key_vault.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ resource_group/
   │  │  ├─ resource_group.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ storage_account/
   │  │  ├─ storage_account.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ storage_container/
   │  │  ├─ storage_container.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  ├─ subnet/
   │  │  ├─ subnet.tf/
   │  │  ├─ output.tf/
   │  │  └─ variables.tf/
   │  └─ vnet/
   │     ├─ vnet.tf/
   │     ├─ output.tf/
   │     └─ variables.tf/
   ├─ module/
   │  └─ azure_vnet/
   │     ├─ main.tf/
   │     ├─ output.tf/
   │     └─ variables.tf/
   ├─ dev.tfvars/
   ├─ qa.tfvars/
   ├─ prod.tfvars/
   ├─ main.tf/
   ├─ provider.tf/
   └─ variables.tf/
```

---

## 00 - Backend Configuration (Remote State)

To enable team collaboration and ensure safe, consistent infrastructure deployments, this project uses **remote state storage**.

Resources required for remote state:

- Resource Group
- Storage Account
- Storage Container

These are provisioned via the module at `modules/backend_resources`. Run the following commands to deploy them:

```bash
cd backend/backend_resources
terraform init
terraform plan
terraform apply
```
You can customize resource names and location in backend/backend_resources/variables.tf.

Once the backend infrastructure is ready, configure Terraform backend for a specific environment using:
```
# Example: Initialize backend for dev environment
terraform init -backend-config="../../backend/backend-dev.tfvars"
terraform plan
terraform apply
```

## 01 - Deploying Azure Resources
This project includes reusable and modular Terraform configurations for the following Azure services:

* Resource Group

* App Service Plan

* App Service

* Virtual Network (VNet)

* Subnet

* Storage Account

* Key Vault

Make sure to define and modify values for each environment inside the corresponding .tfvars files for proper inter-resource connection and deployment consistency.

### Notes
All resources are modularized and can be reused across environments.

Variable values for each environment should be kept consistent and declared in a central .tfvars file.

Use terraform workspace (optional) for additional isolation if needed.



