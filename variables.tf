variable "vpccidr" {
    description = "this is used for assigning vpc cidr block"
    type = string
    default =  "10.1.0.0/16" 
}
variable "subnetcidr" {
    description = "this is used for assigning subnet cidr block"
    type = list (string)
    default =  ["10.2.0.0/24", "10.2.1.0/24","10.2.2.0/24"] 
}
variable "instancesize" {
    description = "this is used for assigning instance size"
    type = string
    default =  "t2.micro" 
}
variable "instancecount" {
    description = "This is used for Instance number"
    type = number
    default ="2"
}
variable "instancename" {
    description = "This is used for Instance Name"
    type = list (string)
    default = ["Terraform-ec2", "Terraform-ec2-1", "Terraform ec2-3"]
}
variable "amiid" {
    description = "this is ami id"
    type = string
    default = "ami-074cce78125f09d61"
}
variable "enable_public_ip" {
    description = "this is used to enable public ip"
    type =  bool
    default = true
}
