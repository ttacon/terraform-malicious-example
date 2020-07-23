malicious-terraform-example
=====

This is an example of a terraform module that once imported and planned, will
do malicious things during the planning phase.

***PLEASE READ THE CODE BEFORE INSTALLING THIRD-PARTY TERRAFORM MODULES***

To be clear, this code is NOT provided to do anything malicious or to be used in
a malicious manner, rather it is to share a mechanism that needs to be protected
against when using third-party terraform modules.

# Trying it out
To try this module out, you can simple do the following:

```sh
cat <<EOF > main.tf
module demo {
    source = "git::ssh://git@github.com/ttacon/terraform-malicious-example.git?ref=v1.0.1"
}
EOF

terraform init
terraform plan
```

# How does this work?
[Terraform external data sources](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/data_source).

<more details to be added>