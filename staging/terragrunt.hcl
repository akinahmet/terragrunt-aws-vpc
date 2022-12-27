terraform {
    source = "../../../terragrunt/terraform-aws-vpc"
    #source = "git::git@github.com:akinahmet/terraform-aws-vpc.git"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "Staging"
    region_name = "us-east-2"
    public_az = ["us-east-2a", "us-east-2b"]
    private_az = ["us-east-2a", "us-east-2b"]
}