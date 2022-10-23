#Assigning the child modules / Connecting the variables

module "network"{
    source = "./network"
    cidr=var.cidr
    public_1_CIDR=var.public_1_CIDR
    public_2_CIDR=var.public_2_CIDR
    private_1_CIDR=var.private_1_CIDR
    private_2_CIDR=var.private_2_CIDR
    allinboundroute=var.allinboundroute
    regionn=var.regionn
}