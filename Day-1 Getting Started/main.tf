provider "aws"{
    region = "us-east-1" #Set any region
}

resource "aws_instance" "this" {
  ami                     = "ami-053b0d53c279acc90" #add your ami id 
  instance_type           = "t2.micro"
  subnet_id =  "subnet-0a721d82280328986 "
  key_name = "pemfile"
  #host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost"
  #tenancy                 = "host"
}