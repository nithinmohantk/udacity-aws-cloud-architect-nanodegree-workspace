variable "region" {
    description = "The AWS region to use"
    default = "eu-west-1"
}

variable "runtime" {
  default = "python3.8"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}


variable "shared_credentials_file" {
  description = "Credentials for authentication"
  //default = "C:\Users\nithi\.aws\credentials"
}
variable "vpc_id" {
   description = "VPC for resource to be created"
   default = "vpc-0e8ab0bc35707f979"
}