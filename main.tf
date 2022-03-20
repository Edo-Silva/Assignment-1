provider "aws"{
    access_key = "AKIA4AVVGRCH4T7POCNN" 
    secret_key = "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" 
    region     = var.region
}

resource "aws_instance" "Assigment-1" {
  count         = var.instances_number
  ami           = var.ami[var.region]
  instance_type = var.My_instance_type
  key_name = "Asgnt"
  tags = {
    Name = "Terraform_Assigment1"
  }
}