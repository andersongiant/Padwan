provider "aws" {
  
  shared_config_files      = ["C:/Users/cin_apinheiro/.aws/config"]
  shared_credentials_files = ["C:/Users/cin_apinheiro/.aws/credentials"]
  profile                  = "black"
  region = "us-east-1" 
  
}

terraform {
  required_version = ">= 0.12"
}


 