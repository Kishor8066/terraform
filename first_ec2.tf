terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" { 
  region     = "us-east-1" 
} 

resource "aws_instance" "myec2" { 
    ami = "ami-08a52ddb321b32a8c" 
    instance_type = "t2.micro" 
     
    tags = { 
      Name = "fileserver01.cisco.com" 
    } 
}


terraform init   : first command you need to run
terraform plan    : It will plan as per your tf file.
terraform apply
