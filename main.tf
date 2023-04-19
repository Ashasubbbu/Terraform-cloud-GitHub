terraform {
    required_version = "~> 1.4.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "asha-infra" {
	ami = "06e46074ae430fba6" 
	instance_type = "t2.micro"
}
