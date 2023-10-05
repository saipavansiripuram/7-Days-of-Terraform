# Overview of steps

##  AWS Configuration

1. **Install AWS CLI (Command Line Interface)**:

Make sure you have the AWS CLI installed on your machine. You can download and install it from the [AWS CLI download page](https://aws.amazon.com/cli/).

2. **Create an AWS IAM User**:

To interact with AWS programmatically, you should create an IAM (Identity and Access Management) user with appropriate permissions. Here's how to create one:

a. Log in to the AWS Management Console with an account that has administrative privileges.

b. Navigate to the IAM service.

c. Click on "Users" in the left navigation pane and then click "Add user."

- Choose a username, select "Programmatic access" as the access type, and click "Next: Permissions."

- Attach policies to this user based on your requirements. At a minimum, you should attach the "AmazonEC2FullAccess" policy for basic EC2 operations. If you need access to other AWS services, attach the relevant policies accordingly.

- Review the user's configuration and create the user. Be sure to save the Access Key ID and Secret Access Key that are displayed after user creation; you'll need these for Terraform.

3. **Configure AWS CLI Credentials**:

Use the AWS CLI to configure your credentials. Open a terminal and run:

```
aws configure
```

It will prompt you to enter your AWS Access Key ID, Secret Access Key, default region, and default output format. Enter the credentials you obtained in the previous step.


## Terraform Configuration



Create a directory for your Terraform project and create a Terraform configuration file (usually named `main.tf`) in that directory. In this file, you define the AWS provider and resources you want to create. Here's a basic example:

```hcl
   provider "aws" {
     region = "us-east-1"  # Set your desired AWS region
   }

   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"  # Specify an appropriate  AMI ID
     subnet_id =  "subnet-0a721d82280328986 "
      key_name = "pemfile"
     instance_type = "t2.micro"
   }
```

## Initialize Terraform**

In your terminal, navigate to the directory containing your Terraform configuration files and run:

```
terraform init
```

This command initializes the Terraform working directory, downloading any necessary provider plugins.


## Check Terraform

Run the following command to check the Terraform configuration:

```
terraform plan
``` 
 
This Command will show you the resources that will be created by Terraform.

## Apply the Configuration

Run the following command to create the AWS resources defined in your Terraform configuration:

```
terraform apply
```

Terraform will display a plan of the changes it's going to make. Review the plan and type "yes" when prompted to apply it.

## Verify Resources

After Terraform completes the provisioning process, you can verify the resources created in the AWS Management Console or by using AWS CLI commands.

## Destroy Resources

If you want to remove/delete the resources created by Terraform, you can use the following command:

```
terraform destroy
```

Be cautious when using `terraform destroy` as it will delete the resources as specified in your Terraform configuration.