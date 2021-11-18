resource "aws_vpc" "Terraform-Main" {
  cidr_block = var.vpccidr
  tags = {
    Name = "Terraform Main"
  }
}
resource "aws_subnet" "Subnet-1" {
  cidr_block = var.subnetcidr[0]
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = "us-east-2a"
    tags = {
    Name = "Terraform Public Subnet 1"
  }
}
  resource "aws_subnet" "Subnet-2" {
  cidr_block = var.subnetcidr[1]
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = "us-east-2b"
    tags = {
    Name = "Terraform Public Subnet 2"
  }
  }
  resource "aws_instance" "Terraform-ec2" {
    ami = var.amiid
    instance_type = var.instancesize
    subnet_id = aws_subnet.Subnet-1.id
    count = var.instancecount
    associate_public_ip_address = var.enable_public_ip
    availability_zone = "us-east-2a"
    tags = {
      Name = var.instancename[count.index]
  }
  }
  
 
