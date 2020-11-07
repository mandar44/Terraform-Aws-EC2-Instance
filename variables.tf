variable "aws_access_key"{
    type    =   string
}

variable "aws_secret_key"{
    type    =   string
}

variable "aws_region_id"{
    default =   "ap-south-1"
}

variable "aws_ami" {
    default = {
        ap-south-1 = "ami-0cda377a1b884a1bc"
    }
}