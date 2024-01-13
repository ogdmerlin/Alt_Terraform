# Terraform AWS Instance Deployment Documentation

## Overview

This Terraform project simplifies the deployment of AWS EC2 instances across multiple regions and availability zones, with a focus on reusability and configurability. Users can easily customize Ansible playbooks and Docker containers to suit their application and infrastructure requirements. This documentation provides comprehensive guidance on setting up and using the project effectively.

## Usage Instructions

Prerequisites
Terraform installed.
AWS account with configured credentials.
Familiarity with Ansible and Docker for script customization.

## Project Structure

Outlined below is the project structure, detailing the purpose of each directory and file:

```
terraform/
│
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
│
├── modules/
│   ├── ec2_instance/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── ansible/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── docker_container/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf
├── variables.tf
├── outputs.tf
└── scripts/
    ├── ansible_playbook.yml
    └── Dockerfile

```

- environments/: Contains environment-specific configurations for dev, staging, and prod.
- modules/: Houses the Terraform modules for EC2 instances, Ansible, and Docker containers.
- main.tf: The main Terraform entry point.
- outputs.tf: Specifies Terraform outputs.
- scripts/: Contains scripts for Ansible playbook and Dockerfile.

## Terraform Configuration

The Terraform configuration is located in the modules/ec2_instance directory. The main.tf file contains the configuration for the AWS provider, the AWS instance, and the Ansible and Docker provisioners. The variables.tf file contains the variables used in the main.tf file. The outputs.tf file contains the outputs for the Terraform configuration.

## Terraform Environments

The Terraform environments are located in the environments directory. Each environment contains a main.tf file that references the Terraform configuration in the modules/ec2_instance directory. The main.tf file also contains the variables for the Terraform configuration.

## Ansible and Docker Scripts

The Ansible and Docker scripts are located in the scripts directory. The ansible_script.sh file contains the script for installing Ansible on the AWS instance. The docker_script.sh file contains the script for installing Docker on the AWS instance.

## Deployment Instructions

To deploy the Terraform configuration, follow the steps below:

1. Clone the repository.
2. Navigate to the environments directory.
3. Create a new directory for the environment.
4. Copy the main.tf file from an existing environment to the new environment directory.
5. Customize the variables in the main.tf file.
6. Run the following commands:

```
terraform init
terraform plan
terraform apply
```

7. When prompted, enter yes to confirm the deployment.
8. When the deployment is complete, the outputs will be displayed.
9. To destroy the deployment, run the following command:

```
terraform destroy
```

10. When prompted, enter yes to confirm the destruction.

## Best Practices

Always run terraform plan before applying changes.
Keep the AWS credentials secure and do not hardcode them in configurations.
Modularize resources for reusability and maintainability.

## Troubleshooting

Common issues and resolutions related to Terraform and AWS.

## Contributing

Guidelines for contributing to the project, including coding standards, pull request process, and issue reporting.

## References

[Terraform](https://https://www.terraform.io/docs/index.html)

[EC2](https://aws.amazon.com/pm/ec2/)

[AWS](https://aws.amazon.com)

[Ansible](https://docs.ansible.com/ansible/latest/index.html)

[Docker](https://docs.docker.com/)
