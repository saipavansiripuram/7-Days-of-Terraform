# Terraform Introduction

## What is Terraform

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It enables users to define and provision a datacenter infrastructure using a high-level configuration language known as Hashicorp Configuration Language (HCL), or optionally JSON.

## Why Terraform

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

Configuration files describe to Terraform the components needed to run a single application or your entire datacenter. Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure. As the configuration changes, Terraform is able to determine what changed and create incremental execution plans which can be applied.


### Provider Superpowers
Terraform's providers are like magical gateways to cloud and infrastructure platforms. With providers for AWS, Azure, Google Cloud, and more, you can seamlessly interact with your chosen realm. Configuration is your key to these gateways.

### Resource 

Resources in Terraform are your building blocks. Whether it's virtual machines, databases, networks, or storage, Terraform can sculpt them all. Each resource is a canvas for your creativity, defined in code.

### Module Magic

Think of modules as spells in your Terraform spellbook. They encapsulate configurations, making them reusable across your mystical infrastructure. Modules can be your creations or borrowed from the Terraform Registry, a treasure trove of community-contributed wonders.

### Configuration

Terraform thrives on configuration files, often donning the .tf cape. These files define your desired infrastructure state, housing providers, resources, variables, and more. The main.tf file, your trusty sidekick, takes the lead, but you can have an ensemble of supporting files.

### Variable Versatility

Variables in Terraform are the chameleons of your code. They adapt to different environments, allowing you to define values outside your code and infuse them when you weave Terraform's magic.

### Output Illumination

Outputs shine as the results of your Terraform sorcery. They reveal information and can pass values to other parts of your enchanting infrastructure.

### State Management

Terraform's state file is your spellbook, containing the current state of your infrastructure. It's essential for Terraform to decipher what's been conjured and what changes await in its mystical updates.

### Plan 

Before Terraform takes action, it offers a glimpse of the future with a plan. The `terraform plan` command foretells the changes Terraform will enact during the apply step.

### Apply 

Terraform's `apply` command brings your code to life. It creates, updates, or banishes resources according to your configuration's spells.

### Workspace Realms

Workspaces in Terraform are like parallel universes, each housing its own configuration and state. They're perfect for managing distinct environments like development, staging, and production, keeping your magic organized and separate.

### Remote Enchantment

Remote backends, such as Amazon S3 or Terraform Cloud, are like secret vaults for your state files, enhancing security and collaboration by keeping your magical records safe beyond your local realm.

## Installation Process

To install Terraform on your machine. The installation process is simple and straightforward. Here are the steps:

1. Visit the official Terraform website ([https://www.terraform.io/](https://www.terraform.io/)).

2. Download the Terraform binary for your operating system.

3. Extract the downloaded archive to a directory in your system's PATH.

4. Verify the installation by running `terraform version` in your terminal. If it responds with the version number, you're ready to cast your first spell.

## Terraform Commands

Terraform is a command-line tool, so you'll be using your terminal or command prompt to interact with it. The commands are simple and easy to learn. Here are the most common ones:

- `terraform init` initializes a working directory containing Terraform configuration files.

- `terraform plan` creates an execution plan.

- `terraform apply` executes the actions proposed in a Terraform plan.

- `terraform destroy` destroys all resources created by Terraform.

- `terraform validate` validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc.

- `terraform fmt` formats the configuration files in a directory to the Terraform coding style.

- `terraform get` downloads and installs modules needed for the configuration in a directory.

- `terraform graph` creates a visual representation of the configuration or execution plan.

- `terraform output` displays the outputs of a Terraform configuration.

- `terraform show` inspects the current state or a saved plan.

- `terraform taint` manually marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply.

- `terraform untaint` manually unmarks a Terraform-managed resource as tainted.

- `terraform workspace` manages workspaces (e.g. `terraform workspace list`).

## Terraform Configuration Files

Terraform configuration files are your spells. They're written in HashiCorp Configuration Language (HCL), a declarative language that describes your desired infrastructure state. The files are usually named `main.tf`, `variables.tf`, and `outputs.tf`, but you can have as many as you want.

### main.tf

The `main.tf` file is the main configuration file. It's where you define your resources, variables, and other settings. It's the only required file in a Terraform configuration.

### variables.tf

The `variables.tf` file is where you define your variables. Variables are like placeholders for your values. They're useful for reusing values across your configuration and keeping sensitive data out of your code.

### outputs.tf

The `outputs.tf` file is where you define your outputs. Outputs are like the return values of your configuration. They're useful for passing information to other parts of your infrastructure.

## Terraform Resources

Resources are the building blocks of your infrastructure. They're the most important element in your Terraform configuration. They're defined in the `main.tf` file using the following syntax:

```hcl

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

```


The above code creates an AWS EC2 instance. The first line defines the resource type, `aws_instance`, and the resource name, `example`. The second line defines the resource arguments, `ami` and `instance_type`. The arguments are used to configure the resource.    

## Terraform Providers

Providers are the gateways to your infrastructure. They're the second most important element in your Terraform configuration. They're defined in the `main.tf` file using the following syntax:
    
```hcl
    provider "aws" {
      region = "us-east-1"
    }
``` 

The above code configures the AWS provider to use the `us-east-1` region. The provider name is `aws`. The provider arguments are `region`. The arguments are used to configure the provider.

## Terraform Variables

Variables are like the chameleons of your code. They adapt to different environments, allowing you to define values outside your code and infuse them when you weave Terraform's magic. They're defined in the `variables.tf` file using the following syntax:

```hcl

variable "region" {
  type    = string
  default = "us-east-1"
}

```

The above code defines a variable named `region`. The variable type is `string`. The variable default value is `us-east-1`. The variable is used to configure the provider.

## Terraform Outputs

Outputs are like the return values of your configuration. They're useful for passing information to other parts of your infrastructure. They're defined in the `outputs.tf` file using the following syntax:

```hcl

output "region" {
  value = aws_instance.example.region
}

```

The above code defines an output named `region`. The output value is `aws_instance.example.region`. The output is used to display the region of the `aws_instance` resource.

## Terraform State

Terraform's state file is your spellbook, containing the current state of your infrastructure. It's essential for Terraform to decipher what's been conjured and what changes await in its mystical updates. The state file is named `terraform.tfstate`. It's created automatically when you run `terraform apply`. It's usually stored locally, but it can be stored remotely in a backend like Terraform Cloud.

## Terraform Modules

Modules are like spells in your Terraform spellbook. They encapsulate configurations, making them reusable across your mystical infrastructure. Modules can be your creations or borrowed from the Terraform Registry, a treasure trove of community-contributed wonders. They're defined in the `main.tf` file using the following syntax:

```hcl

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.21.0"
  name = "my-vpc"
  cidr = "" 
}

```

The above code creates an AWS VPC module. The module name is `vpc`. The module source is `terraform-aws-modules/vpc/aws`. The module version is `2.21.0`. The module arguments are `name` and `cidr`. The arguments are used to configure the module.

## Terraform Workspaces

Workspaces in Terraform are like parallel universes, each housing its own configuration and state. They're perfect for managing distinct environments like development, staging, and production, keeping your magic organized and separate. They're managed using the `terraform workspace` command. Here are the most common commands:

- `terraform workspace new` creates a new workspace.

- `terraform workspace list` lists all workspaces.

- `terraform workspace select` selects a workspace.

- `terraform workspace show` shows the current workspace.

- `terraform workspace delete` deletes a workspace.

## Terraform Backends

Remote backends, such as Amazon S3 or Terraform Cloud, are like secret vaults for your state files, enhancing security and collaboration by keeping your magical records safe beyond your local realm. They're defined in the `main.tf` file using the following syntax:

```hcl

terraform {
  backend "s3" {
    bucket = "my-bucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

```

The above code configures the S3 backend to use the `my-bucket` bucket in the `us-east-1` region. The backend name is `s3`. The backend arguments are `bucket`, `key`, and `region`. The arguments are used to configure the backend.

## Terraform Graph

Terraform's `graph` command creates a visual representation of the configuration or execution plan. It's useful for understanding complex configurations. It's used with the `terraform graph` command. Here are the most common commands:

- `terraform graph` creates a visual representation of the configuration or execution plan.

- `terraform graph | dot -Tsvg > graph.svg` creates a visual representation of the configuration or execution plan in SVG format.

## Terraform Plan

Before Terraform takes action, it offers a glimpse of the future with a plan. The `terraform plan` command foretells the changes Terraform will enact during the apply step. It's used with the `terraform plan` command. Here are the most common commands:

- `terraform plan` creates an execution plan.

- `terraform plan -out=plan.tf` creates an execution plan and saves it to a file.

- `terraform plan -destroy` creates a destruction plan.

- `terraform plan -destroy -out=plan.tf` creates a destruction plan and saves it to a file.

## Terraform Apply

Terraform's `apply` command brings your code to life. It creates, updates, or banishes resources according to your configuration's spells. It's used with the `terraform apply` command. Here are the most common commands:

- `terraform apply` executes the actions proposed in a Terraform plan.

- `terraform apply plan.tf` executes the actions proposed in a Terraform plan file.

- `terraform apply -auto-approve` executes the actions proposed in a Terraform plan without asking for confirmation.

- `terraform apply -target=aws_instance.example` executes the actions proposed in a Terraform plan, targeting a specific resource.

- `terraform apply -var="region=us-east-1"` executes the actions proposed in a Terraform plan, overriding a variable.

- `terraform apply -var-file="dev.tfvars"` executes the actions proposed in a Terraform plan, overriding variables with a file.

- `terraform apply -var="region=us-east-1" -var-file="dev.tfvars"` executes the actions proposed in a Terraform plan, overriding variables with a file and a command-line argument.

## Terraform Destroy

Terraform's `destroy` command destroys all resources created by Terraform. It's used with the `terraform destroy` command. Here are the most common commands:

- `terraform destroy` destroys all resources created by Terraform.

- `terraform destroy -auto-approve` destroys all resources created by Terraform without asking for confirmation.

- `terraform destroy -target=aws_instance.example` destroys a specific resource created by Terraform.

- `terraform destroy -var="region=us-east-1"` destroys all resources created by Terraform, overriding a variable.

- `terraform destroy -var-file="dev.tfvars"` destroys all resources created by Terraform, overriding variables with a file.

- `terraform destroy -var="region=us-east-1" -var-file="dev.tfvars"` destroys all resources created by Terraform, overriding variables with a file and a command-line argument.

## Terraform Validate

Terraform's `validate` command validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc. It's used with the `terraform validate` command. Here are the most common commands:

- `terraform validate` validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc.

- `terraform validate -json` validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc., and outputs the result in JSON format.

## Terraform Fmt

Terraform's `fmt` command formats the configuration files in a directory to the Terraform coding style. It's used with the `terraform fmt` command. Here are the most common commands:

- `terraform fmt` formats the configuration files in a directory to the Terraform coding style.

- `terraform fmt -recursive` formats the configuration files in a directory and its subdirectories to the Terraform coding style.

## Terraform Get

Terraform's `get` command downloads and installs modules needed for the configuration in a directory. It's used with the `terraform get` command. Here are the most common commands:

- `terraform get` downloads and installs modules needed for the configuration in a directory.

- `terraform get -update` downloads and installs modules needed for the configuration in a directory, including modules that are already downloaded.

## Terraform Show

Terraform's `show` command inspects the current state or a saved plan. It's used with the `terraform show` command. Here are the most common commands:

- `terraform show` inspects the current state or a saved plan.

- `terraform show -json` inspects the current state or a saved plan and outputs the result in JSON format.

## Terraform Taint

Terraform's `taint` method can be used to perform a manual taint of a resource. It's used with the `terraform taint` command. Here are the most common commands:

- `terraform taint` manually marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply.


## Terraform Untaint

Terraform's `untaint` method can be used to perform a manual untaint of a resource. It's used with the `terraform untaint` command. Here are the most common commands:

- `terraform untaint` manually unmarks a Terraform-managed resource as tainted.

## Terraform Output

Terraform's `output` command displays the outputs of a Terraform configuration. It's used with the `terraform output` command. Here are the most common commands:

- `terraform output` displays the outputs of a Terraform configuration.

- `terraform output -json` displays the outputs of a Terraform configuration in JSON format.
