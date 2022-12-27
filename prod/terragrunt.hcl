terraform {
    source = "../../../terragrunt/terraform-aws-vpc"
    #source = "git::git@github.com:akinahmet/terraform-aws-vpc.git"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "Production"
    region_name = "us-east-1"
    public_az = ["us-east-1a", "us-east-1b"]
    private_az = ["us-east-1a", "us-east-1b"]    
}