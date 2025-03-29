provider "aws" {
  region = "ap-south-1"
}


variable "instance_names" {
  type    = list(string)
  default = ["Web-Server-1", "App-Server-2", "DB-Server-3"]
}

resource "aws_instance" "web" {
  count         = length(var.instance_names)
  ami          = "ami-01bd9d8f06d29d6a0"  
  instance_type = "t2.micro"
  key_name      = "swasthik-terraform"  

  tags = {
    Name = var.instance_names[count.index]  
  }
}
