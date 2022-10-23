# Variable values for the "dev" workspace
# In order to apply with those values, run --> $ terraform apply --var-file dev.tfvars
# Use this in the correct desired workspace

cidr="10.0.0.0/16"
public_1_CIDR="10.0.0.0/24"
public_2_CIDR="10.0.1.0/24"
private_1_CIDR="10.0.2.0/24"
private_2_CIDR="10.0.3.0/24"
allinboundroute="0.0.0.0/0"
regionn="eu-central-1"
AMImage="ami-070b208e993b59cea"