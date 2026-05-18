#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../terraform"

terraform fmt -recursive
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan

terraform output
