# All variables

variable "cidr" {                   #VPC CIDR
    type = string
}

variable "public_1_CIDR" {          #First public subnet CIDR
    type = string
}

variable "public_2_CIDR" {          #Second public subnet CIDR
    type = string
}

variable "private_1_CIDR" {         #First private subnet CIDR
    type = string
}

variable "private_2_CIDR" {         #Second private subent CIDR
    type = string
}

variable "allinboundroute"{         #Default inbound routing
    type = string
}

variable regionn {          
    type = string
}

variable AMImage {                  #Amazon Machine Image
    type = string
}