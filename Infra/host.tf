resource "aws_instance" "labvm" {
  provider = aws
  ami = "ami-0257e70b7c6db1498"
  instance_type = "t3.micro"

   network_interface {
     device_index         = 0
     network_interface_id = aws_network_interface.lab-nic.id
   }


}

resource "aws_vpc" "test-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "lab"
  }
}

resource "aws_subnet" "subnet-test1" {
  vpc_id            = aws_vpc.test-vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-south-1a"

  tags = {
    Name = "lab"
  }
}


 resource "aws_network_interface" "lab-nic" {
   subnet_id       = aws_subnet.subnet-test1.id
   private_ips     = ["10.0.0.30"]

 }