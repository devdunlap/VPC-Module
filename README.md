### Objective
Write a Terraform configuration that accomplishes the following:

1. Utilizes Terraform modules to create an AWS VPC.
2. Inside this VPC, deploy an EC2 instance and an RDS instance.
3. Use outputs to display essential information about the deployed resources, such as IPs and DNS names.
4. Implement remote state management using AWS S3 and state locking with DynamoDB.
5. Make sure to use variables to make your modules reusable.
6. Use locals to define any constant values or computations that are reused within the configuration.
  
### Constraints
- Your Terraform configuration should adhere to best practices like proper formatting, commenting, and resource naming conventions.
- Ensure your code is idempotent, meaning running it multiple times won't cause changes unless the actual configuration has changed.
  
### Bonus
- Implement a basic level of security by using AWS security groups to restrict traffic.
- Use Terraform workspaces to manage different environments (e.g., staging, production).

### Deliverables
- The Terraform configuration files.
- A README explaining:
  - How to use the modules.
  - Any prerequisites or dependencies.
  - How to initialize and apply the configuration.
  - Any assumptions or design choices made.
# Terraform AWS Infrastructure

This Terraform configuration deploys an AWS VPC, an EC2 instance, and an RDS instance using Terraform modules.

## Prerequisites

- Terraform v1.0.0 or higher
- AWS credentials configured in your environment
- S3 bucket and DynamoDB table for remote state management

## Usage

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd terraform


### Initialize Terraform:
terraform init

### Create a Plan:
terraform plan

### Apply the Configuration:
terraform apply


Variables
Refer to the variables.tf files within each module to see the configurable options.

Outputs
After applying the configuration, Terraform will output the public IP of the EC2 instance and the RDS endpoint.

Environments
You can use Terraform workspaces to manage different environments like staging and production:

terraform workspace new staging
terraform workspace select staging


Assumptions
The .dockerignore file is properly configured to exclude unnecessary files.
The EC2 and RDS instances are set up to run in the same region.
Security
Basic security is implemented using AWS Security Groups to restrict traffic to the EC2 and RDS instances.

Design Choices
Modules: The configuration is modular to promote reusability.
Remote State: Managed using S3 and DynamoDB for state locking.
Idempotency: The configuration is designed to be idempotent, ensuring consistent results across multiple run.
