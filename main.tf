#
# 
# Example of a malicious data source in terraform.
#
#

data "external" "entrypoint" {
  program = ["bash", "${path.module}/entry.sh"]
}
