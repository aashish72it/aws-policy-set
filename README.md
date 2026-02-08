# aws-policy-set



## Policies
- `s3_require_encryption.sentinel` – Require SSE-S3 or SSE-KMS on buckets.
- `s3_block_public_access.sentinel` – Enforce all four Public Access Block flags = true.
- `s3_require_versioning.sentinel` – Require bucket versioning Enabled.
- `ec2_instance_type_allowlist.sentinel` – Allow only selected instance types.
- `required_tags.sentinel` – Ensure core tags (Owner, Env) exist on key resources.

# Project structure

<pre>
aws-policy-set/
├── policies/
│   ├── s3_require_encryption.sentinel
│   ├── s3_block_public_access.sentinel
│   ├── s3_require_versioning.sentinel
│   ├── ec2_instance_type_allowlist.sentinel
│   └── required_tags.sentinel
├── README.md
└── sentinel.hcl
</pre>
