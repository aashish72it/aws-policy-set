# Modules from Terraform Registry
module "common" {
  source = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy-module/common.sentinel"
}

module "s3_utils" {
  source = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy-module/s3_utils.sentinel"
}

module "ec2_utils" {
  source = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy-module/ec2_utils.sentinel"
}

# Policies from Terraform Registry
policy "s3_require_encryption" {
  source            = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy/s3_require_encryption.sentinel"
  enforcement_level = "hard-mandatory"

  params = {
    allowed_sse_algorithms = ["aws:kms", "AES256"]
    require_kms            = true
  }
}

policy "s3_block_public_access" {
  source            = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy/s3_block_public_access.sentinel"
  enforcement_level = "hard-mandatory"

  params = {
    require_all_flags = true
  }
}

policy "s3_require_versioning" {
  source            = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy/s3_require_versioning.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "ec2_instance_type_allowlist" {
  source            = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy/ec2_instance_type_allowlist.sentinel"
  enforcement_level = "advisory"

  params = {
    allowed_instance_types = ["t3.micro", "t3a.micro", "t3.small", "t3a.small"]
  }
}

policy "required_tags" {
  source            = "https://registry.terraform.io/v2/policies/aashish72it/aws-infra/0.2.3/policy/required_tags.sentinel"
  enforcement_level = "hard-mandatory"

  params = {
    required_tag_keys = ["Environment", "Owner", "CostCenter"]
    allowed_tag_values = {
      Environment = ["dev", "test", "stage", "prod"]
    }
  }
}
