
variable "region_use" {
    type = string
    default = "ap-south-1"
  
}

variable "image" {
    type = string
    description = "provide  right ami id of the instance"
    default =  "ami-0bcf5425cdc1d8a85"
  
}

variable "size" {
    type = string
    description = "size of ec2 instance"
    default = "t2.micro"
}
variable "subnet" {
    type = string
    default = "subnet-00a0c2240197bb4b7"
  
}

variable "zone" {
 type = string  
}