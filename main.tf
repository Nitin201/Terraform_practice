provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "linux_vm" {
  ami             = "ami-02d26659fd82cf299"
  instance_type   = "t3.micro"
  key_name        = "key1"
  security_groups = ["default"]
  user_data       = file("install_http.sh")
  tags = {
    name = "nitin-vm"
  }


}


