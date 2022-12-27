terraform {
    source = "../../../terragrunt/terraform-aws-vpc"
    #source = "git::git@github.com:akinahmet/terraform-aws-vpc.git"
}
include "root" {
    path = find_in_parent_folders()
}

inputs = {
    region_name = "ap-south-1"
    public_az = ["ap-south-1a", "ap-south-1b"]
    private_az = ["ap-south-1a", "ap-south-1b"]
}


