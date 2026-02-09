# aws-policy-set
This repository is to attach the policy set with the terraform workspace directly. It is loading the policies from https://registry.terraform.io/policies/aashish72it/aws-infra/


## Policies
- `s3_require_encryption.sentinel` – Require SSE-S3 or SSE-KMS on buckets.
- `s3_block_public_access.sentinel` – Enforce all four Public Access Block flags = true.
- `s3_require_versioning.sentinel` – Require bucket versioning Enabled.
- `ec2_instance_type_allowlist.sentinel` – Allow only selected instance types.
- `required_tags.sentinel` – Ensure core tags (Owner, Env) exist on key resources.

# Project structure
<pre>
aws-policy-set/
├── README.md
├── LICENSE
└── sentinel.hcl
</pre>
