#!/bin/bash
set -e

cd "$(dirname "$0")/../terraform"

terraform fmt -recursive
terraform validate
terraform plan
terraform apply -auto-approve
