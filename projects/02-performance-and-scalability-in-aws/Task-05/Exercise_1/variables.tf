variable "region" {
    description = "AWS region to use for provisioning"
    default = "eu-west-1"
}

variable "shared_credentials_file" {
  description = "Credentials for authentication"
  //default = "C:\Users\nithi\.aws\credentials"
}
variable "vpc_id" {
   description = "VPC for resource to be created"
   default = "vpc-0e8ab0bc35707f979"
}